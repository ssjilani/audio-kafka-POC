FROM continuumio/anaconda3

# Update and install dependencies
RUN apt-get update && apt-get install -y \
    libgl1-mesa-glx \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

RUN conda install -y numpy pandas \
    && conda install -y -c conda-forge librosa \
    && conda install -y -c conda-forge jupyterlab ipython \
    && pip install ultralytics opencv-python-headless \
    && pip install confluent-kafka

# Set working directory
WORKDIR /opt/notebooks

# Expose Jupyter Lab port
EXPOSE 8888

# Default command 
CMD ["jupyter", "lab", "--ip", "0.0.0.0", "--port", "8888", "--no-browser", "--allow-root"]
