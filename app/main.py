from fastapi import FastAPI

app = FastAPI()

@app.get('/')
def greeting():
    return {'message': 'Ну шо ты там, голова?'}

@app.get('/two_integers_sum')
def get_two_integers_sum(x: float, y: float):
    return {'sum': x + y}
