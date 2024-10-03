[
  {
    "name": "grocery-app",
    "image": "${docker_image_url_django}",
    "essential": true,
    "cpu": 10,
    "memory": 512,
    "portMappings": [
      {
        "containerPort": 8000,
        "protocol": "tcp"
      }
    ],
    "command": ["gunicorn", "-w", "3", "-b", ":8000", "groceryhome.wsgi:application"],
    "environment": [],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-group": "/ecs/grocery-app",
        "awslogs-region": "${region}",
        "awslogs-stream-prefix": "grocery-app-log-stream"
      }
    }
  }
]