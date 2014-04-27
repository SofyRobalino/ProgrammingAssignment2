## This code is a set of functions that cache the inverse of a matrix
##Functions: makeCacheMatrix, cacheSolve

## This function creates a special "matrix" object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()) {
inv  <- NULL
        set  <- function(y){
                x <<- a
                inv <<- NULL 
        }
        get  <- function() x
        setINV  <- function(inverse) inv  <<- inverse
        getINV  <- function() inv
        list(set= set, get = get, 
             setINV = setINV, 
             getINV = getINV)

}


## This function calculates the inverse of the matrix that was saved in makeCacheMatrix,
##if the inverse matrix is calculated and it not change,
##cachesolve  retrieve the matrix inverse from the cache

cacheSolve <- function(x, ...) {
 inv  <- x$getINV()
        if (!is.null(inv)){
                message("obtain of cache data")
                return(inv)
        }
        data  <- x$get()
        inv  <- solve(data, ...)
        x$setINV(inv)
        inv

        ## Return a matrix that is the inverse of 'x'
}




