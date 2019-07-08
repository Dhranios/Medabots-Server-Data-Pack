teleport @s -1860 51 -298 -180 0
data merge block -1861 52 -345 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_b/play"}}'}
setblock -1861 53 -347 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1