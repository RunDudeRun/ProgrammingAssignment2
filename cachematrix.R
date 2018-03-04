## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## this function creates the matrix and sets global function variables

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setInverse <- function(inverse) m <<- inverse
  getInverse <- function() m
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## this function computes the inverse of a matrix
## if it already exists it retireves the cached version instead

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'
  m <- x$getInverse()
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  mat <- x$get()    
  m <- solve(mat, ...)
  x$setInverse(m)
  m
  }
