class Rolodex
  attr_reader :contacts

  def initialize
    @contacts = []
    @id = 1000
  end

  def add_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1
  end

  def modify_particular_contact(id_number)
    contact_to_modify = find_contact(id_number)
    
    puts "Please enter first name:"
    new_first_name = gets.chomp
    contact = @contacts.find(id_number).first
    contact.first_name = new_first_name 

    puts "Please enter last name:"
    new_last_name = gets.chomp
    contact = @contacts.find(id_number).first
    contact.last_name = new_last_name

    puts "Please enter email: "
    new_email = gets.chomp
    contact = @contacts.find(id_number).first
    contact.email = new_email

    puts "Please enter note: "
    new_note = gets.chomp
    contact = @contacts.find(id_number).first
    contact.note = new_note
  end

  def display_all
    @contacts.each do |x|
      "Name: #{x.first_name} #{x.last_name},Email: #{x.email}, Note: #{x.note}"
    end
  end

  def display_contact(id_input)
    @contacts.each do |contact| 
      if contact.id == id_input
        "Name: #{contact.first_name} #{contact.last_name},Email: #{contact.email}, Note: #{contact.note}"
      else 
        "does not exist"
      end
    end
  end

  def display_attribute(attribute_input)
    @contacts.each do |contact|
      if attribute_input.include? "first"
        contact.first_name
      elsif attribute_input.include? "last"
        contact.last_name
      elsif attribute_input.include? "email"
        contact.email
      elsif attribute_input.include? "note"
        contact.note
      else
        return
      end
    end
  end

  def find(contact_id)
    @contacts.find {|contact| contact.id == contact_id }
  end

  def remove_contact(contact)
    @contacts.delete(contact)
  end

end
