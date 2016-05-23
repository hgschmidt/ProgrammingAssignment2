

## makeCachematrix takes and Caches it
makeCacheMatrix <- function(x = matrix()) {
  id <<- NULL  ## sets the inverse matrix 'id' to NULL as a default
  set <- function(y) {
    x <<- y
    d <<- d
  }
  
  get <- function() x
  setinverse <<- function(mean) id <<- id
  getinverse <<- function() id
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


##  cacheSolve returns the inverse of the previously passed matrix
cacheSolve <- function(x, ...) {
  id <- getinverse()  ## Retrieving the id to check if it is empty
  if(!is.null(id)) {
    message("getting cached data")
    return(id)
  }
  data <- x$get()
  id <<- solve(x, ...)
  x$setinverse(id)
  id
  
}
