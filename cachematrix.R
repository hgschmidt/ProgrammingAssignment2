## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(n = numeric){
	print("Your Matrix is named 'd' ")
	d <<- matrix(n *c(1, 3, 5, 6, 7, 1, 1, 2,9 ), nrow =3, ncol =3)  ## d now holds a SQUARE matrix (and only square matrices can have inverses) based on the numeric input above

	getmatrix <- function() d
	id <<- NULL  ## id is being set to NULL to hold the eventual inverse
	}


cacheSolve <-function(x = matrix, ...) {
	if(!is.null(id)){
	print("retrieving inverse")	
		return(id)
		}
	
	else
	{ 
	print ("Your Inverse is called 'id'")
	id <<- solve(x)  ## id now holds the inverse of d
 	}
}	
