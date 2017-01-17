# compile using rmarkdown

install.packages("rmarkdown")
library(rmarkdown)
rmarkdown::render("report-ga.Rmd")

install.packages("mailR")
library(mailR)

?markdown::markdownHTMLOptions

send.mail(from = "me@leonardofederico.com",
          to = "me@leonardofederico.com",
          subject = "R Markdown Report - rmarkdown",
          html = T,
          inline = T,
          body = "report-ga.html",
          smtp = list(host.name = "smtp.gmail.com", port = 465, user.name = "me@leonardofederico.com", passwd = "fidelio10", ssl = T),
          authenticate = T,
          send = T)

#compile using knitr
library(knitr)
rmarkdown::render("report-ga.Rmd")

send.mail(from = "me@leonardofederico.com",
          to = "me@leonardofederico.com",
          subject = "R Markdown Report - knitr",
          html = T,
          inline = T,
          body = "report-ga.html",
          smtp = list(host.name = "smtp.gmail.com", port = 587, user.name = "me@leonardofederico.com", passwd = "fidelio10", ssl = T),
          authenticate = T,
          send = T)


# https://www.google.com/settings/security/lesssecureapps
