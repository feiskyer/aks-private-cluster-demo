# Deploy DNS Server (bind) in Kubernetes cluster

## Configurations

The following options have been configured in the docker image:

```conf
zone "azmk8s.io" {
    type forward;
    forwarders {
        168.63.129.16;
    };
};

options {
    // default max-ncache-ttl 10800 seconds (3 hours) is too long.
    max-ncache-ttl 15;

    // other options
    ...
};
```

## Deploy

```sh
kubectl apply -f dns-server.yaml
```

## Limitations

Only UDP protocol is supported (dual protocol is not supported yet in Kubernetes Service).
