fill -1996 45 -608 -1996 48 -608 minecraft:air
fill -2001 45 -609 -2001 48 -609 minecraft:air
tag @e[scores={Stage=48},type=!minecraft:player] add dead
data merge block -2000 52 -632 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/icefield_battle/play\"}}"}
setblock -2000 53 -634 minecraft:redstone_block