# Queue

This project shows how to connect with [Pika](http://pika.github.com/) to CloudAMQP and both publish and subscribe messages.

    $ pip install -r requirements.txt

## Broker

    docker run -d --hostname my-rabbit --name rabbit2 -p 8080:15672 -p 5672:5672 rabbitmq:3-management