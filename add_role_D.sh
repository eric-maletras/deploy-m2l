#!/bin/bash

#ansible-playbook -i inventory/infra-D/ playbooks/configure_dns_ad_dhcp.yml

#ansible-playbook -i inventory/infra-D/ playbooks/configure_wds.yml

#ansible-playbook -i inventory/infra-D/ playbooks/configure_rds.yml

#ansible-playbook -i inventory/infra-D/ playbooks/configure_glpi.yml

ansible-playbook -i inventory/infra-D/ playbooks/configure_squid.yml

