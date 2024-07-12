FROM docker.io/riscv64/ubuntu:22.04

RUN apt-get update && apt-get dist-upgrade -y && \
  apt-get install update-manager-core -y && \
  do-release-upgrade -d -f DistUpgradeViewNonInteractive && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*
