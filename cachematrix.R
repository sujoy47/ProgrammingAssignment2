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
