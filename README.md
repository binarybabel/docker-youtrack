# YouTrack [v2017.4.37933] – Docker Image

**[Issue Tracking and Project Management Tool](https://www.jetbrains.com/youtrack/)**

[![Latestver](https://lv.binarybabel.org/catalog-api/youtrack/latest.svg?v=2017.4.37933)](https://github.com/binarybabel/docker-youtrack/releases)

**_Docker project maintained by BinaryBabel — Not an official JetBrains product release._**

This image is rebuilt automatically when new versions of YouTrack are released, through the use of webhooks provided by the [Latestver](https://lv.binarybabel.org) dependency tracking tool, a [BinaryBabel OSS Project](https://github.com/binarybabel/latestver#readme).

## Usage

By default the application will be available from `http://localhost:8080`

**Running Directly**

```
# docker run -p 8080:8080 -v $(pwd):/youtrack-data binarybabel/youtrack
```

**Using** `docker-compose.yml`

```
version: '2'
services:
  app:
    image: binarybabel/youtrack
    volumes:
      - .:/youtrack-data
    ports:
      - "8080:8080"

```

```
# docker-compose up
```

## Configuration

Environmental Variables

* __JAVA\_XMX__
  * default: '1024m' - amount of memory to allocate to Java

Volumes

* __/youtrack-data__
  * YouTrack database, attachments, logs, etc.
