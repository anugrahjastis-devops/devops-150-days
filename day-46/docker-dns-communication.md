# 🔗 Day 46: Container-to-Container Communication & DNS Resolution

## 📌 Overview
Today I learned how containers communicate securely on a custom bridge network using Docker's built-in DNS resolution, eliminating the need for hardcoded IP addresses.

## 💻 Implementation
1. Deployed `container-one` on `my-custom-network`.
2. Ran an ephemeral `alpine` container on the same network and successfully pinged `container-one` by its name: `docker run --rm --net my-custom-network alpine ping -c 3 container-one`.
3. Verified zero packet loss and seamless name-to-IP resolution.
