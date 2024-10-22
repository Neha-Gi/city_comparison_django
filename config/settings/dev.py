import environ
from .base import * 

env = environ.Env(DEBUG=(bool,True))
environ.Env.read_env(str(BASE_DIR / ".env"))


SECRET_KEY = env.str("SECRET_KEY")
DEBUG = env.bool("DEBUG")
# SECURITY WARNING: don't run with debug turned on in production!

ALLOWED_HOSTS = ["*"]

THIRD_PARTY_APPS = ["django_extensions",
    #EXTERNAL APPS
]

INSTALLED_APPS = [INSTALLED_APPS + THIRD_PARTY_APPS
]

DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql+psycopg2",
        "NAME": env.str("DB_NAME"),
        "USER" : env.str("DB_USER"),
        "PASSWORD": env.str("DB_PWD"),
        "PORT": env.str("DB_PORT"),
        "HOST": env.str("DB_HOST"),
    }
}