#!/usr/bin/env bash

echo
echo "************************************************************"
echo "STARTING httpd"
echo "************************************************************"
echo

# replace current shell with original httpd-alpine's entrypoint
exec /usr/local/bin/httpd-foreground
