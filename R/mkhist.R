#' mkhist() function to create 
#' histograms from df variables

#' @export

mkhist <- function(x){
	print(x %>% head())
	x %>% gather() %>% head()

	ggplot(gather(x), aes(value)) + 
		geom_histogram(bins=20) +
		facet_wrap(~key, scales='free_x')
}

