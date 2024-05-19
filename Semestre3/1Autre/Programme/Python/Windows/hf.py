import tkinter

def update_observer(*args):
	if var_radion.get():
		var_label.set("C'est un homme")
	else:
		var_label.set("C'est une femme")


app = tkinter.Tk()
app.title("Choisir !")
app.geometry("420x400")

var_radion = tkinter.IntVar()
var_radion.trace("w", update_observer)
r_homme = tkinter.Radiobutton(app, text="Homme", value=1, variable=var_radion)
r_femme = tkinter.Radiobutton(app, text="Femme", value=0, variable=var_radion)

var_label = tkinter.StringVar()
label_gender = tkinter.Label(app, textvariable=var_label)

r_homme.pack()
r_femme.pack()
label_gender.pack()

app.mainloop()