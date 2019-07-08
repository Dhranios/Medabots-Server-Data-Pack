teleport @s -1812 51 -200 -180 0
data merge block -1813 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/grassland_e/play"}}'}
setblock -1813 53 -249 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1