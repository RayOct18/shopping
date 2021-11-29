import os

from flask import Flask
from flasgger import Swagger

from config import config
from utils.logger import set_logger


def create_app(config_type: str) -> object:
    app = Flask(__name__)
    app.config.from_object(config[config_type])
    set_logger(app)
    Swagger(app)

    @app.route("/")
    def home():
        return "This is Shopping API"

    return app
