# Modify the CSV application to support an each method to return
# a CsvRow object. Use method_missing on that CsvRow to return the
# value for the column for a giving heading.
module ActAsCsv

	def self.included(base)
		base.extend ClassMethods
	end

	module ClassMethods
		def act_as_csv
			include InstanceMethods
		end
	end

	module InstanceMethods

		attr_accessor :headers, :csv_contents

		def read
			@csv_contents = []
			filename = self.class.to_s.downcase + '.txt'
			file = File.new(filename)
			@headers = file.gets.chomp.split(', ')

			file.each do |row|
				row_content = row.chomp.split(', ')
				@csv_contents << CsvRow.new(@headers, row_content)
			end
		end

		def initialize
			read
		end

		def each &block
			@csv_contents.each &block
		end
	end

	class CsvRow
		attr_accessor :column, :column_content

		def initialize header, content
			@column = header
			@column_content = content
		end

		def method_missing name, *args
			index = @column.index(name.to_s)
			return @column_content[index]
		end
	end
end

class RubyCsv
	include ActAsCsv
	act_as_csv
end

# Tests the Program
# m = RubyCsv.new
# puts m.headers.inspect
# puts m.csv_contents.inspect

# Tests the each method.
csv = RubyCsv.new
csv.each {|row| puts row.one }
csv.each {|row| puts row.three}
