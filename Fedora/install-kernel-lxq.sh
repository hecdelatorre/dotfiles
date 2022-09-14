#!/bin/bash
sudo dnf copr enable rmnscnce/kernel-lqx -y
sudo dnf in kernel-lqx kernel-lqx-devel kernel-lqx-headers -y
