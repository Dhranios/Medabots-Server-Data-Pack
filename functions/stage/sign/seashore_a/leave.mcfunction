teleport @s -1539 51 -216 -180 0
data merge block -1540 52 -247 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/seashore_a/play\"}}"}
setblock -1540 53 -249 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1