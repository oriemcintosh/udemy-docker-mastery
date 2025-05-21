# Assignment: DNS Round Robin

This assignment is to test DNS round robin on a Docker network to see how the containers operate.

## Commands Used

```bash
curl -fsSL https://elastic.co/start-local | sh

docker container run -it --rm --name wrist_rocky --network elastic-start-local_default rockylinux:9

docker run -d --network udemy_course --network-alias web_server httpd

docker container run -it --rm --name wrist_rocky --network udemy_course rockylinux:9

curl -v web_server
```

### Command Notes

I found the first command above from the documentation [here](https://www.elastic.co/guide/en/elasticsearch/reference/8.18/run-elasticsearch-locally.html).

I ended up leveraging the startup script and will need to review the [GitHub Repository](https://github.com/elastic/start-local) to understand what the scripts are doing and what is in the Dockerfiles.

For a simple DNS round-robin test, I ended up just launching two `httpd` containers with the same network alias and doing a `curl` with the verbose response flag on so that I could see the IP address of the destination host.
