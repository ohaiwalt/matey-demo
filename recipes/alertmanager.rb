docker_image 'alertmanager' do
  repo 'prom/alertmanager'
  tag 'v0.5.1'
  action :pull
end

template 'alertmanager' do
  source 'alertmanager.erb'
  path '/tmp/alertmanager.yml'
end

docker_container 'alertmanager' do
  repo 'prom/alertmanager'
  port '9093:9093'
  tag 'v0.5.1'
  cmd '-config.file=/tmp/alertmanager.yml'
  volumes '/tmp/alertmanager.yml:/tmp/alertmanager.yml'
end
