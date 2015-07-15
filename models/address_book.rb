require_relative '../models/entry.rb'

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
    add_entry('Ava Lovelace 1', '010.012.1815', 'augusta.king@lovelace.com')
    add_entry('Ava Lovelace 2', '010.012.1815', 'augusta.king@lovelace.com')
    add_entry('Ava Lovelace 3', '010.012.1815', 'augusta.king@lovelace.com')
  end

  def add_entry(name, phone, email)
    index = 0
    @entries.each do |entry|
      break if name < entry.name
      index += 1
    end
    @entries.insert(index, Entry.new(name, phone, email))
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
