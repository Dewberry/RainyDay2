FROM osgeo/gdal:ubuntu-full-latest

RUN apt-get update && \
    apt-get install -y python3-pip python3-rtree s3fs &&\
    rm -rf /var/lib/apt/lists/*    


ADD . /app
WORKDIR /app
RUN pip install rasterio --no-binary rasterio && \
    pip install --upgrade numpy && \
    pip install -r requirements.txt