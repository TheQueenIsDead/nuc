# Prometheus data source
resource "grafana_data_source" "prometheus" {
  type = "prometheus"
  name = "prometheus"
  # Internal docker-compose service networking
  url  = "http://prometheus:9090"
}

# Main dashboard crafted for Node Exporter metrics
# https://grafana.com/grafana/dashboards/1860
resource "grafana_dashboard" "node" {
  config_json = file("node-exporter-dashboard.json")
}
