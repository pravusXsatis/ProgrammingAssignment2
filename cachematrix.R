## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix <- function( a = matrix() ) {
  
  b <- NULL
  
  set <- function( matrix ) {
    a <<- matrix
    b <<- NULL
  }
  
  get <- function() {
    a
  }
  
  setInv <- function(inverse) {
    b <<- inverse
  }
  
  getInv <- function() {
    b
  }
  
  list(set = set, get = get,
       setInv = setInv,
       getInv = getInv)
}

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x' 
  a <- x$getInv()
  
  if( !is.null(a) ) {
    message("getting cached data")
    return(a)
  }
  
  data <- x$get()
  
  a <- solve(data) %*% data
  
  x$setInv(a)
  
  a
}



