$TTL 86400
@     IN SOA zone.example.com. hostmaster.example.com. (
          1970010100   ; serial
               16384   ; refresh
                2048   ; retry
             1048576   ; expire
                2560   ; minimum
      )
      IN NS    ns1.example.com.
      IN MX    10 mx1.example.com.
;      IN TXT   "v=spf1 ip4:127.0.0.1 ip4:192.168.0.1 -all"    ; Send mail server IP addresses
;      IN SPF   "v=spf1 ip4:127.0.0.1 ip4:192.168.0.1 -all"    ; Send mail server IP addresses
      IN A     127.0.0.1
mx1   IN A     127.0.0.1 
ns1   IN A     127.0.0.1
www   IN A     127.0.0.1
zone  IN A     127.0.0.1

; DKIM
;_adsp._domainkey   IN TXT "dkim=all"
;default._domainkey IN TXT ""    // - DKIM public key generate by opendkim-genkey command

