require_relative 'entry.rb'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def remove_entry(name, phone_number, email)
    @entries.delete_if {|x| x.name == name && x.phone_number == phone_number &&  x.email == email }
  end

  def add_entry(name, phone_number, email)
   # #9
   index = 0
   entries.each do |entry|
    # #10
    if name < entry.name
      break
    end
    index += 1
  end
  # #11
  entries.insert(index, Entry.new(name, phone_number, email))
 end
end