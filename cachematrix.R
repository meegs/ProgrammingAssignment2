## Create a pair of functions to cache a matrix, retrieve it
## and calculate the inverse

## Create matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
  
  ## Initialize the inverse
  i <- NULL
  
  ## Set the matrix
  setmatrix <- function(y) {
    x <<- y
    i <<- NULL
  }
  
  ## Get the matrix
  getmatrix <- function() {
    x
  }
  
  ## Set the inverse of the matrix
  setinverse <- function(inverse) {
    i <<- inverse
  }
  
  ## Get the inverse of the matrix
  getinverse <- function() {
    i
  }
  
  ## Return list of matrices/inverses
  list(set = setmatrix, getmatrix = getmatrix, setinverse = setinverse,
       getinverse = getinverse)
}


## Calculate inverse of the matrix object returned by "makeCacheMatrix" function
## above. If the inverse has already been created and the original matrix has not
## changed, "cacheSolve" function should retrieve the inverse from the cache

 ## Call the inverse of the matrix created by "makeCacheoMatrix" function
cacheSolve <- function(x, ...) {

  ## Set inverse of matrix
  m <- x$getinverse()
 
  ## Return cached matrix
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
 ## Get data if inverse not in cache
  data <- x$get()
 ## Set calculated inverse of matrix
 m <- solve(data)
  x$setinverse(m)
 ## Return inverse of matrix
 m
}