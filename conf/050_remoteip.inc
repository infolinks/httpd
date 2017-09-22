LoadModule remoteip_module modules/mod_remoteip.so
RemoteIPHeader X-Forwarded-For
RemoteIPProxiesHeader X-Forwarded-By
RemoteIPInternalProxyList /var/www/trusted-proxies
