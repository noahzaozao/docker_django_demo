# docker_django_demo

### PreRequirements

- docker installed

### Build docker

```
docker-compose build
```

### Run docker

```
docker-compose up -d
docker exec -i docker_django_demo_web_1 bash -c 'python manage.py collectstatic'
```

### Stop & remove docker

```
docker-compose stop
docker-compose rm -f
```
