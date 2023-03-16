# Nexus 3 inside of Docker container

### Step1: Clone

``git clone https://github.com/codesshaman/docker-nexus3-repository-oss.git``

### Step 2: Change ports and user data

Change user data in ``.env`` file. Generate secure admin password and change ``admin`` value in ``NEW_USER_PASS`` variable.

If your run configuration not in local host, change ``HOST_ADDRESS`` to use your web server address.

Use variable ``REPOSITORY_NAME`` for quick connect to you repository (change value if necessary).

If your use different ports, change ports in the same file.

You can expose more ports in docker-compose file if necessary.

Follow to the principle: one port - one repository.

Open all necessary ports in firewall!

### Step 3: Build

Use ``make`` utility for build system:

``make build``

Install ``make`` in your system if necessary.

### Step 4: Open Nexus panel

Open browser and go to ``YOUR_IP:8081`` or ``YOUR_IP:NEXUS_PORT`` if your change this port in .env file.

Wait a minute for Nexus start and click "sign in" for login in the system.

### Step 5: Change admin password

Use ``make pass`` for display your temporary and your new admin password. New password contain in .env file as well.

Input temporary admin pass and change it to new password in the web interface.

## Attention! Next steps based on the example of a docker registry.

If you need different types of repositories, find information in google.

### Step 6: Create repository 

Create new repository in "repositories -> create repository -> docker (hosted).

Use any name (for example just ``docker``) and write this name in ``REPOSITORY_NAME`` variable in ``.env``.

Use your ``REGISTRY_PORT`` like http port.

Enable V1 api.

### Step 7: Add new realm

Go to ``Security -> Realms`` and add realm named ``Docker Bearer Token Realm``

### Step 8: Connect to the registry

Use `` make conn`` to connection to the registry.

### Manage commands:

Down:

``make down``

or

``docker-compose down``

Up:

``make``

or

``docker-compose up -d``

Use ``make help`` to view all available commands.
