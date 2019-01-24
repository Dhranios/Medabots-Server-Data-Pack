teleport @s -1683 50 -259 -180 0
data merge block -1683 51 -277 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/sign/ruins_out_a/play\"}}"}
setblock -1685 52 -277 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1