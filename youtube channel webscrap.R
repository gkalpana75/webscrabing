# INSTALL LIBRARIES

library(robotstxt)
library(rvest)

# CHECK WHETHER THE WEBSITE IS ALLOWED TO SCRAP

Path= paths_allowed("https://en.wikipedia.org/wiki/List_of_most-subscribed_YouTube_channels")

# ASSIGN THE WEBSITE TO A VARIABLE

url<-"https://en.wikipedia.org/wiki/List_of_most-subscribed_YouTube_channels"

# READ THE HTML PART OF THE URL
my_html<-read_html(url)

# SEGREGATE THE HTML NODES, GET THE TABLES AND ASSIGN THEM TO A VARIABLE

my_tables <- html_nodes(my_html,"table")

# TAKE THE FIRST TABLE AND ASSIGN THEM TO A SEPARATE VARIABLE
channel_table <- html_table(my_tables)[[1]]

# VIEW THE TABLE
View(channel_table)

# TAKE ONLY THE SECOND AND THIRD COLUMN FROM THE TABLE AND STORE IT IN A VARIABLE

channel <- channel_table[,2:5]

# VIEW THE TABLE
View(channel)

# CHECK FOR DATATYPES

str(channel)

