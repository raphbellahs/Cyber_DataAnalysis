# Malware Analysis NER Dataset & Environment

This repository contains a Named Entity Recognition (NER) dataset for malware analysis along with a containerized Jupyter environment for data analysis.

## Dataset Overview

The dataset contains annotated text from malware analysis reports with the following entity types:
- `Malware`: Names of malware families (e.g., SpyNote, EventBot, FinFisher)
- `Organization`: Organization names
- `System`: Operating systems and platforms
- `Indicator`: Technical indicators like file paths, URLs, hashes
- `Vulnerability`: Known vulnerabilities

Located in `notebooks/data/mitre/`:
- `train.txt`: Training dataset
- `valid.txt`: Validation dataset
- `test.txt`: Test dataset

## Development Environment

The project uses Docker to create a reproducible analysis environment with:
- JupyterLab/Notebook
- PySpark
- Python data science packages (pandas, scikit-learn, numpy, matplotlib, seaborn)
- spaCy with English language model

### Prerequisites
- Docker
- Docker Compose

### Setup & Running

1. Clone this repository:

```bash
git clone <repository-url>
```

2. Start the environment:

```bash
docker compose up
```

3. Access JupyterLab at http://localhost:8888

### Project Structure

- `notebooks/`: Contains Jupyter notebooks for data analysis and model training.
- `notebooks/data/`: Contains the dataset files.
- `Dockerfile`: Defines the Docker image configuration.
- `docker-compose.yml`: Defines the Docker Compose configuration for the environment.
- `start-notebook.sh`: The startup script for JupyterLab.



## Analysis Environment Details

The environment includes:
- Apache Spark with Python support
- Jupyter Notebook server running on port 8888
- Mounted notebooks directory for persistence
- Pre-installed Python data science stack
- spaCy NLP library with English language model

## Usage

1. The Jupyter environment will be available at `http://localhost:8888`
2. Notebooks are persisted in the `notebooks/` directory
3. Use `ner_analysis.ipynb` to start analyzing the NER dataset
4. PySpark is configured and ready to use for large-scale processing

## Security Note

The Jupyter server is configured without authentication for development purposes. For production use, please enable authentication by modifying `start-notebook.sh`.