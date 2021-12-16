import os
import logging
from logging.handlers import RotatingFileHandler


def set_logger(root: str = "logs") -> None:
    os.makedirs(root, exist_ok=True)

    formatter = logging.Formatter(
        "[%(asctime)s][%(filename)s:%(lineno)d][%(levelname)s][%(thread)d] - %(message)s"
    )
    handler = RotatingFileHandler(
        os.path.join(root, "app.log"), maxBytes=1024000, backupCount=10
    )
    handler.setFormatter(formatter)
    logging.getLogger().addHandler(handler)


class BaseConfig:
    DEBUG = False
    SWAGGER = {
        "title": "Shopping",
        "version": "0.0.0",
        "uiversion": 3,
        "openapi": "3.0.0",
    }
    DB = "shopping_db"
    DB_USERNAME = os.getenv("db_username", 'app_user')
    DB_PASSWORD = os.getenv("db_password", 'user_password')

    set_logger()


config = {"default": BaseConfig()}
