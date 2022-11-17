FROM ubuntu:20.04

RUN apt-get update && apt-get install -y wget lz4 git unzip g++ make uvicorn python3-pip

COPY . /opt/service

RUN python3 -m pip install fastapi lz4 pyautogui pyperclip

CMD ["uvicorn", "main:app", "--port=8000"]

EXPOSE 8000


