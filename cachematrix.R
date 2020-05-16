## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  q <- NULL
  set <- function(y){
    x <<- y
    q <<- NULL
  }
  get <- function()x
  setInverse <- function(inverseMatrix) q <<- inverseMatrix
  getInverse <- function() q 
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)

}


## Write a short comment describing this function
#This function computes the inverse of the special "matrix" #returned 
#by makeCacheMatrix above. If the inverse has already been #calculated 
#(and the matrix has not changed), then the cachesolve #retrieve 
#the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  q <- x$getInverse()
  if(!is.null(q)){
    message("getting cached data")
    return(q)
  }
  mat <- x$get()
  q<- solve(data)
  x$setInverse(q)
  q
}
