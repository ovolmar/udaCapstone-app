#!/usr/bin/env python
# -*- coding: utf-8 -*-
# pylint: disable=no-member
from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def index():

    return render_template('index.html', title="Deployment:---->", color="blue")
    #return 'Project Capstone Developed by: Osvaldo Volmar!'


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080, debug=True)