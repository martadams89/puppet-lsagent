# LanSweeper Agent (For Linux)

#### Table of Contents

1. [Description](#description)
2. [Setup - The basics of getting started with lsagent](#setup)
    * [Beginning with lsagent](#beginning-with-lsagent)
3. [Usage - Configuration options and additional functionality](#usage)
4. [Limitations - OS compatibility, etc.](#limitations)
5. [Development - Guide for contributing to the module](#development)

## Description

lsagent is the daemon deployed to clients/nodes connecting back to a central LanSweeper Management Server.

This module installs the package(s) require for the LanSweeper Agent and enables and starts the daemon/service.

## Setup

### Beginning with lsagent

`include lsagent` should be enough to get the daemon installed.

### Recommended base parameters

```
class { 'lsagent':
      lsagent_server_hostname      => $lsagent_server_hostname,
      lsagent_server_port          => $lsagent_server_port,
      lsagent_server_version       => $lsagent_server_version,
      lsagent_http_proxy_hostname  => $lsagent_http_proxy_hostname,
      lsagent_http_proxy_port      => $lsagent_http_proxy_port
}
```

## Limitations

This module has been tested on CentOS 7 and OEL 7-8.

This module was developed to install the lsagent service to enable deployment of the lsagent service across linux at a large scale

## Development

This repo was forked from ctilley1407 after realising certs were embedded in to the script, and this repo is an attempt to variablize them.

Development on this module is welcome to better support RHEL base OS. Currently, there is no clean way to deploy the lsagent across linux distributions.
