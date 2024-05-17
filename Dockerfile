FROM python:3.12

WORKDIR /app
COPY . /app

RUN pip install -U pip uv
RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org --no-cache-dir -r requirements.txt

CMD ["bash", "surf-tg.sh"]
