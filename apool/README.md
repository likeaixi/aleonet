# Apoolminer

```powershell
 $$$$$$\  $$$$$$$\   $$$$$$\   $$$$$$\  $$\       
$$  __$$\ $$  __$$\ $$  __$$\ $$  __$$\ $$ |      
$$ /  $$ |$$ |  $$ |$$ /  $$ |$$ /  $$ |$$ |      
$$$$$$$$ |$$$$$$$  |$$ |  $$ |$$ |  $$ |$$ |      
$$  __$$ |$$  ____/ $$ |  $$ |$$ |  $$ |$$ |      
$$ |  $$ |$$ |      $$ |  $$ |$$ |  $$ |$$ |      
$$ |  $$ |$$ |       $$$$$$  | $$$$$$  |$$$$$$$$\ 
\__|  \__|\__|       \______/  \______/ \________|
```

## Introduction

CPU and GPU optimization Miner for QUBIC

## Disclaimer

[apool.io](https://www.apool.io/) & [apoolminer_github](https://github.com/apool-io/apoolminer) are the only 2 officially maintained site for publishing information and new releases of apoolminer.

## Install

Running command below under `root` user:

```powershell
wget https://raw.githubusercontent.com/apoolmine/apoolminer/main/apool.sh && chmod +x apoolminer.sh
./apoolminer.sh
```

The miner will be installed to `/.apoolminer/apoolminer`.

## Usage

Please refer to the usage help (`./apoolminer --help`):

If you didn't have an aleo account, use the following command to create one:

Then start miner like:

```powershell
./apoolminer --address <your address> --proxy <solo prover proxy> [OPTIONS] 
```

```powershell
Options:
      --account <ACCOUNT>    Specify the account
      --worker <WORKER>      Specify the worker name. Note: The name consists of numbers and letters and cannot exceed 15 characters in length
      --pool <POOL>          Specify the pool server address
  -g, --gpu <GPU>            Specify the index of GPU. Specify multiple times to use multiple GPUs, example: -g 0 -g 1 -g 2. Note: Use all gpus if not specify.
  -o, --log <LOG>            Specify the log file
  -t, --thread <T>           Specify the number of CPU thread
      --cpu-off              Close CPU mining
      --gpu-off              Close GPU mining
```

## GPU supports

- NVIDIA Turing GPU (RTX20)
- NVIDIA Ampere GPU (RTX30)
- NVIDIA Ada Lovelace GPU (RTX40)

## API Reference

### miner status 

**Path：** /status

**Method：** GET

**Response:**

```
{
  "code": 200,
  "data": {
    "online": false
  }
}
```

### gpu miner info 

**Path：** /gpu

**Method：** GET

**Response:**

```
{
"code": 200,
"data": {
    "gpus": [{
        "cclk": 1635, //graphics clock
        "ctmp": 74, // gpu temperature
        "device": "2060SU", //gpu device 
        "fan": 76, //fan
        "gmclk": 6801, //graphics memory clock
        "id": 0,
        "inval": 0, //invalid
        "mtmp": "89", //max temperature
        "power": 169, //power
        "proof": 0.0, //proof rate
        "statle": 0, // statle
        "valid": 0 // valid
    }],
    "uptime": 197 //program up time 
}
```

**Usage:**

```powershell
./apoolminer --account <your account> --rest --port 5001 --pool <pool server address> [OPTIONS]    
```

## Changelog

### 0.6.0
Version for running  Aleo testnet3.

### 1.1.0
Version for running Qubic, it is only for CPU now.

### 1.2.0
Version for running Qubic, it is for cpu and gpu now.

### 1.2.1
qubic Epoch 104, support for cpu and gpu

### 1.2.3
fix some bug, performance optimization.

### 1.2.4
Fixed some machine anomalies

### 1.2.5
performance optimization.

### 1.2.6
Fix some bug, performance optimization.

### 1.2.7
GPU optimal performance, CPU support no-avx2

### 1.2.8
CPU and GPU performance optimization.

### 1.2.9
GPU performance optimization.

### 1.3.0
qubic epoch 107

### 1.3.1
Fixed some machine anomalies

### 1.3.2
Fix some bug, performance optimization.

### 1.4.0
qubic epoch 109

### 1.4.1
CPU and GPU performance optimization.

### 1.4.2
GPU performance optimization.

### 1.4.3
GPU performance optimization.

### 1.5.0
qubic epoch 112

### 1.5.1
CPU and GPU performance optimization.

### 1.5.2
CPU and GPU performance optimization.

### 1.6.0
qubic epoch 114

### 1.6.1
Fixed some bug.

### 1.6.2
GPU performance optimization.

### 1.6.3
CPU mining with aleo support.

