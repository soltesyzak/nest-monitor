FROM python:3.13.1-slim

RUN --mount=type=bind,source=requirements.txt,target=/tmp/requirements.txt \
    pip install --requirement /tmp/requirements.txt

WORKDIR /root
COPY ./src /root/src
EXPOSE 8000
CMD ["fastapi", "run", "src", "--host", "0.0.0.0", "--port", "8000"]

# docker build --no-cache -t nest-monitor-build . 
# docker run -d -p 8000:8000 --name nest-monitor-app nest-monitor-build
