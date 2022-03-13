## Psalm - a static analysis tool for finding errors in PHP applications

Docker container to install and run psalm

### Installation / Usage
1. Install the denissliva/psalm container:
```bash
docker pull denissliva/psalm:php8.1
```
2. Run psalm through the psalm container:
```bash
sudo docker run --rm --volume $(pwd):/psalm --name="psalm" "denissliva/psalm:php8.1" {destination}
# or
make run
```

### Download the source:
To run, test and develop the PSALM Dockerfile itself, you must use the source directly:
1. Download the source:
```bash
git clone https://github.com/labi-le/docker-psalm.git
```
2. Build the container:
```bash
make build 
```