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

    setinverted <- function(inverted) im <<- inverted

    getinverted <- function() im

    list(set = set, get = get,
         setinverted = setinverted,
         getinverted = getinverted)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    im <- x$getinverted()
    if(!is.null(im)) {
            message("getting cached inverted matrix")
            return(im)
    }
    data <- x$get()
    im <- solve(data, ...)
    x$setinverted(im)
    im
}





