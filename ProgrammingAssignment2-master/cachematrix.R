## This function sets and caches a matrix x and 
## the inverse of matrix x (m)

## This function creates a list of functions which:
## sets the value of matrix x (set); and sets the inverse matrix back to NULL
## gets the cached value of matrix x (get)
## sets the value of the inverse matrix m (setsolve)
## gets the value of the inverse matrix m (getsolve)


makeCacheMatrix <- function(x = matrix()) {
            m <- NULL
            set <- function(y) {
                    x <<- y
                    m <<- NULL
            }
            get <- function() x
            setsolve <- function(solve) m <<- solve
            getsolve <- function() m
            list(set = set, get = get,
                 setsolve = setsolve,
                 getsolve = getsolve)
}

## This function returns the inverse matrix m if it has been cached
##If not it calculates the inverse matrix of x and caches it
    
cacheSolve <- function(x, ...) {
## get m (inverse matrix of x)
            m <- x$getsolve()
##If m is defined returned cached data
            if(!is.null(m)) {
                    message("getting cached data")
                    return(m)
            }
##Get value of x, calculate inverse matrix m and cache it
            data <- x$get()
            m <- solve(data, ...)
            x$setsolve(m)
            m
}