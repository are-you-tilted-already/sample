FROM python:3.9

RUN apt-get update \        
     apt-get install -y git

RUN git clone https://github.com/are-you-tilted-already/sample.git

WORKDIR /sample/

RUN pip install --no-cache-dir --upgrade -r requirements.txt

CMD ["fastapi", "run", "app/main.py", "--port", "80"]
