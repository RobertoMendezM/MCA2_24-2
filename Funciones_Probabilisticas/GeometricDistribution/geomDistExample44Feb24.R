##
# GEOMETRICAL DISTRIBUTION
#       f(x,i)= q**(i-1)*p  

#      p := success
#      q = 1 - p
#      P(X = i) = q**(i-1)*p 
#      P(X <= i) = 1 - q**i
#      E(x) = 1/p          
#      P(X <= k)= 1- q**k >= u/100      u percentage (u%)   

# author: Roberto Mendez

# Book: Probability with R An Introduction with Computer Science 
#      Applications 2020 Jane Horgan PAG 167
##

##  PROBLEMAS

# Example 4
# One percent of bits transmitted through a digital transmission are received in error.
# Let X denote the number of bits transmitted until the first error.
# P(X = 1) = P(error in first transmission)
# P(X = 2) = P(one correct bit followed by an error in second transmission)
# P(X = 3) = P(two correct bits followed by an error in third transmission)

p = 0.01

cat("\n error in first transmissionis: ", p)

cat("\n one correct bit followed by an error in second transmission: ", (1-p)*p)

cat("\n two correct bits followed by an error in third transmission: ", (1-p)**2*p)


#  USando dgeom

cat("\n error in first transmissionis: ", dgeom(0,p))

cat("\n one correct bit followed by an error in second transmission: ", dgeom(1,p))

cat("\n two correct bits followed by an error in third transmission: ", dgeom(2,p))

# If you receive: Error in plot.new() : figure margins too large
par(mar = c(5, 4, 2, 1))

par(mfrow = c(2,2))

x <- 0:10
plot(x+1, dgeom(x, prob = p),
     xlab = "X = Number of bits", ylab = "P(X=x)",
     type = "h", main = "First bit in error, p = 0.01",
     font.main = 1)

plot(x+1, dgeom(x, prob = p),
     xlab = "X = Number of bits", ylab = "P(X=x)",
     type = "l", main = "First bit in error, p = 0.01",
     font.main = 1)

x <- 0:200
plot(x+1, dgeom(x, prob = p),
     xlab = "X = Number of bits", ylab = "P(X=x)",
     type = "h", main = "First bit in error, p = 0.01",
     font.main = 1)

plot(x+1, dgeom(x, prob = p),
     xlab = "X = Number of bits", ylab = "P(X=x)",
     type = "l", main = "First bit in error, p = 0.01",
     font.main = 1)
    