require 'csv'
require 'pry'

require 'artii'
require 'colorize'
require "tty-prompt"


cards = []


def subtext(type)
    if type == "spell"
        puts "simply spellbinding..."
        puts `clear` 
    elsif type == "creature"
        puts "Ah.. into the creature comforts I see"
        puts `clear`
    else
        puts "I don't understand"
    end
end

def getAColor
    puts "Is your card blue, red, white, black or green?"
    colours = ['red', 'blue', 'green', 'white', 'black']
    colour = gets.chomp.downcase

    if colours.include?(colour)
        puts "Your card is #{colour}"
        puts `clear`
        return colour
    else
        puts "I do not understand"
        getAColor
    end

end

def subtype(type)
    if type == "spell"
         puts "What attribute would you like your spell to have? \n Deal damage \n Counter a spell \n Mend damage" 
        subtype_spell = gets.chomp  
        spell_ability(subtype_spell)
        return subtype_spell
    elsif type == "creature"
        puts "What ability would you like your creature to have? \n Double Strike \n Lifegain \n Speed "
        subtype_creature = gets.chomp
        creature_ability(subtype_creature)
        return subtype_creature
    end     
end

def spell_ability(subtype)
    if subtype == "Deal damage"
        puts "You like power"
    end

    if subtype == "Counter a spell"
        puts "You like to protect"
    end

    if subtype == "Mend damage"

        puts "You like to heal"
    end
end

def creature_ability(subtype)
    if subtype == "Double strike"
        puts "You covert strength"
    end

    if subtype == "Lifegain"
        puts "you favour survivability"
    end

    if subtype == "Speed"
        puts "those that strike first, win"
    end
end

def buildACard
    puts `clear`
    puts "How much does your card cost in mana"
    cost = gets.chomp

    if cost.to_i.to_s != cost
        puts "That is not a number"
        buildACard    
    end
    
    
    


    puts `clear`
    puts "Is your card a spell or a creature"  
    type = gets.chomp
    # If type is x, use subtext method
    subtext(type)
    colour = getAColor

    puts "What is the name of your creation" 
    name = gets.chomp 
    puts `clear`

    ability = subtype(type)
    puts `clear`
    puts "Would you like to include a description?" 
    flavour = gets.chomp 
    puts `clear`
    puts "Congrats! #{name} is born."

    CSV.open("card_list.csv", "a+", {headers: true}) do |csv|
        csv << [cost, name, colour, type, ability , flavour]
    end
    return {cost: cost, name: name, colour: colour, type: type, ability: ability, flavour: flavour}
end

    

    #edit(cost, type, colour, name, flavour)



def showHeader
    puts `artii 'Mana Clash'`.colorize(:color => :blue)      
    puts `artii 'You are'`.colorize(:color => :red)  
    puts `artii 'the creator'`.colorize(:color => :green)
end




# Above this line is all my methods
# This is where you now call your methods
showHeader

loop do

            puts "Welcome to Manaclash card creator and editor! What would you like to do:"

        

            puts "1. Create a new card"

        

            puts "2. Edit a card"

        

            puts "3. Remove a card"

        

            puts "4. Exit"

        

            print "Enter Option Number: "



        input = gets.chomp



        if input == "1"

             card = buildACard
             puts card
             cards << card
        
        elsif input == "2"

            prompt = TTY::Prompt.new

            puts `clear`
            puts   "What card would you like to edit? \n
                                                        "
            puts    CSV.read("Card_list.csv", headers: true)
            name = gets.chomp 


        elsif input == "3"



            puts "This WILL remove your cards"

        elsif input ==  "4"

            break

        else 

          puts "anything"


        end

    
end















   


