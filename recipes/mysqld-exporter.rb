docker_image 'mysqld-exporter' do
  repo 'prom/mysqld-exporter'
  tag 'v0.9.0'
  action :pull
end

docker_container 'mysqld-exporter' do
  repo 'prom/mysqld-exporter'
  tag 'v0.9.0'
  port '9104:9104'
  links 'mysql:mysql'
  env 'DATA_SOURCE_NAME=root:superseekrut@(mysql:3306)/'
end
