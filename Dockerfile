FROM python:3.9.9

COPY . /app
WORKDIR /app

RUN python -m venv /opt/venv

RUN /opt/venv/bin/pip install --upgrade pip && /opt/venv/bin/pip install -r requirements.txt
RUN chmod +x /app/entrypoint.sh

EXPOSE 80

ENTRYPOINT ["/app/entrypoint.sh"]

