a=(" " "1" "2" "3" "4" "5"
"6" "aaa" "bbb" "cc"
)

echo ${a[6]}
first=java
params=$first${a[@]}
echo $params

run_command=(
  "java " "-Xms4g" "-Xmx14g" "-XX:+HeapDumpOnOutOfMemoryError" "-XX:HeapDumpPath=$log_dir"

  "-Djava.rmi.server.hostname=10.68.245.75"  "-Dcom.sun.management.jmxremote"
  "-Dcom.sun.management.jmxremote.authenticate=false" "-Dcom.sun.management.jmxremote.ssl=false"
  "-Dcom.sun.management.jmxremote.rmi.port=8021" "-Dcom.sun.management.jmxremote.port=8021"

  "-Djava.io.tmpdir=$upload_path" "-Duser.timezone=GMT+08" "-Dio.netty.allocator.type=unpooled"
  "-jar" "model-servers-${version}.jar"
  "--spring.config.location=/app/config/application.properties")
r1="${run_command[@]}"
echo $r1
run2=("ls" "-al")
r3="${run2[@]}"
echo $r3
sh -c "$r3"

