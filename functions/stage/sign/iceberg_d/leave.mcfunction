teleport @s -1700 50 -769 -180 0
data merge block -1701 51 -793 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_d/play"}}'}
setblock -1701 52 -795 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1