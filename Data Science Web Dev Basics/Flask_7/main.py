from flask import Flask, jsonify

app = Flask(__name__)

@app.route("/")
def hello_world():
    data = {"Output": 45, "Accuracy": 98.55}
    return jsonify(data), 200

app.run(debug=True)