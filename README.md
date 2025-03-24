# nanadev 🏠🍽️

## Getting Started

[![Open in GitHub Codespaces](https://github.com/codespaces/badge.svg)](https://codespaces.new/Japan7/nanadev)

1. Open this project in GitHub Codespaces (badge above) or in VS Code Dev Container (4-core machine is recommended)
2. Wait for everything to be setup
3. When prompted, open the workspace ([`workspace.code-workspace`](workspace.code-workspace))
4. Setup the local settings for each project, following their respective `README.md` and the next section

## Local Settings

### nanapi

```py
## Meilisearch
MEILISEARCH_HOST_URL = 'http://meilisearch:7700'
```

For references:

- Gel DSN: `gel://admin:password@gel/main`
- Gel Web UI: forwarded to http://localhost:5656/ui (credentials: `admin/password`)

### nanachan

Run nanapi and create a client for nanachan:

```sh
curl -X POST http://username:password@127.0.0.1:8000/clients/ --json '{"username": "botname", "password": "verysecure"}'
```

Then,

```py
## nanapi
NANAPI_URL = 'http://127.0.0.1:8000'
NANAPI_PUBLIC_URL = NANAPI_URL  # or the port forward url on codespace
NANAPI_CLIENT_USERNAME = 'botname'
NANAPI_CLIENT_PASSWORD = 'verysecure'

## Redis
REDIS_HOST = 'redis'
```
