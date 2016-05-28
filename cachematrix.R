## makeCacheMatrix() creates a special "matrix" object that can cache its inverse
## cacheSolve() computes the inverse of the special "matrix" returned by
## makeCacheMatrix above.


## in the function makeCacheMatrix(),'inv' is the matrix object to cache 
## the inverse, which could be obtained by calling the function getinvmatrix()
## in cacheSolve()and set by calling the function setinvmatrix() 
## in cacheSolve().
## The return value is a list of functions. they are set(),get(),setinvmatrix(),
## getinvmatrix() respectively.

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  } ## set the original data to be inversed
  get<-function()x ##obtain the original data to be inversed
  setinvmatrix<-function(inversed) inv<<-inversed ##set the inverse result
  getinvmatrix<-function() inv ##get the inverse result
  list(set=set,get=get,setinvmatrix=setinvmatrix,getinvmatrix=getinvmatrix)
  
}

## cacheSolve() first check if the original matrix has been reserved by
## by calling the function getinvmatrix().
## if the return value is not NULL, it indicates that it has already been
## cached and print the message: gettting cached data.
## if the return value is NULL, it indicates that it has not been calculted,
## then obtain the original matrix by calling the function get(),
## then calculate its inverse matrix by calling solve()
## then set the inverse matrix by calling setinvmatrix()
## the return value is the inverse of original matrix 'x'

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  inv<-x$getinvmatrix()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data)
  x$setinvmatrix(inv)
  inv
  
  
}