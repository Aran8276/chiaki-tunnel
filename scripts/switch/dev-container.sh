#!/bin/bash

cd "`dirname $(readlink -f ${0})`/../.."

podman run --rm \
	-v "`pwd`:/build/chiaki" \
	-w "/build/chiaki" \
	-it \
	quay.io/thestr4ng3r/chiaki-build-switch:v3 \
	/bin/bash
