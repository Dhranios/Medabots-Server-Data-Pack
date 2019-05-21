teleport @s -1809 51 -587 -180 0
data merge block -1810 52 -633 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_a/play"}}'}
setblock -1810 53 -635 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1