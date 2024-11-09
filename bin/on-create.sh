#!/bin/sh -xe
[ -d nanapi ] || git clone git@github.com:Japan7/nanapi.git
[ -d nanachan ] || git clone git@github.com:Japan7/nanachan.git

edgedb --dsn edgedb://edgedb:edgedb@edgedb:5656 --tls-security insecure \
    instance link --overwrite nanapi --non-interactive
edgedb restore -I nanapi /edgedb.dump || true
edgedb project init --project-dir nanapi \
    --link --server-instance nanapi --non-interactive
