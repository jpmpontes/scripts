$nome=hostname
Invoke-WebRequest -Uri https://packages.wazuh.com/4.x/windows/wazuh-agent-4.8.0-1.msi -OutFile ${env.tmp}\wazuh-agent; msiexec.exe /i ${env.tmp}\wazuh-agent /q WAZUH_MANAGER='10.21.4.34' WAZUH_AGENT_NAME=$nome
start-sleep -Seconds 30
start-service -Name "Wazuh"