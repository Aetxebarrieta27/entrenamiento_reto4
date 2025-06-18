library(plumber)

#* @apiTitle API examen reto 4
#* @apiDescription trabaja sobre la variable ‘Minutes del dataframe de películas

#* Echo back the input
#* @param msg The message to echo
#* @get /echo


#* @serializer png
#* @get /plot
function() {
    rand <- rnorm(100)
    hist(rand)
}


r<- plum("plumber.R")
r$run(port=8000)