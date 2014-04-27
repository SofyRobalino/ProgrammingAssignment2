## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
i  <- NULL
        st  <- function(y){
                x <<- a
                i <<- NULL 
        }
        gt  <- function() x
        stinverse  <- function(inverse) i  <<- inverse
        gtinverse  <- function() i
        list(st= st, gt = gt, 
             stinverse = stinverse, 
             gtinverse = gtinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
 i  <- x$gtinverse()
        if (!is.null(i)){
                message("gtting cached data")
                return(i)
        }
        data  <- x$gt()
        i  <- solve(data, ...)
        x$stinverse(i)
        i

        ## Return a matrix that is the inverse of 'x'
}




