# My Personal Flask Web Application
This repository is a demonstration of my DevOps skills, showcasing the automation of infrastructure setup and deployment for a simple web application using Docker, Terraform, AWS, Jenkins, Prometheus, and Grafana.

**Note: This project is not intended for reuse in production environments or deployment. The focus is on demonstrating infrastructure automation rather than providing a fully functional application for others to use.**

## Project Structure
```
web_app/
├── Dockerfile
├── app
│   ├── app.py
│   ├── static
│   │   ├── css
│   │   │   └── styles.css
│   │   └── images
│   │       ├── Ben.png
│   │       ├── cloud.png
│   │       ├── favicon.ico
│   │       └── mountain.png
│   └── templates
│       └── index.html
├── requirements.txt
└── terraform
    ├── key_pair.tf
    ├── main.tf
    ├── provider.tf
    ├── s3_bucket.tf
    ├── scripts
    │   ├── install_grafana.sh
    │   ├── install_jenkins.sh
    │   ├── install_prometheus.sh
    │   └── install_web_app.sh
    ├── security_groups.tf
    └── variables.tf
```

## Infrastructure Overview
This Terraform project provisions the following infrastructure on AWS:

### EC2 Instances
- **Web App Instance**: Serves the web application in a Docker container.
- **Jenkins Server**: CI/CD, configured to trigger new builds when updates are made to the repository.
- **Prometheus Server**: Gathers metrics from the web app.
- **Grafana Server (WIP)**: Visualizes metrics from Prometheus.

### Security Groups
Each EC2 instance has its own security group, allowing access over specific ports:

- **Web App**: SSH (22), HTTP (80)
- **Jenkins**: SSH (22), HTTP (8080)
- **Grafana**: SSH (22), HTTP (3000)
- **Prometheus**: SSH (22), HTTP (9090)

### AWS S3 Bucket
An S3 bucket is created to store Jenkins artifacts.

## Technologies Used
- **Docker**: Containerizes the web application for easy deployment.
- **Terraform**: Automates infrastructure provisioning on AWS.
- **Jenkins**: CI/CD server to automate the build and deployment process.
- **Prometheus**: Used for metrics collection and monitoring.
- **Grafana**: Visualizes the metrics collected from Prometheus. (This is a WIP as I'm still learning).