# Nginx Reproxy testing


## Setup



Setup authenticator 
```
plackup -p authenticator.psgi -p 5000
```

Setup json 
```
plackup -p jsonrpc.psgi -p 5001
```

Launch nginx with nginx.conf


Make request
```
[ec2-user@localhost]~/gitrepos/nginx-reproxy-testing% ./sample_request 
{
    "authorization_header" : "Bearer nhaya",
    "name" : "nhayashi",
    "request_body" : "{  \"id\": 123456, \"foo\": \"var\" }"
}

```
