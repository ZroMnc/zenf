#!/usr/bin/env bash
wget -O - https://debian.neo4j.org/neotechnology.gpg.key| apt-key add - # Import our signing key
echo 'deb http://debian.neo4j.org/repo stable/' > /etc/apt/sources.list.d/neo4j.list # Create an Apt sources.list file
aptitude update -y # Find out about the files in our repository
aptitude install neo4j -y # Install Neo4j, community edition
cp /files/neo4j-server.properties /etc/neo4j/neo4j-server.properties
chown neo4j:adm /etc/neo4j/neo4j-server.properties
service neo4j-service restart
# [+] Done
