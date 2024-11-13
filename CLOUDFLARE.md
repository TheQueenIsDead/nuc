818  wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
  819  sudo dpkg -i cloudflared-linux-amd64.deb
  820  cloudflared tunnel login
  821  cat /home/david/.cloudflared/cert.pem
  822  clear
  823  cat /home/david/.cloudflared/cert.pem
  824  # cat /home/david/.cloudflared/cert.pem
  825  cloudflared tunnel create example-tunnel
  826  kubectl create secret generic tunnel-credentials \
  827  kubectl --kubeconfig=kubeconfig create secret generic tunnel-credentials --from-file=credentials.json=/home/david/.cloudflared/419baf49-3c95-4dce-b3
00-335c74d0a6d2.json
  828  ./playbook.sh --tags k8s
  829  ls
  830  ls ~
  831  cp ~/cloudflared.yaml .
  832  nano nginx_deployment.yml
  833  kubectl --kubeconfig=kubeconfig apply -f nginx_deployment.yml
  834  kubectl --kubeconfig=kubeconfig apply -f cloudflared.yaml
  835  kubectl --kubeconfig=kubeconfig port-forward nginx
  836  kubectl --kubeconfig=kubeconfig port-forward service/nginx 80:80
  837  kubectl --kubeconfig=kubeconfig port-forward service/nginx-deployment 80:80
  838  kubectl --kubeconfig=kubeconfig port-forward service/nginx-deployment 6969:80
  839  kubectl --kubeconfig=kubeconfig apply -f cloudflared.yaml
  840  history
