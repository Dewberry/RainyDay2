# Docker Instructions

Use `docker-compose build && docker-compose up` to run **RainyDay2** in a docker container.

Please note that the default entrypoint included in the docker-compose files is `sleep 1d`. This is a convenience for development, and can be replaced with alternate entrypoints as desired.

To run **RainyDay2**, ensure source data and scripts are mounted. Once the container is running, open a shell (in the container) and call the following command:

```bash
#!/bin/bash

# Example syntax for running inside a container
SCRIPT=/app/Source/RainyDay_Py3.py
DATA=/app/Example/BigThompsonExample/BigThompson72hr_example-docker.sst
python $SCRIPT $DATA
```
