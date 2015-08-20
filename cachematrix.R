## Function that allows to cache a matrix and its inverse (setting
## them and storing them), setting a new matrix resets the inverse.
## 
## As per assignment instructions input is assumed to be sanitized.

makeCacheMatrix <- function(x = matrix()) {

    # set & get the matrix (setting new matrix resets inverse)
    im <- NULL
    set <- function(s) {
        x <<- s
        im <<- NULL
    }
    get <- function() x

    # set & get the INVERTED matrix
    setinverted <- function(inverted) im <<- inverted
    getinverted <- function() im

    list(set = set, get = get,
         setinverted = setinverted,
         getinverted = getinverted)

}


## Function that computes and stores the inverse of a matrix using
## the object created by the makeCacheMatrix function.
## Input: Matrix object created w/ makeCacheMatrix()
## Output: Inverted matrix

cacheSolve <- function(x, ...) {
    ## Already computed? Returns a matrix that is the inverse of 'x'
    im <- x$getinverted()
    if(!is.null(im)) {
        message("getting cached inverted matrix")
        return(im)
    }
    # Otherwise, gets matrix in makeCacheMatrix() object, 
    # computes the inverse matrix, stores it in the object
    # and outputs the inverted matrix.
    data <- x$get()
    im <- solve(data, ...)
    x$setinverted(im)
    im
}





