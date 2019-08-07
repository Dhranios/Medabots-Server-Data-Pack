teleport @s -1704 50 -221 -180 0
data merge block -1705 51 -244 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/iceberg_a/play"}}'}
setblock -1705 52 -246 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1