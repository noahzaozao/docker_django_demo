FROM python:3.5.5

#RUN rm /etc/apt/sources.list
#ADD container/sources.list /etc/apt/sources.list
RUN apt-get -y update

ADD requirements.txt /
RUN pip install --no-cache-dir -r requirements.txt -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

RUN mkdir -p /usr/src/app
ADD . /usr/src/app
WORKDIR /usr/src/app

ADD container/entrypoint.sh /root/entrypoint.sh
RUN chmod +x /root/entrypoint.sh
ENTRYPOINT ["/root/entrypoint.sh"]
