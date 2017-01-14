docker_image 'prometheus' do
  repo 'prom/prometheus'
  tag 'v1.4.1'
  action :pull
end

template 'prometheus' do
  source 'prometheus.erb'
  path '/tmp/prometheus.yml'
end

directory '/tmp/rules' do
  action :create
end

template 'testrules' do
  source 'test.rules.erb'
  path '/tmp/rules/test.rules'
end

docker_container 'prometheus' do
  repo 'prom/prometheus'
  port '9090:9090'
  tag 'v1.4.1'
  volumes ['/tmp/prometheus.yml:/etc/prometheus/prometheus.yml',
           '/tmp/rules/:/etc/prometheus/rules/']
end
