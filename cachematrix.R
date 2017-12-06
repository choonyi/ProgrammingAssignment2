## Put comments here that give an overall description of what your
## functions do

## The makeCacheMatrix function would make a special matrix
## that keeps the cached Inverve of a Matrix. The cacheSolve would get
## the inverse of matrix from cache if it is available or recompute one.

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
         I <- NULL
         set <- function(y){
                 x <<- y
                 I <<- NULL
             }
         get <- function() x
         setInverse <- function(inverse) I <<- inverse
         getInverse <- function() I
         list(set=set,
              get=get,
              setInverse=setInverse,
              getInverse=getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
             I <- x$getInverse()
             if(!is.null(I)){
                     message("getting cached data")
                     return(I)
                 }
             data <- x$get()
             I <- solve(data)
             x$setInverse(I)
             I
}
