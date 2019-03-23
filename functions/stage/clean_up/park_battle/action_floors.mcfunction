fill -1947 45 -568 -1947 48 -568 minecraft:air
fill -1946 45 -567 -1946 48 -567 minecraft:air
fill -1945 45 -566 -1945 48 -566 minecraft:air
fill -1973 45 -589 -1924 45 -540 minecraft:grass_block replace minecraft:dirt
tag @e[scores={Stage=50},type=!minecraft:player] add dead
data merge block -1950 52 -589 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/park_battle/play\"}}"}
setblock -1950 53 -591 minecraft:redstone_block