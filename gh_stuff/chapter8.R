# Exercise 8.1.1.3)
getParentEnv <- function() {
  x <- globalenv()
  while(!identical(x,emptyenv())) {
    print(x)
    x <- parent.env(x)
  }
  print(x)
}
getParentEnv()
getParentEnvRec <- function(x=globalenv()) {
  x <- parent.env(x)
  if(!identical(x,emptyenv())) {
    getParentEnvRec(x)
  }
  print(x)
}
getParentEnvRec()