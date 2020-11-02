# docker_ab (juniormichieletto/docker_ab)

Docker definition to small docker image with apache bench (aka ab).

Image uncompressed with less than 7mb.

## Sample usage

```bash
    docker run --rm juniormichieletto/docker_ab -n 100 -c 10 https://www.google.com/
```

Note that we dont neeed type "ab" since this is in dockerImage entrypoint.

### Simple command explanation

 ```bash
    docker run <docker_run_options> juniormichieletto/docker_ab <apache_ab_options>
 ```

- "docker run" : command to run some container
- "--rm" : run option to remove the container after finish benchmark
- "juniormichieletto/docker_ab": container image name
- "-n 100 -c 10 https://www.google.com/": ab options, requesting 100 requests in 10 concurrent threads using a simple "get" to URL "https://www.google.com/"

> To see more options take a look at [Apache HTTP server benchmarking tool](https://httpd.apache.org/docs/2.4/programs/ab.html)
> or use the apache_ab_options **-help**

## Important tip

If your are using to test against other local docker container running locally, make sure that both are in the same network.

- Open to contributions
