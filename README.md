Blank Slate
===========

A programmable foundation for complex projects.

Usage
-----

1. Install Blank Slate: `pip install blankslate`
2. Install slates:
  * `slate install NAME`
  * `slate install github:me/myslate`
3. Run your project: `slate run`

Slates
------

Slates (slate.sh) are simple scripts, installed to `./slates/`.
* commands.sh:call() adds logging to calls
* Blank Slate environment variables $BS* available

```bash
#!/bin/bash
set -e
source $BSDIR/scripts/commands.sh
call echo "Hello from my awesome script"
```

Examples
--------

Browse [ready-made slates](https://github.com/futurice/blankslate/tree/master/blankslate/slates/).

Bootstrap the base requirements `slate install bootstrap` and then `slate install EXAMPLE_NAME`.

* [example](https://github.com/futurice/blankslate/tree/master/blankslate/slates/example)
  * [HAProxy](http://www.haproxy.org/) for simultaneously working with a number of backend technologies (python3, python3, pypy5, nodejs, golang).
* [example-ansible](https://github.com/futurice/blankslate/tree/master/blankslate/slates/example-ansible)
  * Use [Ansible](https://www.ansible.com/) for task automation

Docker integration
------------------

Example [Dockerfile](https://github.com/futurice/blankslate/blob/master/Dockerfile)
```bash
docker build --rm --tag blankslate .
docker run --rm -it -p 8000:9000 --name blankslate blankslate
```

Project Templates
-----------------

The `example` template:

* `config/haproxy.cfg` (routing)
* `Procfile` (processes) 
* `.env` (environment variables)
* `packages` (optional: package dependencies (pip, npm, ...))
* `run.sh` (optional: use something else than [Process Boy](https://github.com/futurice/procboy))

