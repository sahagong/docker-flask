FROM centos:latest
COPY app.py /app/app.py
WORKDIR /app
RUN yum -y install epel-release \
           gcc \
           git \
           vim \
           which \
RUN yum clean all
RUN yum install -y python-pip
RUN yum install -y https://centos7.iuscommunity.org/ius-release.rpm
RUN yum install -y python36u python36u-pip python36u-devel
RUN /usr/bin/pip install flask
RUN /usr/bin/pip install flask_restful

RUN /bin/chmod +x /app/app.py

EXPOSE 5000
ENTRYPOINT ["/usr/bin/python", "/app/app.py"]
