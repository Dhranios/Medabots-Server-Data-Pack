fill -2022 45 -632 -1975 45 -585 minecraft:air replace minecraft:comparator
tag @e[scores={Stage=48},type=!minecraft:player] add dead
data merge block -2000 52 -632 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/icefield_battle/play\"}}"}
setblock -2000 53 -634 minecraft:redstone_block