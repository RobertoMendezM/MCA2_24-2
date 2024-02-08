##
# GEOMETRICAL DISTRIBUTION
#     f(x,i)= q**(i-1)*p 
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

# Exercise 4
# A search engine goes through a list of sites for a given key phrase, and terminates
# as soon as the key phrase is found. Each site has a 60% chance of containing
# the key phrase.
# (a) What is the probability of finding the key phrase in the third site?
# (b) How many sites, on average, will need to be searched in order to find the
# key phrase?
# (c) What is the minimum number of sites that will need to be searched to be
# 99% sure of finding the key phrase?


p = 0.6

cat("\n What is the probability of finding the key phrase in the third site: ", (1-p)**2*p)

cat("\n How many sites, on average, will need to be searched in order to find the
        key phrase?: ", ceiling(1/p))

# Question C)

minSites = -2/log10(1 - p)
cat("\n What is the minimum number of sites that will need to be searched to be
        99% sure of finding the key phrase?: ", minSites)

# Using qgeom
cat("\n What is the minimum number of sites that will need to be searched to be
        99% sure of finding the key phrase?: ", qgeom(0.99, p) )