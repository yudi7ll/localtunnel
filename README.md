Usage

```sh
docker run -dt --net host --name localtunnel -e LT_PORT=80 -e LT_SUBDOMAIN=anjay yudi7ll/localtunnel
```
will run at https://[LT_SUBDOMAIN].loca.lt or https://anjay.loca.lt

Environment variable
- LT_PORT (required): The local HTTP port
- LT_SUBDOMAIN: Use this subdomain if available


