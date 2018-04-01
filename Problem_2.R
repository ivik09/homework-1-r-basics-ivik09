

#a
xmin <- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <-c( 25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)
dayNames <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun')

#b
xmin-xmax

#c
avgmin <-mean(xmin)
avgmax <-mean(xmax)

#d
xmin[xmin<avgmin]

#e
xmax[xmax>avgmax]

#f
dayNames <- c('Mon', 'Tue','Wed','Thu','Fri','Sat','Sun')
names(xmin) <- dayNames
names(xmax) <- dayNames
str(xmin)

#g
temperatures <- data.frame(
  df.xmin = xmin,
  df.xmax = xmax
  )

#h
temperatures <-within(temperatures, xminFahrenheit <- c(9/5*xmin + 32))

#i
Fahrenheit <- data.frame(
  df.xminFahrenheit = xminFahrenheit
)

#j-i)
dayFahrenheit <- data.frame(
  df.xminFahrenheit = xminFahrenheit[1:5]
)
  
#j-ii)
dayFahrenheit <- data.frame(
  df.xminFahrenheit = xminFahrenheit [c(-6,-7)]
)
