# Tutorial Week 8
game_day <- read.table(file = "UWvMSU_1-22-13.txt", header = TRUE, sep = " ")
game_day



# Problem 2 - Guessing Game

#utility function to set up format of game
guess_a_number <- function()
{
x <- readline(prompt = "Guess a Number: ")
n <- integer(length = 100)
sample.int(n, size = 1, replace = FALSE)
  return(as.integer(n))
}

# if else loop 
guess <- readinteger()
if(guess == num)
{cat("You got it!\n")}
if(guess < num)
{cat("It's Bigger!\n")}
if(guess > num)
{cat("It's Smaller!\n")}
