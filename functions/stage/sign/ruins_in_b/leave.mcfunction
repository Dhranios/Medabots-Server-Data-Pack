teleport @s -1620 50 -526 -180 0
data merge block -1621 51 -570 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_in_b/play"}}'}
setblock -1621 52 -572 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1