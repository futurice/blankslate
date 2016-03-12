Blank Slate
===========

A foundation for complex projects.

What?
-----

Sets up HAProxy as a front for working with any number of backend technologies.
Need Python? Python3? Go? NodeJS? Ruby? All in the same project? No problem.

Usage
-----

1. Install Blank Slate: `pip install blankslate`
2. Install slates:
  * `slate install NAME`
  * `slate install github:me/myslate`
3. Run your project: `slate run`

Slates
------

Slates (slate.sh) are plain scripts installation recipe that install under `./slates/`.

Example:
  * commands.sh:call() adds logging to calls
  * Blank Slate environment variables $BS* available

```bash
#!/bin/bash
set -e
source $BSDIR/scripts/commands.sh
call echo "Hello from my awesome script"
```

Example
-------

For a full example project see `slate install example` for ideas.

Configuration
-------------

Basic slate configuration:

* `config/haproxy.cfg` (routing)
* `Procfile` (processes) 
* `.env` (environment variables)
* `packages` (optional: package dependencies (pip, npm, ...))
* `run.sh` (optional: use something else than [Process Boy](https://github.com/futurice/procboy))

TODO
------------

* Linux
* Docker
