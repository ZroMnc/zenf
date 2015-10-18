# zenf
Simple Project to string up Neo4J and RethinkDB for Image mapping. Currently this is just the base setup.

## Setup for Local Development

Install all your python requirements.
```bash
pip3 install -r requirement.txt
```

You might also need to install [Vagrant](https://www.vagrantup.com).

All you need to do is ```vagrant up <env>```. The environment ```<env>``` can be seen by doing a ```vagrant status```  in the project folder.

## Inital Setup (ephemeral)

```bash
virtualenv storage
```

### Important Changes to the /etc/hosts
In order to make this work these entries need to be added to you personal ``hosts``` file.
```bash
192.168.99.15   neo4j.zenf.io
192.168.99.16   db.zenf.io
```

## URLs
*[Neo4J Admin Consol](neo4j.zenf.io:7474)
*[RethinkDB Admin Panel](db.zenf.io.8080)
