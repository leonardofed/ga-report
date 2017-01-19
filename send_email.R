# compile using rmarkdown

# install.packages("rmarkdown")
library(rmarkdown)
rmarkdown::render("daily-report.Rmd")

install.packages("mailR")
library(mailR)

setwd('../ga-report')
system("python -m premailer -f daily-report.html -o ready-weekly-report.html")

file.path(R.home("bin"), "R")


# ?markdown::markdownHTMLOptions

send.mail(from = "me@leonardofederico.com",
          to = "me@leonardofederico.com",
          subject = "R Markdown Report - rmarkdown",
          html = T,
          inline = T,
          body = "report-ga.html",
          smtp = list(host.name = "smtp.gmail.com", port = 465, user.name = "me@leonardofederico.com", passwd = "fidelio10", ssl = T),
          authenticate = T,
          send = T)

### https://www.google.com/settings/security/lesssecureapps

