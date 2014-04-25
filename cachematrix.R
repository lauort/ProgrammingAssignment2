## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This fuction creates a special "matrix" object that can cache its inverse.
## Set the value of the matrix
## Get the value of the matrix
## Set the value of the inverse
## Get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

	inv_matrix <- NULL
	set <- function(y) {
		x <<- y
		inv_matrix <<- NULL
	}
	get <- function () x
	set_inverse <- function(inverse) inv_matrix <<- inverse
	get_inverse <- function() inv_matrix
	list(set=set, get=get,
		set_inverse = set_inverse,
		get_inverse <- get_inverse)

	

}


## Write a short comment describing this function
## This fuction calculates the inverse of a matrix
## If the inverse is calculated already "gets" the inverse from the cache and skips the computation.
## Otherwise, it calculates the inverse of the data and sets the value of the inverse in the cache via set_inverse function.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		inverse_x <- x$get_inverse()
		if (!is.null(m)) {
			message("getting cached inverse matrix");
			return(inverse_x)
		}
		data <- x$get()
		inverse_x <- inverse(data, ...)
		x$set_inverse(inverse_x)
		inverse_x
}
