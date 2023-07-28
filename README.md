# webapp_monitoring
webapp_monitoring

# prerequisites:
- EC2 Windows instance [IaC]
- Docker engine and Docker Compose [https://repost.aws/questions/QUXvVlG77wQYeuHESK3C_CTg/ec2-windows-server-integrated-with-docker-linux]
- Python3 + Flask 
`Flask is used for developing web applications using python, implemented on Werkzeug and Jinja2. Advantages of using Flask framework are: There is a built-in development server and a fast debugger provided. Lightweight.`
- Copy/Clone files to run Docker Compose for app and logstash


# Docker Compose usage
- `docker-compose up [-d]`

# Docker Usage:
- `docker build .`
- `docker run <image_id>`

# Python Usage:
- `python3 main.py`

# Prometheus:
`http://localhost:9090/`

# Webapp:
`http://localhost:4444`

# Troubleshooting
- Test target (Prometheus): `curl -v http://127.0.0.1:4444/metrics`

Author: goldver@gmail.com | Michael Vershinin
