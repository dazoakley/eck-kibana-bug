# Kibana bug...

You can't access kibana on ECK 0.9.0-rc3 via:

- port-forward to the kibana pod (port 5601)
- port-forward to the kibana service (port 5601)
- the ingress

To reproduce, simply run `./run_me.sh` and follow the instructions.

You'll need `minikube` and at least 4 CPU cores and 8Gb of RAM free...

