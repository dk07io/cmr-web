class Rolodex
  attr_reader :contacts
  # @@ids = 1001

  def initialize
    @contacts = []
    @ids = 1000
  end
  def add_contact(contact)
    contact.id = @@ids
    @contacts << contact
    @@ids += 1
    contact
  end
end 