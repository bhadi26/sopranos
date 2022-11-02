# a get quote function 
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