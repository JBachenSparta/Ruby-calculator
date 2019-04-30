# Ruby-calculator

## Task

Build  a command line calculator application that has four settings, (b) basic and (a) advanced, (bmi) bmi calculator, and (t) travel calculator.

**Basic:**
  - Additon
  - Multiplication
  - Division
  - Subtraction

**Advanced:**
  - Power
  - Square root


**BMI Calculator**

Calculate the BMI when given the height and weight - the user should be able to choose between the imperial and the metric system

**Travel Calculator**

This feature asks the user for four inputs; distance, fuel efficiency (mpg), cost per gallon, speed and it will give you the time and price of your journey.

**Note:** For every 1 MPH over 60 MPH, reduce the the MPG by 2 MPG (i.e. a car that normally gets 30 mpg would only get 28 mpg if its speed were 61 mph. Yes this gets silly at high speed where mpg goes to zero or gets negative - how will you handle this?)

<br>

### Comments

Ruby calculator runs in your command line with the command 'ruby app.rb'

Calculator is fully functional, and will loop through user input stages if an incorrect input is made.  Once all calculations are complete, users are prompted to press (y) to make another calculation, or (n) to finish and exit the calculator.

### Further comments

Realising I needed to convert the user inputs from gets.chomp, into a float, then back into a string to allow the eval function to output decimals was crucial to the success of this project.  

Also, encapsulating each essential block of code within a function allowed, upon entry of an incorrect input, recall of the entire function thus prompting the user to start again.  
