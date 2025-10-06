# lolminer
An imagnie for mining with lolminer https://github.com/Lolliedieb/lolMiner-releases/releases

Execute buils.sh to build the image.

To run this locally you should be able to execute:
docker run --name lol-miner --rm --runtime=nvidia --gpus all jisleyjr/lol-miner:1.98a

```
#!/bin/bash
ALGO="CR29"
URL="taric29-ca.luckypool.io:3111"
USER="12Lc9xqaJu2ikZCdo9k1MNwHwgaQxD2rbejSxL63pLnF2zLDneezZ9YY2x8GiwdKWFfXqvTLHKENnnaUKZ5dwHrCoXm"
PASS="x"
echo "./lol-miner/lolMiner -a $ALGO -o $URL --user $USER --pass $PASS" > /miner_cmd
```

It creates the `miner_cmd` file that is kicked off by the `startup.sh`.