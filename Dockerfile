FROM python:3.9

COPY . /app
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["/app/api.py"]
ENTRYPOINT ["python"]