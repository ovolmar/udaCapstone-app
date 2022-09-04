#!/usr/bin/env python
# -*- coding: utf-8 -*-
# pylint: disable=no-member
from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return 'Capstone Web App with Python Flask!'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)