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
        cache <<- NULL
    }
    get <- function () x
    setInv <- function (inverse) cache <<-inverse
    getInv <- function () cache
    list( set = set, get = get, setInv = setInv, getInv = getInv)

}


## Write a short comment describing this function
## this function takes the list generated in the previous function makeCacheMatrix
## it returns the inverse of x. There are two possible outcome: the inverse is there or the inverse it not there
## if the inverse is already in the cache, it return the inverse in the cache immediately. Otherwise it calculates the inverse
## then saves it to the environment
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        cache <- x$getInv()
        if(!is.null(cache)){
        message("getting cached data")
        return (cache)
        }
        else{
        data <-x$get()
        cache <- solve(data,...)
        x$setInv(cache)
        return(cache)
        }
}
N <- 3
M <- N
set.seed(1)
test <- matrix(rnorm(N*M,mean=0,sd=1), N, M)
matrix_vector <- makeCacheMatrix(test)
cache_solve <-cacheSolve(matrix_vector)
cache_solve <-cacheSolve(matrix_vector)
