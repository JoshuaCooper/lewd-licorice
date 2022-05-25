#!/bin/bash
clear
cat << "EOF"
=========================================================
 _                  _       _ _                _          
| | _____      ____| |     | (_) ___ ___  _ __(_) ___ ___ 
| |/ _ \ \ /\ / / _` |_____| | |/ __/ _ \| '__| |/ __/ _ \
| |  __/\ V  V | (_| |_____| | | (_| (_) | |  | | (_|  __/
|_|\___| \_/\_/ \__,_|     |_|_|\___\___/|_|  |_|\___\___|
=========================================================
EOF
echo "Verifying requirements are met:"
if minikube docker-env > /dev/null; then
  echo -e "🟢 Verification succeeded \r\n" 
  succes=true
else
  echo -e "🔴 Verification failed \r\n"
  success=false
fi

if $success
then
  echo "-----Deploying Kubernetes Applications-------------------"
  kubectl apply -f kubernetes/rabbitmq/
  echo "---------------------------------------------------------"
fi
