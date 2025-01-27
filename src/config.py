import os
from dotenv import load_dotenv
load_dotenv()


class Config:
    PYTHON_ENV = os.getenv("PYTHON_ENV")
