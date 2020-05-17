# frozen_string_literal: true

require 'csv'
require 'pry'
require 'artii'
require 'colorize'

cards = []

def manaCost
  puts 'How much does your card cost in mana'

  cost = gets.chomp

  if cost.to_i.to_s == cost

    puts "Your card costs #{cost}"

    cost

  else

    puts 'That is not a number'

    manaCost

  end
end

def subtext(type)
  puts 'Is your card a Spell or a Creature'

  type = gets.chomp.capitalize

  if (type == 'Spell') || (type == 'Creature')

    puts "You have chosen a #{type} card"

    type

  else

    puts "I don't understand"

    subtext(type)

  end
end

def getAColor
  puts 'Is your card Blue, Red, White, Black or Green?'

  colours = ['Red', 'Blue', 'Green', 'White', 'Black']

  colour = gets.chomp.capitalize

  if colours.include?(colour)

    puts "Your card is #{colour}"

    colour

  else

    puts 'I do not understand'

    getAColor

  end
end

def subtype(type)
  subtypes = %w[Damage Counter Mend Doublestrike Lifegain Speed]

  if type == 'Spell'

    puts "What attribute would you like your spell to have?\nDamage\nCounter\nMend"

    subtype_spell = gets.chomp.capitalize

    if subtypes.include?(subtype_spell)

      spell_ability(subtype_spell)

      subtype_spell

    else

      puts 'I do not understand'

      subtype(type)

    end

  elsif type == 'Creature'

    puts "What ability would you like your creature to have?\nDoublestrike\nLifegain\nSpeed "

    subtype_creature = gets.chomp.capitalize

    if subtypes.include?(subtype_creature)

      creature_ability(subtype_creature)

      subtype_creature

    else

      puts 'I do not understand'

      subtype(type)
      end
    end
  end

def spell_ability(subtype)
  puts 'You like power' if subtype == 'Damage'

  puts 'You like to protect' if subtype == 'Counter'

  puts 'You like to heal' if subtype == 'Mend'
end

def creature_ability(subtype)
  puts 'You covert strength' if subtype == 'Doublestrike'

  puts 'you favour survivability' if subtype == 'Lifegain'

  puts 'those that strike first, win' if subtype == 'Speed'
end

def creatureName
  puts 'What is the name of your creation'

  name = gets.chomp
end

def flavourText
  puts 'Would you like to include a description?'

  flavour = gets.chomp
end

def csvSave(cost:, name:, colour:, type:, ability:, flavour:)
  CSV.open('Card_list.csv', 'a+', headers: true) do |csv|
    csv << [cost, name, colour, type, ability, flavour]
  end
end

def buildACard
  `clear`

  cost = manaCost

  type = subtext(type)

  colour = getAColor

  ability = subtype(type)

  name = creatureName

  flavour = flavourText

  puts "\nCongrats! #{name} is born."

  { cost: cost, name: name, colour: colour, type: type, ability: ability, flavour: flavour }
end

def showHeader
  puts `artii 'Mana Clash'`.colorize(color: :blue)

  puts `artii 'You are'`.colorize(color: :red)

  puts `artii 'the creator'`.colorize(color: :green)
end

showHeader

loop do
  puts "\nWelcome to Manaclash card creator and editor! What would you like to do:"
  puts '1. Create a new card'
  puts '2. Display card list'
  puts '3. Exit'
  print "\nEnter Option Number:"

  input = gets.chomp

  if input == '1'

    card = buildACard

    puts card
    csvSave(card)

    cards << card

  elsif input == '2'

    puts `clear`
    puts CSV.read('Card_list.csv', headers: true)
    print "\npress any key to continue\n"
    gets

  elsif input == '3'

    break

  else

    puts "I don't understand"

  end
end
