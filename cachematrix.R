makeCacheMatrix <- function(x = matrix()) {
    x_inverse <- NULL
    set <- function(y) {
        x <<- y
        x_inverse <<- NULL
    }
    get <- function() x
    set_inverse <- function(inverse) x_inverse <<- inverse
    get_inverse <- function() x_inverse
    list(set = set, get = get,
         set_inverse = set_inverse,
         get_inverse = get_inverse)
}

cacheSolve <- function(x, ...) {
    x_inverse <- x$get_inverse()
    if(!is.null(x_inverse)) {
        message("getting cached inverse matrix")
        return(x_inverse)
    }
    dataframe <- x$get()
    x_inverse <- solve(dataframe, ...)
    x$set_inverse(x_inverse)
    x_inverse
}
