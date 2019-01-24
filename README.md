# oc_ntp

## Install Procedure


```
curl -s https://api.github.com/repos/ABalanuta/oc_ntp/releases/latest \
| grep "browser_download_url.*deb" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -qi -

sudo dpkg -i oc-ntp_0.x_armhf.deb
sudo apt-get install -fy
```
