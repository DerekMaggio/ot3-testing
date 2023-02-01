#!/usr/bin/env bash
docker run \
  --rm \
  -u `id -u`:`id -g` \
  -v ${PWD}/mermaid:/data \
  ghcr.io/mermaid-js/mermaid-cli/mermaid-cli \
  --input mindmap.mmd \
  --output mindmap.png \
  --backgroundColor white

mkdir -p images
mv mermaid/mindmap.png images/mindmap.png
