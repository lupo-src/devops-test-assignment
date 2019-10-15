# devops-test-assignment
## Please, suggest how everything can be improved/changed, so that release process can be done more often
Because release process is now mostly manual and so it takes time to go from developer's commit to production I would definitely introduce automated CI/CD pipeline across DEV/TEST/PROD environment. Failures that are now cought too late could be evaluated and tested during the build as well as deployment to various staging environments by quality and testing gates. Depends on current microservice architecture setup one can use various smoke/functional tests (all automated) and end2end test on release process additionally. Toolset to be defined depending on exact technology stack but one can leverage either on-prem free solutions like Jenkins (plus Ansible if necessery) or use cloud solution like Azure DevOps with on-prem agents and VPN tunnels so that one can execute diffrent pipeline flows also on on-prem target environments.

## How do you see a release process going forward?
First to introduce consistent CI/CD flow as described above plus organisational adjustment so that approval process can go as smoothly as possible (bypassing unnecessary manual approvals but instead using quality gates, manual approve only for production until project is ready to use something more autonomic like automated canary deployments and ZeroOps culture).
If organisation is not yet ready for above scenario one can implement releasing process with tools like Ansible and leveraging various group_vars and inventories to deploy across diffrent staging environment. In this scenario one can also use quality/testing gates to improve success ratio when going from dev to prod.

## How can we improve build and deploying our software
At the beginning we could leverage Ansible playbooks and dockerized services(wherever possible) to build & deploy on each environment. So triggering manually when new release is ready but deploying and testing automated already with mentioned toolset. Whenever project is ready to move forward we could wrap up current solution with CI/CD pipelines using for instance Jenkins and progresivelly move forward with automation.

## Please provide some examples on deploying the Python example in Windows and Linux for the tools you will be suggesting deploying with
Prerequisites:
* Installed Ansible 2.7.X (only on Linux acting as bastion host only)
* git version 2.7.4

Steps to deploy:
* Checkout current repo
* Run ansible playbook `ansible-playbook -i hosts deploy_service.yaml`
