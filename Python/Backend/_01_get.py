from fastapi import FastAPI

app = FastAPI()

@app.get("/")
async def root():
    return "Root request example"

@app.get("/user")
async def user():
    return {"user_ID" : "user_name"}

@app.get("/email")
async def email():
    return {"user_ID" : "email"}