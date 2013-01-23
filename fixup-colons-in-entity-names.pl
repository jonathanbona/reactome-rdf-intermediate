#!/bin/sh
sed -E 's/^([a-z]+:[a-zA-Z]+):/\1./' output/reactome43.ttl > output/reactome43a.ttl
