from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<h1>Hello, Divyanshu!</h1>"

@app.route("/about")
def about():
    return render_template("index.html")

@app.route("/contact")
def contact():
    return "<h1>Contact</h1>"

app.run(debug=True)