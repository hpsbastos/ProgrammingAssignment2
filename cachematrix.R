## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

    im <- NULL
    set <- function(s) {
        x <<- s
        im <<- NULL
    }
    get <- function() x

    invert <- function() im <<- solve(x)

    getinverted <- function() im

    list(set = set, get = get,
         invert = invert,
         getinverted = getinverted)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}





