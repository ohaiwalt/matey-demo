# matey-demo

Prometheus demo in a test-kitchen box

`node-exporter` doesn't work with the Docker cookbook for unknown reasons. I didn't delve further into it. Simple workaround for the purposes of this demo is to converge the box, and then login and run the commented Docker command to bring the `node-exporter` online.

With this test-kitchen box, you can find:

[Prometheus](http://192.168.33.33:9090) at port 9090  
[Alertmanager](http://192.168.33.33:9093) at port 9093  
[Grafana](http://192.168.33.33:3000) at port 3000  
[Mysqld Exporter](http://192.168.33.33:9104/metrics) at port 9104  
[Node Exporter](http://192.168.33.33:9100/metrics) at port 9100  
