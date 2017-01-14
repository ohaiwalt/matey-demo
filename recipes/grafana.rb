docker_image 'grafana' do
  repo 'grafana/grafana'
  action :pull
end

docker_container 'grafana' do
  repo 'grafana/grafana'
  port '3000:3000'
  volumes '/var/lib/grafana'
  links 'prometheus:prometheus'
  env 'GF_SECURITY_ADMIN_PASSWORD=admin'
end
