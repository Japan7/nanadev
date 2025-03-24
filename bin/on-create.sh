#!/bin/sh -xe
[ -d nanapi ] || git clone https://github.com/Japan7/nanapi.git
[ -d nanachan ] || git clone https://github.com/Japan7/nanachan.git

gel --dsn gel://admin:password@gel:5656 --tls-security insecure \
    instance link --overwrite nanapi --non-interactive
gel restore -I nanapi /gel.dump || true
gel project init --project-dir nanapi \
    --link --server-instance nanapi --non-interactive
