FROM node:14-buster-slim as FrontBuilder
ARG VUE_APP_BASE_API
ARG VUE_APP_BASE_GEOSERVER_URL
COPY ./src/FrontEnd /root/FrontEnd/
WORKDIR /root/FrontEnd
RUN npm install -S && npm run build

FROM python:3.8.13
MAINTAINER Rainnalv

RUN mkdir /root/DeepGIS
# 源码文件
COPY ./src/BackEnd /root/DeepGIS/BackEnd/
COPY --from=FrontBuilder /root/FrontEnd/dist /root/DeepGIS/FrontEnd/
# 入口程序
COPY entrypoint.sh /
# python-GDAL包
COPY GDAL* /

RUN pip3 install /GDAL-3.4.1-cp38-cp38-manylinux_2_5_x86_64.manylinux1_x86_64.whl \
    && pip3 install -r /root/DeepGIS/BackEnd/requirements.txt \
    && rm -f /GDAL* \
    && chmod +x /entrypoint.sh \
    && rm -rf ~/.cache/pip/*
