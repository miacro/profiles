#!/bin/sh
{
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-nyc1.digitalocean.com/
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-nyc2.digitalocean.com/
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-nyc3.digitalocean.com/
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-ams2.digitalocean.com/
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-ams3.digitalocean.com/
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-sfo1.digitalocean.com/
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-sfo2.digitalocean.com/
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-sgp1.digitalocean.com/
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-lon1.digitalocean.com/
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-fra1.digitalocean.com/
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-tor1.digitalocean.com/
  curl -w "%{url_effective};%{time_connect}\n" -o /dev/null -s http://speedtest-blr1.digitalocean.com/
} | sort -t';' -k2

