## The two functions (makeCacheMatrix and cacheSolve) complete inverse operations
## on an input matrix. The input matrix supplied to either function is assumed to be
## an invertible square matrix. If this is not the case, the function will return an error

## makeCacheMatrix is a function that creates a matrix object that can cache
## it's inverse

makeCacheMatrix <- function(x = matrix()) {
## create inverse of matrix x by using the solve() function
## then assign it to a cahce variable called 'inverse'
## also assign orignal matrix to a variable so that it can be
## compared against the input in the cacheSolve function
##
        y <- solve(x)
        inverse <<- y
        original <<- x
##        
}


## cacheSolve takes an input matrix and returns its inverse
## if the inverse is already cached and the matrix has not changed
## then the function simply returns the cached value
## otherwise it creates the inverse by using the solve() function

cacheSolve <- function(x, ...) {
## Return a matrix that is the inverse of 'x'.
## First check whether the inverse has already been cached
## and whether the matrix has not been changed.
## The identical() function is used to test whether the input matrix is still the same
## as the one used to run makeCacheMatrix
##        
        if(exists("inverse")){
                if(!is.null(inverse) & identical(x, original)) {
                        message("geting cached inverse")
                        return(inverse)
                }
        }
        solve(x)
}
