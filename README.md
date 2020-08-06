# APK-API

I couldn't find an API for the [APK package search](https://pkgs.alpinelinux.org/packages) so I started making one.

## `/api/v0/search?pkg=:package`

Will search for packages on the `edge` branch by the name of `:package`

```sh
$ curl https://apk-api.cfapps.io/api/v0/search?pkg=bash
[
  {
    "package": "bash",
    "version": "5.0.18-r0",
    "license": "GPL-3.0-or-later",
    "branch": "edge",
    "repo": "main",
    "arch": "x86_64",
    "maintainer": "Natanael Copa",
    "bdate": "2020-07-11 10:23:36"
  },
  {
    "package": "bash",
    "version": "5.0.18-r0",
    "license": "GPL-3.0-or-later",
    "branch": "edge",
    "repo": "main",
    "arch": "ppc64le",
    "maintainer": "Natanael Copa",
    "bdate": "2020-07-11 10:23:36"
  },
  {
    "package": "bash",
    "version": "5.0.18-r0",
    "license": "GPL-3.0-or-later",
    "branch": "edge",
    "repo": "main",
    "arch": "s390x",
    "maintainer": "Natanael Copa",
    "bdate": "2020-07-11 10:23:36"
  },
  {
    "package": "bash",
    "version": "5.0.18-r0",
    "license": "GPL-3.0-or-later",
    "branch": "edge",
    "repo": "main",
    "arch": "armv7",
    "maintainer": "Natanael Copa",
    "bdate": "2020-07-11 10:23:36"
  },
  {
    "package": "bash",
    "version": "5.0.18-r0",
    "license": "GPL-3.0-or-later",
    "branch": "edge",
    "repo": "main",
    "arch": "x86",
    "maintainer": "Natanael Copa",
    "bdate": "2020-07-11 10:23:36"
  },
  {
    "package": "bash",
    "version": "5.0.18-r0",
    "license": "GPL-3.0-or-later",
    "branch": "edge",
    "repo": "main",
    "arch": "armhf",
    "maintainer": "Natanael Copa",
    "bdate": "2020-07-11 10:23:36"
  },
  {
    "package": "bash",
    "version": "5.0.18-r0",
    "license": "GPL-3.0-or-later",
    "branch": "edge",
    "repo": "main",
    "arch": "aarch64",
    "maintainer": "Natanael Copa",
    "bdate": "2020-07-11 10:23:36"
  },
  {
    "package": "bash",
    "version": "5.0.18-r0",
    "license": "GPL-3.0-or-later",
    "branch": "edge",
    "repo": "main",
    "arch": "mips64",
    "maintainer": "Natanael Copa",
    "bdate": "2020-07-11 10:23:36"
  }
]
```
