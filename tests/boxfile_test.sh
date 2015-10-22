echo running tests for template
UUID=$(cat /proc/sys/kernel/random/uuid)

pass "Unable to start the $VERSION container" docker run --privileged=true -d --name $UUID nanobox/build-template sleep 365d

defer docker kill $UUID

pass "Failed to execute the boxfile script" docker exec $UUID bash -c "cd /opt/engines/template/bin; ./boxfile '$(payload default-boxfile)'"
