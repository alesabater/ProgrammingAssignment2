## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  
  ## Initial variable assignment
  inverse <- NULL
  
  ## Main function of the script
  set <- function(y){
    x <<- y
    inverse <<- NULL
  }
  
  ## Calls above function, and gets the matrix
  get <- function() x
  
  ## Calls above function to set the inverse
  setinv <- function(inv) inverse <- inv
  
  ## Calls above function to get the inverse
  getinv <- function() inverse
  
  ## List to be returned
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
    
  ## gets the existing value assigned for the inverse
  inverse <- x$getinv()
  ## Checks wether the inverse is cached or not
  if(!is.null(inverse)){
    print("Using cached value")
    return(inverse)
  }
  
  ## If the inverse is not cached, computes the inverse
  data <- x$get()
  inverse <- solve(data)
  x$setinv(inverse)
  inverse
  
  ## Return a matrix that is the inverse of 'x'
}
