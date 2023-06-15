# Assignment 2: Narcissistic Numbers
#Defensive programming is bonus
# Make sure program runs properly for correct inputs
# Prompt the user to enter a three digit positive number.
# "readline" is the command to read a user's input from the console, while "prompt" specifies what the user will see to inform them what to input.
user_entry <- readline(prompt = "Please enter a three digit positive number: ")
# Check if the user input is numeric. If not, print an error message and quit.
# If "grepl" is a function I found that will check to see if the user's input is 3 digits and that user entry is a positive number.
# {} will proceed to run the code. as.numeric" will convert the user's input to class numeric.
# If these condiitons are not met, else will run an alternate code denoted by {} using "print" for the error message and "quit" to terminate the program.
# Save = no prevents saving a non-valid script and status = 1 creates a notice to the user that an error occured.
if (grepl("^\\d{3}$", user_entry) & as.numeric(user_entry) > 0) {
  print(user_entry)
  numeric_value <- as.numeric(user_entry)
} else {
  print ("Error: Input is not numeric")
  quit(save = "no", status = 1)
}
# Check if the number is narcissistic. A narcissistic number, or an Armstrong number, is a number that is equal to the sum of the cubes of its own digits. 153, 370, 371, 407 are three digit Armstrong numbers.
# The object "is_narcissistic is created and "function" designates it as a function that executes all operations within {}
# digits converts the user_entry into a character string using as.character, then splits it into individual characters using strsplit. The resulting list is accessed using [[1]] to extract the first element, which is a character vector. Finally, as.numeric is applied to convert the character vector into a numeric vector called digits. This step separates the individual digits of the number.
# sum_cubes cubes each digit and then sums those values
# finally return compares user_entry and sum_cubes, if equal it will return TRUE indicating it is a narcissitic number.
is_narcissistic <- function(user_entry) {
  digits <- as.numeric(strsplit(as.character(user_entry), "")[[1]])
  sum_cubes <- sum(digits^3)
  return(user_entry == sum_cubes)
}
