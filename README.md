# Déploiement de Jenkins sur Rancher via Helm

Ce projet contient un chart Helm pour déployer Jenkins dans un cluster Kubernetes géré par Rancher.

## Structure du projet
- `monitoring_rancher/helm/dev` : valeurs pour l’environnement de développement
- `monitoring_rancher/helm/prod` : valeurs pour l’environnement de production
- `templates` : définitions Kubernetes (Deployment, Service, Ingress)
- `deploy-jenkins.sh` : script de déploiement automatisé

## Commandes utiles
```bash
helm upgrade --install jenkins ./monitoring/helm -n devops-tools
kubectl get pods -n devops-tools
