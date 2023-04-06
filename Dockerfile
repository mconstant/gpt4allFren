FROM python

COPY . .

RUN apt-get update

RUN apt-get install cmake -y

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

ENTRYPOINT ["/bin/bash", "-c", "python main.py"]