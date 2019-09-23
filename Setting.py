#!/usr/bin/python
from flask_restful import Resource

class MANAGER(Resource):
    def get(self):
        return {'hello': 'world'}