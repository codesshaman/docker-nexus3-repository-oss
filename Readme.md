# Nexus 3 inside of Docker container

### Step1: Clone

``git clone https://github.com/codesshaman/docker-nexus3-repository-oss.git``

### Step 2: Create nexus-data

``mkdir nexus-data``

``chmod 777 nexus-data``

or

``sudo /bin/bash ./mkdir.sh``

(Second way most security)

### Step 3: Build

``make build``

or

``docker-compose up -d --build``

### Step 3: Connection

Use ``YOUR_IP:8081`` in docker-compose if you need change any ports for panel or for reposytoryes.

You can expose more ports in docker-compose file if necessary.

Sign in pannel with login and password ``admin`` and password from ``nexus-data/admin.password`` file:

``cat nexus-data/admin.password``

Change password after login.

### Manage commands:

Down:

``make down``

or

``docker-compose down``

Up:

``make``

or

``docker-compose up -d``
