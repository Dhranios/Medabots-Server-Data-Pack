execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1997 51 -560 -180 0
data merge block -1998 52 -581 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_battle/play"}}'}
setblock -1998 53 -583 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1