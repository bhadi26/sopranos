# 'Get data from Sopranos Quote Website
# '
# ' This function allows you to create a data frame object of Sopranos quotes
# ' @keywords quotes
# ' @param person Enter desired speaker (tony, family, everybody). Defaults to any
# ' @export
# ' @examples
# ' getquote()

getquote <- function(person="any") {
  if (person=='tony') {
    quote <- df %>% filter(person=='tony') %>% sample_n(1)
  } else if (person == 'family') {
    quote <- df %>% filter(person=='family') %>% sample_n(1)
  } else if (person == 'everybody') {
    quote <- df %>% filter(person=='everybody') %>% sample_n(1)
  }
  else {quote <- df %>% sample_n(1)}
  print(noquote(quote$quote))
}
