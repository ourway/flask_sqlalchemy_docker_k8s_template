from flask import Flask
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)


@app.route("/wow")
def hello_world():
    return dict(ping="pong")
