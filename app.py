from flask import Flask
from flask_restful import Resource, Api
from setting import MANAGER

app = Flask(__name__)
api = Api(app)

api.add_resource(MANAGER, '/')

if __name__ == '__main__':
    app.run(host="0.0.0.0", port = "5000" , debug=True)