#!/bin/bash -e
# Requires docker 17.05 or higher

# Build docker image to serve hcwiki
docker build \
	-t HC/hcwiki .

echo ""
echo "==================="
echo "  Build complete"
echo "==================="
echo ""
echo "You can now run hcwiki with the following command:"
echo "    docker run -d --rm -p <local port>:80 HC/hcwiki:latest"
echo ""
