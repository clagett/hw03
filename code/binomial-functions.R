#==========================================================================
# Title: Functions for HW03- Stat133
# Description: Functions needed for HW03-Stat133
# Inputs:
# Outpits:
#==========================================================================


#' @title is_integer
#' @description determines if the input is an integer
#' @param x any single input
#' @return TRUE or FALSE
is_integer <- function(x){
     x%%1 == 0
}
is_integer(2)


#' @title is_positive
#' @description checks if the input is a positive number
#' @param x any single input
#' @return TRUE or FALSE
is_positive <- function(x){
     x > 0
}

#' @title is_nonnegative
#' @description checks if the input is a non-negative number
#' @param x any single input
#' @return TRUE or FALSE
is_nonnegative <- function(x){
     x >= 0
}


#' @title is_positive_integer
#' @description checks if the input is a positive integer
#' @param x any single input
#' @return TRUE or FALSE
is_positive_integer <- function(x){
     is_positive(x) == TRUE & is_integer(x) == TRUE
}
is_positive_integer(-2)


#' @title is_nonneg_integer
#' @description checks if the input is a non-negative integer
#' @param x any single input
#' @return TRUE or FALSE
is_nonneg_integer <- function(x){
     is_nonnegative(x) == TRUE & is_integer(x) == TRUE
}


#' @title is_probability
#' @description checks if the inout is a probability number between 0 and 1
#' @param x any single input
#' @return TRUE or FALSE
is_probability <- function(x){
     0 <= x <= 1
}


#' @title bin_factorial
#' @description calculates the factorial of a non-negative integer
#' @param x any single input
#' @return factorial of input, or error
bin_factorial <- function(x){
     if(is_nonneg_integer(x) == TRUE){
          y<-1
          for(i in 1:x){
               y <-y*((1:x)[i])
          }
          print(y)
     } else{stop("Input should be a non-negative integer")}
}
bin_factorial(5)
