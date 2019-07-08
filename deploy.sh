#!/usr/bin/env bash

ansible-playbook -i "inventory/static" playbooks/install.yml -e ansible_python_interpreter=/usr/bin/python
