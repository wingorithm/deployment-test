from fastapi import FastAPI

app = FastAPI()


@app.get("/")
async def root():
    return {"message": "Hello World"}

    
@app.get("/other")
async def root():
    return {"message": "Other Hello World"}