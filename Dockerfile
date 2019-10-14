FROM python:3
ADD service_code.py /
CMD [ "python", "./service_code.py" ]
