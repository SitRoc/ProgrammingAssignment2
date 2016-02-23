## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## Parameters: Takes in a matrix

## (set) sets the function set

## (get) sets the function get - which returns the matrix

## (setsolve) sets the solve function - which returns a function that solve's m

## (getsolve) sets the function that returns the solved matrix

## Returns: List of methods


makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    set <- function(y) {
        x <<- y
        m <<- NULL
    }
    get <- function() x
    setsolve <- function(solve) m <<- solve
    getsolve <- function() m
    list(set = set, get = get, setsolve = setsolve, getsolve = getsolve)
}


## Write a short comment describing this function

## The following method:
## Parameters: x is a variable with the list of methods computed 
    ##from the makeCacheMatrix ex. x <- makeCacheMatrix(matrix(4:7, nrow = 2, ncol = 2))

## gets the solved mean (m)
## checks that m is not null (Checks if its empty or not)
## if m is not empty
    ## a message saying "getting cached data" is printed
    ## m is returned
## if m is empty
## it gets the matrix which was inputted into makeCacheMatrix() - matrix 'x'
## computes the solve function on x - data
## sets m (from the makeCacheMatrix) with the data variable computed above
## prints out m

cacheSolve <- function(x, ...) {
    m <- x$getsolve()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setsolve(m)
    m
}
