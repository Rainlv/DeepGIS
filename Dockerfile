FROM python:3.8.13
MAINTAINER Rainna
# 源码文件
COPY ./src/ /root/DeepGIS/
# 入口程序
COPY entrypoint.sh /
# python-GDAL包
COPY GDAL* /

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && apt update && apt -y install nodejs && apt-get clean
RUN pip3 install /GDAL-3.4.1-cp38-cp38-manylinux_2_5_x86_64.manylinux1_x86_64.whl && pip3 install -r /root/DeepGIS/BackEnd/requirements.txt && rm -f /GDAL*
RUN cd /root/DeepGIS/FrontEnd && npm install -S && npm cache clean --force && chmod +x /entrypoint.sh