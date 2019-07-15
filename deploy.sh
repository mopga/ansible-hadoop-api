#!/usr/bin/env bash

export DEPLOY_USER=cloudera-scm
export KRB_USER= cloudera-scm/quickstart.cloudera
export KRB_REALM=CLOUDERA
export START_DATE=2019-07-15T7:10Z
export END_DATE=2019-07-17T7:10Z
export NAME_NODE=hdfs://quickstart.cloudera:8020 
export JOB_TRACKER=quickstart.cloudera:8032
export SHEDULER="17 * * * *"
export HTTPFS_NODE=quickstart.cloudera:14000
export OOZIE_NODE=quickstart.cloudera:11000

ansible-playbook -i "inventory/static" playbooks/install.yml -e ansible_python_interpreter=/usr/bin/python
