# Sidecar-narc ![Build Status Image](https://travis-ci.org/nanobox-io/nanobox-sidecar-narc.svg)

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