require 'csv'

class Child < ActiveRecord::Base
	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Child.create! row.to_hash
		end
	end
end
