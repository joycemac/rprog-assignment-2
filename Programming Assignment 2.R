## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#making a matrix with cached inverted values
makeCacheMatrix <- function(x = matrix()) {



   inv <- NULL



    set <- function(y) {



        x <<- y



        inv <<- NULL



    }



    get <- function() x



    setinverse <- function(inverse) inv <<- inverse



    getinverse <- function() inv



    list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)



}




























































## Write a short comment describing this function
#calculates inverse of the matrix above

cacheSolve <- function(y, ...) {

        # get the cached value

        inverse <- y$getInverse()

        # if a cached value exists return it

        if(!is.null(inverse)) {

                message("getting cached data")

                return(inverse)

        }



        data <- y$getMatrix()

        inverse <- solve(data)

        y$cacheInverse(inverse)

        



        inverse

}
