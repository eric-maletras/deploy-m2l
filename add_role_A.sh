#!/bin/bash

ansible-playbook -i inventory/infra-A/ playbooks/configure_M2L-WSRV01.yml

ansible-playbook -i inventory/infra-A/ playbooks/configure_M2L-WSRV02.yml

ansible-playbook -i inventory/infra-A/ playbooks/configure_M2L-LSRV03.yml

ansible-playbook -i inventory/infra-A/ playbooks/configure_M2L-LSRV05.yml

