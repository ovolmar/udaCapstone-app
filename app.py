#!/usr/bin/env python
# -*- coding: utf-8 -*-
# pylint: disable=no-member
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html', title="Deployment Version:---->", color="BLUE 1.0")

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)