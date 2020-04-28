from flask import Flask

app = Flask(__name__)


@app.route("/wow")
def hello_world():
    return dict(ping="pong")
