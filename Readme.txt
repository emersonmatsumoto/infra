Entre como root
$sudo su

Altere a permissão para executar os scripts
$chmod 777 azure/azure-cli.sh
$chmod 777 kubernetes/aks.sh

Instale o azure cli
$./azure/azure-cli.sh

Crie um resource group no azure na regiao que suporta aks
Cria o cluster e Instala o kubernetes (Resource group: kubernetes, Name: k8sCluster)
$./kubernetes/aks.sh kubernetes k8sCluster

Habilitar o proxy do kubernetes com o proxy reverso do nginx
$./nginx/nginx.sh

Verificar se esta funcionando
$kubctl get nodes
