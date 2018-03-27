# Sidecar-narc [![Build Status Image](https://api.travis-ci.org/nanobox-io/nanobox-docker-sidecar-narc.svg?branch=master)](https://travis-ci.org/nanobox-io/nanobox-docker-sidecar-narc/)

example payload:
```
{
  "uid": "component.name",
  "logvac": "192.168.1.20",
  "logfiles": [
    {
      "path": "/var/log/nginx/error.log",
      "prefix": "nginx[error]"
    }
  ]
}
```
