# On-going Ansible project for servers
# Currently, only Redis and MongoDB included

How to setup a lab:
- Install Ansible. Add additional configs if needed.
- Install Docker.
- Create a SSH key pair, add public key to Dockerfile.
- Build docker image from dockerfile
- Create new containers from builded image. Those containers will acts as "remote nodes", controlled by Ansible which you installed earlier.
- Clone Ansible playbook to your control node.


That's all, happy playing Ansible :)




It takes around 5-10 minutes to have a cluster of 6 Redis nodes up and running.  :)
My goal is having a complex system up, configured and running within 10 minutes
