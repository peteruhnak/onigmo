# onigmo
[![Build Status][travis-badge]][travis] [![Coverage Status][coveralls-badge]][coveralls]

Pharo bindings for [Onigmo](https://github.com/k-takata/Onigmo) regular expression library.

Windows Note: for whatever reason Pharo can read only library compiled by nmake (see Onigmo compilation instructions).

## Installation

```smalltalk
Metacello new
	baseline: 'Onigmo';
	repository: 'github://peteruhnak/onigmo/repository';
	load
```

The necessary FFI library libonigmo.(dll|so) will be downloaded automatically upon installation.

[travis-badge]: https://travis-ci.org/peteruhnak/onigmo.svg?branch=master
[travis]: https://travis-ci.org/peteruhnak/onigmo
[coveralls-badge]: https://coveralls.io/repos/github/onigmo/pharo-sentry/badge.svg?branch=master
[coveralls]: https://coveralls.io/github/peteruhnak/onigmo?branch=master
