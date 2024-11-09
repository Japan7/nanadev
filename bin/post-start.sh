#!/bin/sh -xe
[ -d nanapi ] && uv --project nanapi sync --frozen
[ -d nanachan ] && uv --project nanachan sync --frozen
