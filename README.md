# Sidecar-narc [![Build Status Image](https://api.github.com/mu-box/microbox-docker-sidecar-narc/actions/workflows/ci.yaml/badge.svg?branch=main)](https://github.com/mu-box/microbox-docker-sidecar-narc//actions)

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
