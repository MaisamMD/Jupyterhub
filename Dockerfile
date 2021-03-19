FROM jupyterhub/jupyterhub:1.2.1
COPY requirements.txt /tmp/requirements.txt
RUN python3 -m pip install --no-cache -r /tmp/requirements.txt