from fastapi import FastAPI
from fastapi.responses import HTMLResponse


app = FastAPI()
#To init the uvicorn server: uvicorn [file_name] : [instance_name] --reload (for automatic actualization)
@app.get("/")
async def root():
    return "Hello!"

@app.get("/first")
async def first():
    return "This is the first get inside of /first"

@app.get("/second")
async def second():
    return "This is the second get inside of /second"

@app.get("/")
async def respone():
    return HTMLResponse("<h1>This is a HTML response</h1>")


