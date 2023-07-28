import os

from flask import Flask, request
from markupsafe import escape

app = Flask(__name__)

@app.route('/')
def hello():
    name = request.args.get("name", "World")
    return f'Hello, {escape(name)}!'


if __name__=="__main__":
    app.run(host=os.getenv('IP', '0.0.0.0'),  # https://stackoverflow.com/questions/7023052/configure-flask-dev-server-to-be-visible-across-the-network
            port=int(os.getenv('PORT', 4444)))
