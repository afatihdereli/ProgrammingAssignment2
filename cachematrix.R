## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  a <- NULL
  set <- function(y) {
    x <<- y
    a <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) a <<- inverse
  getinv <- function() a
  list(set=set, get=get, setinv=setinv, getinv=getinv)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  a <- x$getinv()
  if(!is.null(a)) {
    message("cached data")
    return(a)
  }
  b <- x$get()
  a <- solve(b)
  x$setinv(a)
  a
  ## Return a matrix that is the inverse of 'x'
}
