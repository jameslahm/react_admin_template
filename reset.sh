docker container stop react_admin_template
docker container rm react_admin_template
docker build -t react_admin_template:v1 .
docker run -d -p 8080:80 --name react_admin_template react_admin_template:v1
