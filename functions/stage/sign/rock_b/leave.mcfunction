teleport @s -1603 51 -351 -180 0
data merge block -1605 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/rock_b/play"}}'}
setblock -1605 53 -384 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1