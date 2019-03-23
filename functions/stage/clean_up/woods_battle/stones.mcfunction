fill -1972 45 -640 -1925 45 -593 minecraft:air replace minecraft:stone_slab
fill -1972 44 -640 -1925 44 -593 minecraft:grass_block replace minecraft:dirt
tag @e[scores={Stage=47},type=!minecraft:player] add dead
data merge block -1950 52 -640 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/woods_battle/play\"}}"}
setblock -1950 53 -642 minecraft:redstone_block