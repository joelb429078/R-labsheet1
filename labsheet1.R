#Exercise 1
x <- c(-1,2,3,0,2,-1,1,4)
#extracting the fourth value of x
x[4]
new_x <- c(x[2], x[3], x[4], x[5])
x[1 <= x & x <= 3]
x[x < 1 | x > 3]
x[0]=-7
y <- (1:100)/101
z <- (1:100)
sum(y^2)
sum(c(1,12)^3)-sum(c(9,10)^3)
a = c(1:5)
b = c(0,6,4,0,6)
a > 3
a >= 3
a > b
max(a,b)
pmax(a,b)
sum(a[a>b])
exp(log(2)^2)
c(1,1,1,1,1,1)+c(2,3)
c(1,1,1,1,1)+c(2,3) #does not work

#Exercise 2
# 100 trials, r.v. X is the number of times 6 is gotten, probability is 1/6 
# P(X = 25) using dbinom and P(X <= 25) - P(x<=24) with pbinom 
n = 25
N = 100
p = 1/6

#first one with dbinom
result1 = dbinom(n,N,p)
#second one with pbinom
result2a = pbinom(n,N,p)
result2b = pbinom((n-1),N,p)
result2 = result2a - result2b
print(result1)
print(result2)


#Exercise 3
#Simulating outcome of the experiment whereby 100 children Roll a die 10 times each and we count num of 6s
#x - result for each of the 100 children  --> 

#repeat 100 times
n = 10
N = 100
p = 1/6 
set.seed(123)  # Set a seed for reproducibility
number_of_sixes <- rbinom(n = 100, size = 10, prob = 1/6)
print(number_of_sixes)

#making the 
children <- 1:100  # x coordinates
plot(children, number_of_sixes, pch = 20, main = "Number of Sixes Rolled by Each Child",
     xlab = "Child", ylab = "Number of Sixes", col = "blue")

# Probability mass function for Binom(10, 1/6)
x <- 0:10  # Possible number of sixes
pmf <- dbinom(x, size = 10, prob = 1/6)
plot(x, pmf, type = "h", lwd = 2, main = "PMF of Binom(10, 1/6)",
     xlab = "Number of Sixes", ylab = "Probability", col = "red")

#d no they do not 





#HOMEWORK

#Problem 1
#a)
pmf.of.hundredheads <- dbinom(20:70, size=100, prob=1/2)
plot(20:70, pmf.of.hundredheads, xlab = "Number of heads" , ylab = "Probability", main = "PMF of X:")

#b)
#Event 1 - less or equal to 40
prob.E1.fair = pbinom(40, size=100, prob =1/2)
print(prob.E1.fair)

#Event 2 - greater than or equal to 70
prob.E2.fair = 1 - pbinom(69, size=100, prob=1/2)
print(prob.E2.fair)

#c)
#Coin 1 
likelihood.faircoin1 = dbinom(40, size=100, prob=1/2)
likelihood.biasedcoin1 = dbinom(40, size=100, prob=2/3)
print(likelihood.faircoin1)
print(likelihood.biasedcoin1)

# For Coin 2, do the same comparison
likelihood.faircoin2 = dbinom(70, size = 100, prob = 0.5)
likelihood.biasedcoin2 = dbinom(70, size = 100, prob = 2/3)
print(likelihood.faircoin2)
print(likelihood.biasedcoin2)

#coin2 is more likely biased since the probability of it being biased is higher than it being fair.
#coin1 is more likely fair since probability of coin1 being fair is higher than biased.


#d)
E3.eventlist = c(2,4,6,8,10)

# Event 1 - X is even for a fair coin
prob.E3.fair = sum(dbinom(E3.eventlist, size=10, prob=1/2))
print(prob.E1.fair)

# Event 2 - X is even for a biased coin (prob = 2/3)
prob.E1.biased = sum(dbinom(E3.eventlist, size=10, prob=2/3))
print(prob.E1.biased)


#Problem 2
#a)
n.values <- 10^(1:6)
computed.values <- (1 - 1/n.values)^n.values
print(computed.values)

#b)
#To calculate (1) from part a) we can rearrange it as (n-1/n)^n or in terms of known term (1+1/n)^n. 
#Which if we set m = n-1 then we get, (m+1/m)^-(m+1) which can be rearranged to [(m+1/m)^m]^-1.
#Multiplied by (1 + 1/m)^-1 = 1/e x 1 = 1/e.

#c)
#prob of individual bernoulli trial 
indvtrial <- 1 - (1/6) * (1/52)
#prob of all 312 not wimming
prob.nobodywins <- indvtrial^312
print(paste("The probability that nobody wins a chocolate egg in one class is:", prob.nobodywins))


#d) i) 
#since independent 
no.win.5yrs <- prob.nobodywins^5
print(paste("The probability that not a single chocolate egg is won over the five-year period is:", prob.nobodywins))


#d) ii)

#binom 
size <- 312
prob.win <- (1/6) * (1/52)
totaldist <- 5 * size * prob.win

sample <- 20
sampleoutput <- rbinom(sample, size * 5, prob.win)
print(sampleoutput)
#histogram of it all  
hist(sampleoutput, breaks = seq(0, max(sampleoutput) + 1, by = 1), main = "Distribution of Chocolate Eggs Won Over 5 Years", xlab = "Number of Chocolate Eggs Won", ylab = "Frequency")



