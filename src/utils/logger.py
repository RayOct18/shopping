import os
import logging
from logging.handlers import RotatingFileHandler


def set_logger(app: object, root: str = "logs") -> None:
    os.makedirs(root, exist_ok=True)

    formatter = logging.Formatter(
        "[%(asctime)s][%(filename)s:%(lineno)d][%(levelname)s][%(thread)d] - %(message)s"
    )
    handler = RotatingFileHandler(
        os.path.join(root, "app.log"), maxBytes=1024000, backupCount=10
    )
    handler.setFormatter(formatter)
    app.logger.addHandler(handler)
