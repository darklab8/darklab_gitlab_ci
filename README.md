# Gitlab pipeline runner for k8s, build and deploy

## manual action: deploying gitlab runner

* Auth into cluster
* cd k8s/gitlab_runner
* python3 install_runner.py --gitlab_token=$gitlab_token
