# Use an official Python runtime as a parent image
FROM python:2.7-slim
WORKDIR /home/hpcap/app
ADD . /home/hpcap/app
RUN pip install --trusted-host pypi.python.org Flask
ENV NAME World
CMD ["python", "app.py"]
