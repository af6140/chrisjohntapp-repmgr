#!/bin/bash

# Returns 'running', 'stopped', or 'unknown'.

which repmgr >/dev/null 2>&1 || exit 0

if [[ -z "$(which repmgr)" ]] || [[ ! -x '/etc/init.d/postgresql' ]]; then
  echo 'repmgrd_status=unknown'
  exit 0
fi

status='unknown'

if [[ "$(service repmgrd status | grep -Eo 'is running')" = 'is running' ]]; then
  status='running'
else
  status='stopped'
fi

echo "repmgrd_status=${status}"
