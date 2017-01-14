
docker_service 'default' do
  action [:create, :start]
end

include_recipe 'matey::mysql'
include_recipe 'matey::prometheus'
include_recipe 'matey::mysqld-exporter'
include_recipe 'matey::grafana'
include_recipe 'matey::alertmanager'
