docker_image 'node-exporter' do
  repo 'quay.io/prometheus/node-exporter'
  tag 'v0.13.0'
  action :pull
end

docker_container 'node-exporter' do
  repo 'quay.io/prometheus/node-exporter'
  tag 'v0.13.0'
  port '9100:9100'
  volumes ['/proc:/host/proc','/sys:/host/sys', "/:/rootfs"]
  network_mode 'host'
  pid_mode 'host'
  cmd ['-collector.procfs /host/proc',
       '-collector.sysfs /host/sys',
       '-collector.filesystem.ignored-mount-points "^/(sys|proc|dev|host|etc)($|/)"']
end

# docker run -d -p 9100:9100 \
#   -v "/proc:/host/proc" \
#   -v "/sys:/host/sys" \
#   -v "/:/rootfs" \
#   --net="host" \
#   quay.io/prometheus/node-exporter \
#     -collector.procfs /host/proc \
#     -collector.sysfs /host/sys \
#     -collector.filesystem.ignored-mount-points "^/(sys|proc|dev|host|etc)($|/)"
