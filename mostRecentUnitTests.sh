#!/bin/sh
gfind . -type f -printf '%Ts\t%p\n' | sort -r |ack --nocolor '.*(?<!UI)Test[s]*.swift'
