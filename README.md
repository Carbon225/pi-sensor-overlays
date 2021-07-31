# Raspberry device tree overlays


## Installation
```
git clone https://github.com/Carbon225/pi-sensor-overlays
cd pi-sensor-overlays
sudo ./install.sh
```


## Overlays:


### MPU9250
```
dtoverlay=mpu9250,<param>=<val>
```
Params:
- ```interrupt``` - interrupt gpio (default 4)
- ```addr``` - sensor address (default 0x68)


### MPU9255
```
dtoverlay=mpu9255,<param>=<val>
```
Params:
- ```interrupt``` - interrupt gpio (default 4)
- ```addr``` - sensor address (default 0x68)
