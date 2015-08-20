## Function that allows to cache a matrix and its inverse (setting
## them and storing them), setting a new matrix resets the inverse.
## 
## As per assignment instructions input is assumed to be sanitized.

makeCacheMatrix <- function(x = matrix()) {

    # set & get matrix (setting new matrix resets inverse)
    im <- NULL
    set <- function(s) {
        x <<- s
        im <<- NULL
    }
    get <- function() x

    # set & get INVERTED matrix
    setinverted <- function(inverted) im <<- inverted
    getinverted <- function() im

    list(set = set, get = get,
         setinverted = setinverted,
         getinverted = getinverted)

}


## Function that computes and stores the inverse of a matrix using
## the object created by the makeCacheMatrix function.

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





