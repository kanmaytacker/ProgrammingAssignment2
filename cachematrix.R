## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##makeCache creates a list which sets, gets the value of the matrix and its inverse 
makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
 ##set value of matrix
 
  set <- function(y) {
    x <<- y
    i <<- NULL
  }
 ##get value of matrix
 
  get <- function() x
 ##set value of inverse
  setinverse <- function(inverse) i <<- inverse
 ##get value of matrix
 
  getinverse <- function() i
   ##return list
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)


}


## Write a short comment describing this function
##if inverse cached returns cached value else computes the inverse
cacheSolve <- function(x, ...) {
        
  i <- x$getinverse()
  if(!is.null(i)) {
    message("Getting cached data:")
    return(i)
  } 
  data <- x$get()
  ## To calculate the inverse matrix 
  i <- solve(data)
  x$setinverse(i)
  i
}
