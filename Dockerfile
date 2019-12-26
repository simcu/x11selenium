FROM ringcentral/chrome-vnc
RUN apt update && apt install python3-pip language-pack-zh-hans fonts-arphic-uming -y && apt clean
COPY requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt
ENV PYTHONIOENCODING utf-8
ENV SCREEN=1600x900
ENV DISPLAY=:99
CMD Xvfb :99 -screen 0 ${SCREEN}x16

