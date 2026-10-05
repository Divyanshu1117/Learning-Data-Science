from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<h1>Hello, Divyanshu!</h1>"

@app.route("/about")
def about():
    return "<h1>About</h1>"

app.run(debug=True)