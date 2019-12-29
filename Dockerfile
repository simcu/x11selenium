FROM ringcentral/chrome-vnc
RUN apt update && apt install python3-pip language-pack-zh-hans fonts-arphic-uming -y && apt clean
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt
ENV PYTHONIOENCODING utf-8
ENV DISPLAY=:99

