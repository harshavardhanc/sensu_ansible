Ansible playbook for setting up Sensu for Monitoring

Sensu is an infrastructure and application monitoring and telemetry solution. Sensu provides a framework for monitoring infrastructure, service and application health


Requirements:

Minimum one machine for Sensu server: Ubuntu 16.04/14.04


What does it do:

This playbook will install and configure Sensu-server and clients along with rabbitmq and redis.
Playbook is designed for both Standalone and Distributed Installation strategies. For more about Sensu Installation Strategies.
This playbook is tested on Ubuntu 14/16. 


Usage: 

For Standalone Installation:

Install all of Sensu’s dependencies and services on a single system.

--> Update the hosts file with IP address and credentails of sensu-server and clients in inventory/hosts.
--> Update the same sensu-server IP in rabbitmq, redis hosts section(Both redis and rabbitmq will installed in same server).


For Distributed Installation:

Install Sensu’s dependencies (e.g. RabbitMQ and/or Redis) and services (i.e. the Sensu server and API) on separate systems.

--> Update the hosts file depending on the installation strategy.


Update the group_vars file:

Update the group_vars file under inventory/group_vars/global_vars.yml according your requirement otherwise default value will be used.


Finally, run the main.yml.









