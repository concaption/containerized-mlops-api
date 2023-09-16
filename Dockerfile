FROM python:3.8

COPY ./requirements.txt /webapp/requirements.txt

WORKDIR /webapp

RUN pip install -r requirements.txt

COPY webapp /webapp

ENTRYPOINT [ "uvicorn" ]

CMD [ "main:app", "--host", "0.0.0.0", "--port", "8000" ]