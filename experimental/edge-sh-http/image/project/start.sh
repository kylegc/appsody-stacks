#!/bin/sh

# Start a listener on port 80 to run service.sh
socat TCP4-LISTEN:80,fork EXEC:./service.sh