### Assignment: Caching the Inverse of a Matrix

Usage help:
1. generate a random matrix:
e.g.
```
num_rows <- 1000
num_cols <- 1000
random_matrix <- matrix(rnorm(num_rows * num_cols), nrow = num_rows, ncol = num_cols)
```

3. initialize a novel 'cached matrix' object and set the random matrix previously generated
cached_matrix <- makeCacheMatrix()
cached_matrix$set(random_matrix)

4. calculate the inverse using the cacheSolve() function
cacheSolve(cached_matrix)
5. if there's a cached inverse stored, then retrieve the inverse without calculation

Thanks for your time!
