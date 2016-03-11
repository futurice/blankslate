Blank Slate
===========

For rapid project development.

What?
-----

Sets up HAProxy as a front for working with any number of backend technologies.
Need Python? Python3? Go? NodeJS? Ruby? All in the same project? No problem.

Usage
-----

Please skim `blankslate_FLAVOR.bash` before installing Blank Slate.

1. `./blankslate_FLAVOR` to install Blank Slate.
2. `./slate` for bootstrapping and adding slates
3. `./run` to start developing

Example
-------

For a full example project see `./slate example` for ideas.

Slates
------

Scripts for installables (aka. slates) are found in `slates/`.

Install slates with using `./slate`

Configuration
-------------

Slate configuration:

* `config/haproxy.cfg` (routing)
* `Procfile` (processes) 
* `.env` (environment variables)
* `packages` (optional: package dependencies (pip, npm, ...))

Installation
------------

Homebrew-based OSX setup.
```
./blankslate_osx.bash
```

Linux: TODO
Docker: TODO
