class Person

  attr_reader :first_name, :last_name, :email_address
  def initialize
    @first_name = Faker::Name.first_name
    @last_name = Faker::Name.last_name
    @email_address = Faker::Internet.email(name=(@first_name + "." + @last_name))
  end

end