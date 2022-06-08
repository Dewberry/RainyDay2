FROM osgeo/gdal:ubuntu-full-3.4.2

RUN apt-get update && \
    apt-get install -y python3-pip python3-rtree s3fs &&\
    rm -rf /var/lib/apt/lists/*   

ADD . /app
WORKDIR /app

RUN apt-get update && \
    apt-get install -y build-essential python3-pip python3-rtree s3fs git libkrb5-dev && \
    rm -rf /var/lib/apt/lists/* && \
    pip3 install rasterio --no-binary rasterio && \
    pip3 install -r requirements.txt && \
    pip3 install -U black  && \
    pip install numpy==1.22.4 