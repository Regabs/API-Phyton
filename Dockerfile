FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY api.py /etc/api.py

RUN chmod +x api.py

EXPOSE 8000

CMD ["/path/api.py"]
ENTRYPOINT ["python"]