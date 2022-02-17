FROM python:3.8.6
EXPOSE 8000
ADD requirements.txt .
RUN pip install -r requirements.txt
ADD . .
CMD uvicorn app:app --reload --port 8000 --host 0.0.0.0