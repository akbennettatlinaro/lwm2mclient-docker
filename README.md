# lwm2mclient-docker

```
#window 1 - leshan server
docker run --rm -p 5683:5683/udp -p 5684:5684/udp -p 5783:5783/udp -p 5784:5784/udp -p 8081:8080 -p 8082:8081 gebart/leshan

#window 2 - python client: https://github.com/akbennettatlinaro/lwm2mclient
#  https://github.com/akbennettatlinaro/lwm2mclient-docker
docker run -it --network host akbennett/lwm2mclient-docker

#open Chrome browse to http://localhost:8081
```
