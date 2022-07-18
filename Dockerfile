FROM osgeo/gdal:ubuntu-full-3.4.2

ADD . /app
WORKDIR /app

RUN apt-get update && \
    apt-get install -y python3-pip && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install rasterio==1.3.0 --no-binary rasterio && \
    pip3 install -r requirements.txt && \
    pip3 install -U black