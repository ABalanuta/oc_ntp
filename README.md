# oc_ntp

## Install Procedure


```
curl -s https://api.github.com/repos/ABalanuta/oc_ntp/releases/latest \
| grep "browser_download_url.*deb" \
| cut -d : -f 2,3 \
| tr -d \" \
| wget -i -
sudo apt update
sudo dpkg -i oc-ntp_*.deb
sudo apt-get install -fy
rm oc-ntp_*.deb

```

## Check Sync

```
ntpstat

ntpq -pn
```

## Removing 
```
dpkg --purge oc-ntp
```
