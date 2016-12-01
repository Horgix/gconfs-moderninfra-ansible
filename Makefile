DOCKERCMD	= docker run -it --rm -v `pwd`:/root/ansible -w /root/ansible -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} -e DOCKER_HUB_USERNAME=${DOCKER_HUB_USERNAME} -e DOCKER_HUB_PASSWORD=${DOCKER_HUB_PASSWORD} -v ${HOME}/.ssh/ansible-click-count.pem:/root/.ssh/ansible-click-count.pem ansible-aws-gitlab

all: base services

base::
	${DOCKERCMD} ansible-playbook master.yml -b -t base

services::
	${DOCKERCMD} ansible-playbook master.yml -b -t services
