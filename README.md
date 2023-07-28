# webapp_monitoring
webapp_monitoring

# prerequisites:
- EC2 Windows instance [IaC]
- Docker engine and Docker Compose [https://repost.aws/questions/QUXvVlG77wQYeuHESK3C_CTg/ec2-windows-server-integrated-with-docker-linux]
- Python3 + Flask 
`Flask is used for developing web applications using python, implemented on Werkzeug and Jinja2. Advantages of using Flask framework are: There is a built-in development server and a fast debugger provided. Lightweight.`
- Monitoring (example: https://dev.to/camptocamp-ops/testing-application-monitoring-locally-with-a-docker-composition-47hn)
- Copy/Clone files to run Docker Compose for app and logstash


# Docker Compose usage
- `docker-compose up [-d]`

# Docker Usage:
- `docker build .`
- `docker run <image_id>`

# Python Usage:
- `python3 main.py`

# Prometheus:
- http://localhost:9090/
`graph: {job="view"}`

# Grafana
- http://localhost:3000/
- U/P "admin/admin"
- http://localhost:3000/explore?orgId=1&left=%5B%22now-1h%22,%22now%22,%22Prometheus%22,%7B%22exemplar%22:true,%22expr%22:%22view_total%22,%22requestId%22:%22Q-56f84b4f-be36-4fcc-b76b-a75e3c70b51c-0A%22%7D%5D

# Webapp:
`http://localhost:5000`

# Troubleshooting
- Test target (Prometheus): `curl -v http://127.0.0.1:5000/metrics`

Author: goldver@gmail.com | Michael Vershinin
