teleport @s -1772 50 -285 -180 0
data merge block -1773 51 -321 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/laboratory_a/play\"}}"}
setblock -1773 52 -323 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1