## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Set the value of the matrix
## Get the value of the matrix
## Set the value of the inverse of the matrix using the solve function
## Get the value of the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinv <- function(solve) m <<- solve
        getinv <- function() m
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}



## Write a short comment describing this function
## calculate the inverse of the matrix using the solve function
## if inverse is cached, returnes cached value
## if not calculates the inverse using the setinv from makeCacheMatrix and caches the result

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinv(m)
        m
}
