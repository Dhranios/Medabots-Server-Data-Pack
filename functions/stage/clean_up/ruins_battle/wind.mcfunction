fill -1980 45 -576 -1980 48 -576 minecraft:air
fill -1981 45 -544 -1981 48 -544 minecraft:air
fill -2013 45 -545 -2013 48 -545 minecraft:air
fill -2012 45 -577 -2012 48 -577 minecraft:air
fill -2017 44 -581 -1976 44 -540 minecraft:grass_block replace minecraft:dirt
tag @e[scores={Stage=49},type=!minecraft:player] add dead
data merge block -1998 52 -581 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/ruins_battle/play\"}}"}
setblock -1998 53 -583 minecraft:redstone_block