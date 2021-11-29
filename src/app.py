import os

from flask import Flask

from config import config
from utils.logger import set_logger


def create_app(config_type: str) -> object:
    app = Flask(__name__)
    app.config.from_object(config[config_type])
    set_logger(app)

    @app.route("/")
    def home():
        return "This is Shopping API"

    return app


if __name__ == "__main__":
    app = create_app("default")
    app.run(host="0.0.0.0", port=5000)
