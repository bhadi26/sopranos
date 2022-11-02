# get qutoes from website  
getdata <- function(){
  simple <- read_html("https://www.thedad.com/the-sopranos-quotes/") %>% 
    html_nodes(".single-article-content") %>% 
    html_text()
  
  simple <- simple[1] # get only the quotes 
  
  quotes <- stringi::stri_split_lines1(simple) # split lines 
  
  tonyquotes <- quotes[19:50] # tony only
  
  familyquotes <- quotes[53:64] # rest of soprano fam
  
  everybodyelsequotes <- quotes[67:76] # every body else 
  
  tonydf <- data.frame(tonyquotes,rep("tony",length(tonyquotes)))
  colnames(tonydf) <- c("quote","person")
  
  sopranodf <- data.frame(familyquotes,rep("family",length(familyquotes)))
  colnames(sopranodf) <- c("quote","person")
  
  
  elsedf <- data.frame(everybodyelsequotes,rep("everybody",length(everybodyelsequotes)))
  colnames(elsedf) <- c("quote","person")
  df <- rbind(tonydf, sopranodf, elsedf)
  return(df) 
}