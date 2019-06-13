teleport @s -1570 51 -720 -180 0
data merge block -1571 52 -750 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_b/play"}}'}
setblock -1571 53 -752 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1