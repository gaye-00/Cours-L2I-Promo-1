from turtle import *
width(10)
color('red')
for i in range(3):
	forward(300)
	left(120)
	for i in range(3):
		color('green')
		forward(200)
		left(120)
		for i in range(3):
			color('yellow')
			forward(100)
			left(120)

exitonclick()