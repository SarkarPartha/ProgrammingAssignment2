## Put comments here that give an overall description of what your
## functions do

## gives a list of function for setting, getting matrix and its mean from cache

makeCacheMatrix <- function(x = matrix()) {
  
  inv<-NULL
  set<-function(y){
    x<<-y
    inv<<-NULL
  }
  get<-function()x
  setinv<-function(solve)inv<<-solve
  getinv<-function()inv
  list(set=set,get=get,setinv=setinv,getinv=getinv)

}


## Calculates inverse of matrix or returns the cached inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv<-x$getinv()
  if(!is.null(inv)){
    message("getting cached data")
    return(inv)
  }
  data<-x$get()
  inv<-solve(data,...)
  x$setinv(inv)
  inv
}
