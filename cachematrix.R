## Put comments here that give an overall description of what your
## functions do
## This assignment is similar the make vector function we have seen in the example.
## Write a short comment describing this function
## the makeCacheMatrix will return a list contains three functions and one variable:
## set: update the current matrix to a new matrix
## get: return the current matrix
## setInv: set the inverse to the variable cache
## getInv: get the inverse of the current cache

makeCacheMatrix <- function(x = matrix()) {
    cache <- NULL
    set <-function(y){
        x <<- y
        cache <- NULL
    }
    get <- function () x
    setInver

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
