execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1999 51 -608 -180 0
data merge block -2000 52 -632 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/icefield_battle/play"}}'}
setblock -2000 53 -634 minecraft:redstone_block
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players reset @s Stage