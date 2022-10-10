# NYC Taxis Dataset

https://www1.nyc.gov/site/tlc/about/tlc-trip-record-data.page

```bash
docker run \
  --network pp \
  -v $PWD/data:/data \
  -v $PWD/config:/config apachepinot/pinot:0.11.0 AddTable \
  -schemaFile /config/schema.json \
  -tableConfigFile /config/table.json \
  -exec -controllerHost pinot
```


```bash
docker run \
  --network pp \
  -v $PWD/data:/data \
  -v $PWD/config:/config apachepinot/pinot:0.11.0 LaunchDataIngestionJob \
  -jobSpecFile /config/job-spec.yml \
  -values controllerUri=http://pinot:9000
```
