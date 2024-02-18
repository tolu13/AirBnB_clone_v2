#!/usr/bin/python3
""" AA script that starts a Flask web application
listening on 0.0.0.0, port 5000 """

from flask import Flask
from urllib.parse import unquote

app = Flask("__name__")

@app.route('/', strict_slashes=False)
def hello_hbnb():
    """ this return a string"""
    return ("Hello HBNB!")

@app.route('/hbnb', strict_slashes=False)
def hbnb():
    """ return a given string """
    return ("HBNB")

@app.route('/c/<text>', strict_slashes=False)
def c_route(text):
    """ return a given string """
    text = unquote(text.replace("_", " "))
    return ("C {}").format(text)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
