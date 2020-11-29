require 'date'

d = Date.today

d.at_beginning_of_week
#Mon, 13 Aug 2012
d.at_beginning_of_week.strftime
#"2012-08-13"
d.at_beginning_of_week.strftime("%d")
#"13" -> To print the date.