# Kibana HA bug...

If we have more than one replica of a kibana instance, we get stuck in a login
loop - i.e. we can't login.

To reproduce, simply run `./run_me.sh` and follow the instructions.

You'll need `minikube` and at least 4 CPU cores and 8Gb of RAM free...

