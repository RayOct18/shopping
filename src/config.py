class BaseConfig:
    DEBUG = False
    SWAGGER = {
        "title": "Shopping",
        "version": "0.0.0",
        "uiversion": 3,
        "openapi": "3.0.0",
    }


config = {"default": BaseConfig()}
