FROM 3.11.8-bookworm

RUN apt update -y && apt install awscli -y

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt 

CMD ["python3","app.py"]