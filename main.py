from fastapi import FastAPI


app = FastAPI() 
# это инстанс приложения
# присваиваем значению APP ы


@app.get("/")
async def root():
    return {"message": "Hello World"}