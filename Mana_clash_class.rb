require 'pry'

require 'artii'


puts `artii 'Mana Clash'`      

puts `artii '      You are'`  

puts `artii 'the creator'`  


def home_screen()

    puts "Welcome to Manaclash! What would you like to do:"

    puts "1. Create a new card"

    puts "2. Edit a card"

    puts "3. Remove a card"

    puts "4. Exit"

    print "Enter Option Number: "

end






# class Manaclash
#     def initialize
#     end

#     def menu
            
#         puts "How much does your card cost in mana"
#         @cost = gets.chomp.to_i 
        
        
    

#         loop do 
#             puts "Is your card a spell or a creature"  
#             # puts `clear` 
#             @type = gets.chomp
#             if @type == "spell"
#                 puts "simply spellbinding..."
#                 puts `clear` 
#                 break
#             elsif @type == "creature"
#                 puts "Ah.. into the creature comforts I see"
#                 puts `clear`
#                 break 
#             else
#                 puts "I don't understand"
#             end
#         end   

#         loop do
#             puts "Is your card blue, red, white, black or green?"
#             @colour = gets.chomp
#             if @colour == "blue"
#                 puts "Your card is blue"
#                 puts `clear`
#                 break
#             elsif @colour == "red"
#                 puts "Your card is red"
#                 puts `clear`
#                 break    
#             elsif @colour == "white"
#                 puts "Your card is white"
#                 puts `clear`
#                 break
#             elsif @colour == "black"
#                 puts "Your card is black"
#                 puts `clear`
#                 break
#             elsif @colour == "green"
#                 puts  "Your card is green"
#                 puts `clear`
#                 break
#             else
#                 puts "I don't understand"
#             end
#         end
        
    
#         puts "What is the name of your creation" 
#         @name = gets.chomp 
#         puts `clear`
    
#     loop do 
#         if @type == "spell"
#         puts "What attribute would you like your spell to have?
#             Deal damage
#             Counter a spell
#             Mend damage" 

#             @subtype = gets.chomp  
        
#             if @subtype == "Deal damage"
#                 puts "You like power"
#                 break
#             end

#             if @subtype == "Counter a spell"
#                 puts "You like to protect"
#                 break
#             end

#             if @subtype == "Mend damage"
#                 puts "You like to heal"
#                 break
#             end


#         elsif @type == "creature"
#             puts "What ability would you like your creature to have?
#             Double Strike
#             Lifegain 
#             Speed "

#             @subtype = gets.chomp  
            
#             if @subtype == "Double strike"
#                 puts "You covert strength"
#                 break
#             end

#             if @subtype == "Lifegain"
#                 puts "you favour survivability"
#                 break
#             end

#             if @subtype == "Speed"
#                 puts "those that strike first, win"
#                 break
#             end
            
#         end
#     end        
    
 
#     puts "would you like to write some flavour" 
#     @flavour = gets.chomp 
#     puts `clear`


#     puts "Congrats! #{@name} is born." 
    
#     #puts "it costs #{@cost} is coloured #{@colour} is a #{@type} with the ability #{@subtype} "
#     end
# end
    
   
# cards = []
# mc = Manaclash.new
# mc.menu

# # class 

# #     def initialize(name,id,bla)
# #         @name = name
# #         @id = id
# #         @bla = bla
# #     end


# #end