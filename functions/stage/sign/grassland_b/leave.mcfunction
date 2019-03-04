teleport @s -1540 51 -367 -180 0
data merge block -1541 52 -414 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/grassland_b/play\"}}"}
setblock -1541 53 -416 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1