FROM python:3.8.6
EXPOSE 8008
ADD requirements.txt .
RUN pip install -r requirements.txt
ADD app.py .
CMD uvicorn app:app --reload --port 8080 --host 0.0.0.0