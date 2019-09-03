require 'pry'

class Manaclash
        def initialize
 
            loop do 
                puts "Is your card a spell or a creature"  
                puts `clear` 
                @type = gets.chomp
                if @type == "spell"
                    puts "simply spellbinding..."
                    puts `clear` 
                    break
                elsif @type == "creature"
                    puts "Ah.. into the creature comforts I see"
                    puts `clear`
                    break 
                else
                    puts "I don't understand"
                end
            end 
            
           

            loop do
                puts "Is your card blue, red, white, black or green?"
                @colour = gets.chomp
                if @colour == "blue"
                    puts "Your card is blue"
                    puts `clear`
                    break
                elsif @colour == "red"
                    puts "Your card is red"
                    puts `clear`
                    break    
                elsif @colour == "white"
                    puts "Your card is white"
                    puts `clear`
                    break
                elsif @colour == "black"
                    puts "Your card is black"
                    puts `clear`
                    break
                elsif @colour == "green"
                    puts  "Your card is green"
                    puts `clear`
                    break
                else
                    puts "I don't understand"
                    

                end
            end
           
             
            puts "What is the name of your creation" 
            @name = gets.chomp 
            puts `clear`

            loop do
                puts "How much does your card cost in mana"
                @cost = gets.to_i 
        else
                Integer(nil) 
            puts "That's not a number"
        
        end
          
            loop do 
                 if @type == "spell"
                    puts "What attribute would you like your spell to have?
                     Deal damage
                     Counter a spell
                     Mend damage" 
                     break

                 elsif @type == "creature"
                    puts "What ability would you like your creature to have?
                    Double Strike
                    Lifegain 
                    Speed "
                    break
                 
                end
            end            
            #     @keyword = gets.chomp  
            #             "Deal damage"
            #         "You want to strike out!" 
            #         break
            #     elsif "Counter a spell"
            #         #puts `clear`
            #         "You want to protect"
            #         break
            #     elsif "Mend damage"
            #         #puts `clear`
            #         "You want to heal"
            #         break
               
            #     else
            #         puts "I don't understand"
            #     end
            # end    
           
           
            #binding.pry




        # puts "what would you like to name your #{type}?"
        #         name = gets.chomp
             
        #     end    
        
        # puts "How many points does your #{type} cost?"
        #         cost = gets.to_i.chomp
                
        #     end

        # if type = creature 
        #     puts "how powerful is your creature on a scale of 1-10"
        #         stats = gets.to_i.chomp
        # elsif type = spell 
        #         ""
        

        # puts "What is the story behind your card?"
        #       flavour_text = gets.chomp 
              
        # puts "Well done! You have created a powerful #{type} indeed"
    end 
end 

cards = []

Manaclash.new

