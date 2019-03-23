fill -1999 45 -621 -1998 47 -621 minecraft:air
fill -1986 45 -609 -1986 47 -608 minecraft:air
fill -1998 45 -596 -1999 47 -596 minecraft:air
fill -2011 45 -608 -2011 47 -609 minecraft:air
tag @e[scores={Stage=48},type=!minecraft:player] add dead
data merge block -2000 52 -632 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/icefield_battle/play\"}}"}
setblock -2000 53 -634 minecraft:redstone_block