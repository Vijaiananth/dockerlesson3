FROM python:3.7.3-stretch

## Complete Step 1:
WORKDIR /app

## Complete Step 2:
COPY . app.py /app/

## Complete Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013

RUN pip install --upgrade pip &&\
    pip install -r requirements.txt

## Complete Step 4:
Expose 80

## Complete Step 5:
## CMD ["flask", "app.py"]
ENTRYPOINT FLASK_APP=app.py flask run --host=0.0.0.0