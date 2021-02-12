library(readxl)
polecenia <- read_excel("polecenia.xlsx", 
                        col_names = FALSE)
inne <- read_excel("inne.xlsx", 
                        col_names = FALSE)
s0=inne[1,1]
s1=""
s2=""
s3=""
s4=""
s5=""
s6=""
s7=inne[1,2]
for (x in 1:10)
{
  los=sample(1:24,6)
  n1=los[1]%%2+1
  n2=los[2]%%2+1
  n3=los[3]%%2+1
  n4=los[4]%%2+1
  n5=los[5]%%2+1
  n6=los[6]%%2+1
  print(paste(n1,n2,n3,n4,n5,n6, sep=","))
  s1=polecenia[1,n1]
  s2=polecenia[2,n2]
  s3=polecenia[3,n3]
  s4=polecenia[4,n4]
  s5=polecenia[5,n5]
  s6=polecenia[6,n6]
  nazwa=paste("ZestawB",x,".tex", sep="")
  all=paste(s0,s1,s2,s3,s4,s5,s6,s7,sep="")
  writeLines(all, nazwa,useBytes=T)
  tools::texi2pdf(nazwa, clean=T)
}
