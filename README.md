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
2. Install other slates: `slate install NAME`
3. Run the project: `slate run`

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

TODO
------------

* Linux
* Docker
