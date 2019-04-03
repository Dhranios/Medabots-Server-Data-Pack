teleport @s -1999 51 -608 -180 0
data merge block -2000 52 -632 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/icefield_battle/play"}}'}
setblock -2000 53 -634 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1