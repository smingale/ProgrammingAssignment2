cacheSolve <- function(x, ...) {      
        inv = x$getinv()
        # if the inverse has already been calculated
        if (!is.null(inv)){
                # get it from the cache and skips the computation. 
                message("getting cached data")
                return(inv)
        }
        
        # else, calculates the inverse 
        mat.data = x$get()
        inv = solve(mat.data, ...)
        
        # sets the value of the inverse in the cache
        x$setinv(inv)
        
        return(inv)
}
