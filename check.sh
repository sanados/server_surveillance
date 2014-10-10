echo currently active
w
echo "------------------------------------------------------------------"
echo last logins
last |grep -v boot|grep -v karriere.at
echo "------------------------------------------------------------------"
echo open listening ports
netstat -tulnp |grep -v tcp6 |grep -v udp6|grep -v 127.0.0.1|grep LISTEN
echo "------------------------------------------------------------------"
echo last logins
grep "Accepted password" /var/log/auth.log | tail -n 5
echo "------------------------------------------------------------------"
echo last FAILED logins
grep "Failed password" --color=always /var/log/auth.log | tail -n 5
