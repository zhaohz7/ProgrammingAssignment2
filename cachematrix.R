makeCacheMatrix <- function(x = matrix()) {
    #initialize a novel 'cached matrix' object and has four inner functions: set, get,
    #set_inverse, and get_inverse. Return a list object.
    
    #Usage:
    #suppose you have a random matrix:
    #num_rows <- 1000
    #num_cols <- 1000
    #random_matrix <- matrix(rnorm(num_rows * num_cols), nrow = num_rows, ncol = num_cols)
    
    #initialize a novel 'cached matrix' object and set the random matrix previously generated
    #cached_matrix <- makeCacheMatrix()
    #cached_matrix$set(random_matrix)

    #get back the value and check how the matrix stores if needed:
    #cached_matrix$get(random_matrix)

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
    #calculate the inverse using the cacheSolve() function
    #when there's no cached inverse, do the calculate and use the set_inverse to store the inverse matrix
    #otherwise just retrieve using the get_inverse function and message "getting cached inverse matrix"
    
    #e.g.
    #cacheSolve(cached_matrix)
    
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
