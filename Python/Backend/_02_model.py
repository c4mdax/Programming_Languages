from fastapi import FastAPI
from pydantic import BaseModel

class User(BaseModel):
    name:str
    email:str
    user_id:int
    
app = FastAPI()
users_list = [User(name="Angel", email="angel@example.com", user_id=1),
              User(name="Pan", email="pan@example.com", user_id=2),
              User(name="Tostada", email="tostada@example.com", user_id=3)
              ]
@app.get("/users")
async def users():
    return users_list

# Get user info from the user id
@app.get("/users/{user_id}")
async def users_id(user_id: int):
    users = filter(lambda user:user.user_id == user_id, users_list)
    try:
        return list(users)[0]
    except:
        return {"error" : "No se ha encontrado el usuario."}
 
