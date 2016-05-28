## makeCacheMatrix(x) return the matrix 'inv' storing the reverse matrix of 'x'
## cacheSolve(x,inv) is used to check if the reverse matrix of 'x' has been
## calculated


## makeCacheMatrix(x): the argument of x is the original matrix;
## the return value is a matrix to store the reverse matrix of 'x';

makeCacheMatrix <- function(x = matrix()) {
  inv<-NULL
  inv<-solve(x)##calculate the inverse matrix of x
  inv##the inverse of matrix x is cached in inv as a 
  ##return value
}

## cachesolve(x,inv): the argument of x is the original matrix;
##                    the argument of inv is what retrieved from makeCacheMatrix(),
##                    that is, the return value of makeCacheMatrix;
## the return value is the reverse matrix of 'x' if it has been calculated,
## that is, the reverse matrix of what retrieved from makeCacheMatrix() is identical 
## to the argument of x
cacheSolve <- function(x, inv=matrix()) 
{
  
  if(all.equal(x,solve(inv))==TRUE) ##calculate the inverse matrix of return value 
    ##from makeCacheMatrix() and compare it with the original matrix 'x'
  {
    return(inv)## Return a matrix that is the inverse of 'x'
    ## Retrive th inverse from the cache
  }
}

