#!/bin/bash

ps -Cruby -opid,rss,cmd --no-headers | awk '
BEGIN{
sum=0;
}

{sum += $2; print $0}

END{print "Total memory usage: "(sum/1024.0/1024.0)" Gb"; }
'
