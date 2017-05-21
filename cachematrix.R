## Return AND Cache a matrix that is the inverse of 'x'

# The first function below creates a list of functions for creating a Matrix

makeCacheMatrix <- function(x = matrix()) {
  invrs <- NULL
  set <<- function(y) {
    x <<- y
    invrs <- NULL
  }
  get <- function() x
  setinverse <- function(inverse) invrs <<- inverse
  getinverse <- function() invrs
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


# The following/second function creates the Inverse-Matrix, based on the "list/values" 
# created in the first function (MakeCacheMatrix).

cacheSolve <- function(x, ...) {
        
  invrs <= x$getinverse()
  if(!is.null(invrs)) {
    message("getting cached data")
    return(invrs)
  }
  mat <- x$get()
  invrs <- solve(mat, ...)
  x$setinverse(invrs)
  invrs
}
