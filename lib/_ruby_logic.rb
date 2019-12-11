require ('pry')


  # ones = { 1 => 'One', 2 => 'Two', 3 => 'Three', 4 => 'Four', 5 => 'Five', 6 => 'Six', 7 => 'Seven', 8 => 'Eight', 9 => 'Nine' }
  # teens = { 10 => 'Ten', 11 => 'Eleven', 12 => 'Twelve', 13 => 'Thirteen', 14 => 'Fourteen', 15 => 'Fifteen', 16 => 'Sixteen', 17 => "Seventeen", 18 => 'Eighteen', 19 => 'Nineteen'}
  # tens = { 20 => 'Twenty', 30 => 'Thirty', 40 => 'Fourty', 50 => 'Fifty', 60 => 'Sixty', 70 => 'Seventy', 80 => 'Eighty', 90 => 'Ninety'}
  # hundreds = { 200 => '2hundred', 300 => '3hundred', 400 => '4hundred', 500 => '5hundred', 600 => '6hundred', 700 => '7hundred', 800 => '8hundred', 900 => '9hundred'}
  def numbers(input)
    nums = {0 => 'zero', 1 => 'One', 2 => 'Two', 3 => 'Three', 4 => 'Four', 5 => 'Five', 6 => 'Six', 7 => 'Seven', 8 => 'Eight', 9 => 'Nine'}

    teens = { 10 => 'Ten', 11 => 'Eleven', 12 => 'Twelve', 13 => 'Thirteen', 14 => 'Fourteen', 15 => 'Fifteen', 16 => 'Sixteen', 17 => "Seventeen", 18 => 'Eighteen', 19 => 'Nineteen'}

    tens = { 20 => 'Twenty', 30 => 'Thirty', 40 => 'Fourty', 50 => 'Fifty', 60 => 'Sixty', 70 => 'Seventy', 80 => 'Eighty', 90 => 'Ninety'}

    hundreds = { 1 => 'One Hundred', 2 => 'Two Hundred', 3 => 'Three Hundred', 4 => 'Four Hundred', 5 => 'Five Hundred', 6 => 'Six Hundred', 7 => 'Seven Hundred', 8 => 'Eight Hundred', 9 => 'Nine Hundred'}
    tens = { 2 => 'Twenty', 3 => 'Thirty', 4 => 'Fourty', 5 => 'Fifty', 6 => 'Sixty', 7 => 'Seventy', 8 => 'Eighty', 9 => 'Ninety'}
    thousands = { 1 => 'One Thousand', 2 => 'Two Thousand', 3 => 'Three Thousand', 4 => 'Four Thousand', 5 => 'Five Thousand', 6 => 'Six Thousand', 7 => 'Seven Thousand', 8 => 'Eight Thousand', 9 => 'Nine Thousand'}



  str_input = input.to_s
  r_str_input = str_input.reverse
  if (teens.invert.values).include?(input)
    return teens[input]
  elsif (str_input).length == 1
    puts "ones"
    return nums[input]
  elsif (r_str_input[1] == '1' && str_input.length > 2)
    output_three = hundreds[str_input[0].to_i], teens[(r_str_input[1] + r_str_input[0]).to_i]
    # return teens[r_str_input.to_i]
    return output_three.join(' ')
    puts "hundreds w teens"
  elsif (str_input).length == 2 && input > 20

    output_one = tens[str_input[0].to_i] + " " + nums[str_input[1].to_i]
    puts "tens"
    return output_one
  elsif (str_input).length == 3
    output = hundreds[str_input[0].to_i], tens[str_input[1].to_i], nums[str_input[2].to_i]
    puts "hundreds"
    return output.join(' ')
  elsif (str_input).length == 4
    output_two = thousands[str_input[0].to_i],hundreds[str_input[1].to_i], tens[str_input[2].to_i], nums[str_input[3].to_i]
    puts "thousands"
    return output_two.join(' ')

  end
end





# Write a method that translates numbers in numeric form into written words. For example, it would translate 384 into "three hundred eighty four". Use multiple hashes and the .fetch() method to solve this.
#
# Start small, and then get your code working for numbers up to 1 trillion.
