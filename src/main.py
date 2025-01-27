from fastapi import FastAPI
import uvicorn
from config import Config

# Iinit app
app = FastAPI()

# Endpoints
@app.get("/")
def read_root():
    msg = "World " + Config.PYTHON_ENV
    return { "Hello": msg }


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8000)
