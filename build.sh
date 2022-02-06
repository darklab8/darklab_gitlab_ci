# docker build --tag registry.gitlab.com/darklab2/darklab_pipeliner/darklab-pipeliner:kubectl-v1.0.0 .
# docker push registry.gitlab.com/darklab2/darklab_pipeliner/darklab-pipeliner:kubectl-v1.0.0

docker build --tag 95.217.134.161:32000/darklab-pipeliner:kubectl-v1.0.0 .
docker push 95.217.134.161:32000/darklab-pipeliner:kubectl-v1.0.0
