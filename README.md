#Helm chart for mongo

to update/publish:

Bump version of src/Chart.yaml

helm package src -d charts

helm repo index charts
