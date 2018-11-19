teleport @s -1539 51 -151 -180 0
data merge block -1540 52 -180 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/grassland_a/play\"}}"}
setblock -1540 53 -182 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1