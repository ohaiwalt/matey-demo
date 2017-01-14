docker_image 'mysql' do
  repo 'mysql'
  tag '5.6'
  action :pull
end

docker_container 'mysql' do
  repo 'mysql'
  tag '5.6'
  port '3306:3306'
  env 'MYSQL_ROOT_PASSWORD=superseekrut'
end
