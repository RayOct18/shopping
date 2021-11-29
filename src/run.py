import click
from app import create_app

app = create_app("default")


@app.cli.command()
@click.option("--module")
def test(module):
    import unittest
    import importlib

    if module:
        test = importlib.import_module(module)
        tests = unittest.TestLoader().loadTestsFromModule(test)
    else:
        root = f"api/tests"
        tests = unittest.TestLoader().discover(root)

    unittest.TextTestResult(verbosity=2).run(tests)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
