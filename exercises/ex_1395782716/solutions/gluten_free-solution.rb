# create a Person class. A person will have a stomach and allergies
# Create a method that allows the person to eat and add arrays of food to their stomachs
# If a food array contains a known allergy reject the food.

class Person
  attr_accessor :stomach, :allergies

  def initialize(allergies = [])
    @stomach = []
    @allergies = allergies
  end

  def allergic_to?(food)
    (food & @allergies).any?
  end

  def eat(food)
      
      if allergic_to? food

        #Bonus:
        if @stomach.is_a?(Array)
          while !@stomach.empty?
            food_barfed = @stomach.pop
            puts "there goes the #{food_barfed}"
            puts "                         | "
            puts "                          \\ "
            puts "                           `* "
          end
        end

        raise AllergyError, "Barf: BLLUUUUUGGH"
      else
        @stomach.push food
        puts "Yum Yum Yum... That was good #{food}"
        puts "My stomach has #{@stomach}"
      end

    rescue Exception => e
      puts e

  end

  class AllergyError < StandardError; end

end



chris = Person.new
chris.allergies << "gluten"

beth = Person.new
beth.allergies << "scallops"

phil = Person.new(["ham", "pineapple"])

# Create a Person named Chris. Chris is allergic to gluten.
# Create a Person named Beth. Beth is allergic to scallops.
# Feed them the following foods

pizza = ["cheese", "gluten", "tomatoes"]
pan_seared_scallops = ["scallops", "lemons", "pasta", "olive oil"]
water = ["h", "h", "o"]
hawaiian_pizza = ["cheese", "tomatoes", "pineapple", "gluten", "ham"]


chris.eat(pan_seared_scallops)
chris.eat(pizza)
chris.eat(water)
chris.eat(hawaiian_pizza)

beth.eat(pizza)
beth.eat(pan_seared_scallops)
beth.eat(water)
beth.eat(hawaiian_pizza)

phil.eat(pizza)
phil.eat(pan_seared_scallops)
phil.eat(water)
phil.eat(hawaiian_pizza)
