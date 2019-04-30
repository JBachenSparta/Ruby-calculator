def advanced_cal

  puts "Please enter your first number"
  a_input1 = gets.chomp
  a_input1_float = (eval a_input1).to_f
  a_input1_string = (a_input1_float).to_s

  puts "Please enter your operator, (**) to raise by a power, or (s) for square root "
  a_input_operator = gets.chomp

  if a_input_operator == "**"

    puts "To what power would you like to raise #{a_input1}"
    a_input2 = gets.chomp

    puts (eval a_input1_string + a_input_operator + a_input2)

  elsif a_input_operator == "s"
    puts "the square root of #{a_input1} is:"
    puts Math.sqrt(a_input1_float)

  else
    puts "incorrect operator, please begin again"
    advanced_cal
  end

end

def basic_cal

  puts "Please enter your first number"
  b_input1 = gets.chomp
  b_input1_float = (eval b_input1).to_f
  b_input1_string = (b_input1_float).to_s

  puts "Please enter your operator: (+), (-), (/), (*)"
  b_input_operator = gets.chomp

  puts "Please enter your second number"
  b_input2 = gets.chomp

  puts (eval b_input1_string + b_input_operator + b_input2)

end

def bmi_cal

  puts "please select you units, (I) Imperial, (M) metric."
  bmi_units = gets.chomp
  if bmi_units == "i"
    puts "please enter you height in inches"
    iheight = gets.chomp
    iheight_float = (eval iheight).to_f
    puts "please enter you weight in pounds"
    iweight = gets.chomp
    iweight_float = (eval iweight).to_f

    i_bmi_output = (iweight_float / (iheight_float * iheight_float)) * 703
    puts i_bmi_output

  elsif bmi_units == "m"
    puts "please enter you height in meters, e.g. 1.81"
    mheight = gets.chomp
    mheight_float = (eval mheight).to_f
    puts "please enter you weight in kg"
    mweight = gets.chomp
    mweight_float = (eval mweight).to_f

    m_bmi_output = (mweight_float / (mheight_float * mheight_float))
    puts m_bmi_output

  else
    puts "that is an incorrect input, please try again"
    bmi_cal
  end


end

def travel_cal

  puts "Please enter the distance you are traveling"
  distance = gets.chomp
  f_distance = (eval distance).to_f
  s_distance = (f_distance).to_s

  puts "Please enter the fuel efficiency of your vehicle (mpg)"
  mpg = gets.chomp
  f_mpg = (eval mpg).to_f

  puts "Please enter the cost per gallon of fuel"
  gallon = gets.chomp

  puts "Please enter the speed you will be traveling at (mph)"
  mph = gets.chomp
  f_mph = (eval mph).to_f

  if f_mph > 60
    mpg_reduce = f_mph - 60
    f_mpg += -(2 * mpg_reduce)
    s_mpg = (f_mpg).to_s
    # puts mpg_reduce, f_mpg, s_mpg
    if f_mpg < 5
      f_mpg = 5.0
      s_mpg = (f_mpg).to_s
      puts "Minium MPG is #{f_mpg}"
    end

  else
    s_mpg = (f_mpg).to_s

  end

  time = (eval s_distance + "/" + mph )
  time.round(2)

  cost = (eval (s_distance + "/" + s_mpg) + "*" + gallon )

  puts "You journey will take #{time} hour(s), and cost £#{cost}."

end

def menu

  puts "Please select which calculator you would like (A) advanced, (B) basic, (BMI) for a BMI calculator, or (t) for travel calculator"
  input_select = gets.chomp #send to lower case
  if input_select == "a"
    puts "Advanced!!"
    advanced_cal
  elsif input_select == "b"
    puts "Basic!!"
    basic_cal
  elsif input_select == "bmi"
    puts "BMI!!"
    bmi_cal
  elsif input_select =="t"
    puts "Travel calculator!!"
    travel_cal
  else
    puts "Sorry that is an incorrect input, please try again"
    menu
  end

end

###  user menue and promts begin here
puts "Ruby Command Line Calculator!"

begin

 menu
 puts "If you require a further calculation press (y)"
  repeat = gets.chomp

end while repeat == "y"
