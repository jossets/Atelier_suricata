# Atelier Suricata




## Lab 


Le lab se compose d'un serveur web (nginx+php+mysql).

Le site web est vulnérable à une injection sql.

Un attaquant lance périodiquement sqlmap sur le serveur.

A vous d'écrire les règles Suricata pour détecter l'attaque.


Builder les dockers, et lancer le lab:
```bash
./challenge_start.sh
```

## Tcpdump 

Pour vérifier ce qui passe sur l'interface du serveur web:
```bash
$ ./tcpdump_netweb   
```

Pour filter un port particulier sur l'interface du serveur web:
```bash
$ ./tcpdump_netweb port 80
```

## Suricata 

Pour lancer suricata avec la config par défaut sur l'interface réseau du serveur web:
```bash
$ ./suricata_start_netweb   
```



Pour le serveur mysql:
```bash
$ ./suricata_start_netsql  
```

## Suricata logs


Les logs /var/log/suricata/fast.log sont redirigés vers la console. 
```
outputs:
  # a line based alerts log similar to Snort's fast.log
  - fast:
      enabled: yes 
      #filename: fast.log
      filename: /dev/stdout
```

Il est possible de réactiver #filename: fast.log, et récupérer les logs avec :
```bash
docker exec suri_web cat /var/log/suricata/suricata.log
docker exec suri_web cat /var/log/suricata/fast.log
```


## Suricata Rules 

Pour tester un fichier de rules sur le serveur web:
```bash
$ ./suricata_start_netweb  ./suricata/rules/rules_80
```

