import tkinter


def update_label(*agrs):
	var_label.set(var_entry.get())

app = tkinter.Tk()
app.geometry("600x500")
app.title("Interaction")


var_label = tkinter.StringVar()
label = tkinter.Label(app, textvariable=var_label)

var_entry = tkinter.StringVar()
var_entry.trace("w", update_label)
entry = tkinter.Entry(app, textvariable=var_entry)

entry.pack()
label.pack()


# La boucle principal
app.mainloop()