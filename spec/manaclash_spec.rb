
class ManaCostTest

 def manaCost
    puts 'How much does your card cost in mana'
  
    cost = gets.chomp

    binding.pry
  
     if cost.to_i.to_s == cost
  
      puts "Your card costs #{cost}"
  
      cost
  
     else
  
       puts 'That is not a number'
  
       manaCost
    end
  end
end
  


describe ManaCostTest do
  it "Takes in two strings and accepts a valid input" do 
    test = ManaCostTest.new  
    test.manaCost.stub(:gets).and_return("5\n")
    expect(test).to eq("1")
  end      
end