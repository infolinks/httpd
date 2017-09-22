# httpd

Simple & reusable base image for simple [httpd](https://httpd.apache.org/)
servers.

This image will start an `httpd` instance with sensible defaults yet
fully extensible. Its extension points are:

* Any file conforming to `/etc/httpd/conf.d/*.conf` will automatically
  be picked up.

* Access log written under `/var/log/httpd` - you should collect those
  using a logging side-car agent, such as [loggly-sidecar](https://github.com/infolinks/loggly-sidecar).

* Trusted proxies that can provide `x-forwarded-for` header can be added
  to `/var/www/trusted-proxies`.

## Contributions

Any contribution to the project will be appreciated! Whether it's bug
reports, feature requests, pull requests - all are welcome, as long as
you follow our [contribution guidelines for this project](CONTRIBUTING.md)
and our [code of conduct](CODE_OF_CONDUCT.md).
