# A container image for run Golang 3.11
[![BUILD IMAGE GOLANG 1.18](https://github.com/fabianoflorentino/golang/actions/workflows/build.yml/badge.svg)](https://github.com/fabianoflorentino/golang/actions/workflows/build.yml)

## **Usage**

| **Variable** | **Description** |
| --- | --- |
| $PWD | Current work directory with golang code |

### **Local Usage**

```bash
# Build
docker build --no-cache -t <IMAGE NAME>:<TAG> -f ./Dockerfile .

# Run
docker run -it --name golang -v $PWD:/app -w /app --entrypoint "" fabianoflorentino/golang:1.18 sh
```

### **Local Usage from Remote**

```bash
# Pull (Download)
docker pull fabianoflorentino/golang:1.18

# Run
docker run -it --name golang -v $PWD:/app -w /app --entrypoint "" fabianoflorentino/golang:1.18 sh
```
