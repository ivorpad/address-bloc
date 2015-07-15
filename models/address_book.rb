require_relative '../models/entry.rb'

class AddressBook
	attr_accessor :entries

	def initialize
		@entries = []
	end

	def add_entry(name, phone, email)
		index = 0
		@entries.each do |entry|
			if name < entry.name
				break
			end
			index += 1
		end
		@entries.insert(index, Entry.new(name, phone, email))
	end

	def remove_entry(entry_to_remove)
	
		new_arr = []
		
		@entries.each do |entry|
			new_arr << entry.name
			
			if new_arr.include?(entry_to_remove)
					i = new_arr.index(entry_to_remove)
					@entries.delete_at(i)
			else
				new_arr
			end	
		end	
	end
end

