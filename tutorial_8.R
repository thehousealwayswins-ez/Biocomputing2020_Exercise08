# Tutorial Week 8

#import data from game day text file
game_day <- read.table(file = "UWvMSU_1-22-13.txt", header = TRUE, sep = "\t")

#create subsets for each team's score
UWpoints <- subset(game_day, game_day$team == "UW")
MSUpoints <- subset(game_day, game_day$team == "MSU")

#now use a for loop to track cumulative scores that sums each point to the "i"th point in the loop and stores it in a vector

csUW = numeric(length=length(UWpoints$score))
for(i in 1:length(UWpoints$score)){
  csUW[i] = sum(UWpoints$score[1:i])
  }
csUW

csMSU = numeric(length=length(MSUpoints$score))
for(i in 1:length(MSUpoints$score)){
  csMSU[i] = sum(MSUpoints$score[1:i])
}
csMSU

#plot the cumulatioive points totals as a function of time
plot(UWpoints$time, csUW, type = "l", col = "red", xlab = "Time", ylab = "Points")
lines(MSUpoints$time, csMSU, type = "l", col = "green", xlab = "Time", ylab = "Points")

# Problem 2 - Guessing Game

#generate random number from 1-100
rand_num = sample(1:100, 1)

#ask user to guess number
print("Guess a number 1 to 100")

#user can guess up to 10 times
for(i in 1:10){
  guess <- readline(prompt="Guess: ")
  guess <- as.integer(guess)
  #checks if random number is equal to guess, breaks the loop
  if(rand_num == guess)
    print("You got it!")
  
#if guess is low
else if(guess > rand_num){
  print("It's Lower!")
}

#if guess is high
else if(guess < rand_num){
  print("It's Higher!")
  break
}
  
}