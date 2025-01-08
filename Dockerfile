# Dockerfile
FROM apache/spark-py

USER root

# Install python dependencies
RUN pip3 install jupyter notebook pandas scikit-learn numpy matplotlib seaborn pyspark scipy spacy
RUN python3 -m spacy download en_core_web_sm


# Create directory for notebooks
RUN mkdir -p /opt/spark/notebooks
WORKDIR /opt/spark/notebooks

# Copy and fix the startup script
COPY start-notebook.sh /opt/spark/start-notebook.sh
RUN dos2unix /opt/spark/start-notebook.sh || true && \
    chmod +x /opt/spark/start-notebook.sh

# Expose Jupyter port
EXPOSE 8888

# Set the command to run the script
CMD ["/bin/bash", "/opt/spark/start-notebook.sh"]