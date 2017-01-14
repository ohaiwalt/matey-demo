# matey-demo

Prometheus demo in a test kitchen box

`node-exporter` doesn't work with the Docker cookbook for unknown reasons. I didn't delve further into it. Simple workaround for the purposes of this demo is to converge the box, and then login and run the commented Docker command to bring the `node-exporter` online.
