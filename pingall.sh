for i in `seq 254`
do
ip=192.168.1.$i
ping -c1 $ip >/dev/null 2>&1
 [ $? -eq 0 ] && echo "$ip is alive" || echo "$ip is not alive"
done
