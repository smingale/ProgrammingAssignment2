makeCacheMatrix <- function(x = matrix()) {
        ## functions to
        ##              1. set matrix
        ##              2. get matrix
        ##              3. set inverse
        ##              4. get inverse
        
        inv = NULL
        set = function(y) {
                # use `<<-` to assign a value to an object in an environment 
                # different from the current environment. 
                x <<- y
                inv <<- NULL
        }
        get = function() x
        setinv = function(inverse) inv <<- inverse 
        getinv = function() inv
        list(set = set, get = get, setinv = setinv, getinv = getinv)
}