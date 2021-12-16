import os
import click

from flask import Flask, g
from flasgger import Swagger

from config import config


def create_app(config: str) -> object:
    app = Flask(__name__)
    app.config.from_object(config)
    Swagger(app)

    @app.route("/")
    def home():
        return "This is Shopping API"

    return app

cfg = config['default']
app = create_app(cfg)
db = PostgresqlDB(cfg).connect()


@app.cli.command()
@click.option("--module")
def test(module):
    import unittest
    import importlib

    if module:
        test = importlib.import_module(module)
        tests = unittest.TestLoader().loadTestsFromModule(test)
    else:
        tests = unittest.TestLoader().discover("tests")

    unittest.TextTestRunner(verbosity=2).run(tests)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
