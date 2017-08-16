require "pry"

card_number = " 5541801923795240"

#valid = false
def credit_check(card_number)
  card_number 
  results = 0  
  card_number.split("").reverse.each_with_index do |numbers, i| 
    if i.even? 
      results += numbers.to_i
    elsif numbers.to_i * 2 > 9 
      double = numbers.to_i * 2
      results += double.digits.reduce(:+)
    else
      results += numbers.to_i * 2
    end
  end

  if results % 10 == 0 
    puts "The number is valid!"
  else
    puts "The number is invalid!"
  end
end

credit_check(card_number)
