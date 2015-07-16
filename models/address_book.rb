require_relative '../models/entry.rb'
require "csv"

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end

  def add_entry(name, phone, email)
    index = 0
    @entries.each do |entry|
      break if name < entry.name
      index += 1
    end
    @entries.insert(index, Entry.new(name, phone, email))
  end

  def import_from_csv
    # do stuff
  end

  def remove_entry(name)
      @entries.delete_if {|entry| entry.name == name}
  end



  def retrieve_entry_number(number) 

    selected = nil

    @entries.each_with_index do |entry, index|
      if index + 1 == number.to_i
        selected = entry
      end

    end     
    selected
  end

end
