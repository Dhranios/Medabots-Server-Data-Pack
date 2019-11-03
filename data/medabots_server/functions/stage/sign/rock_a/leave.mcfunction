execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1604 51 -149 -180 0
data merge block -1605 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/rock_a/play"}}'}
setblock -1605 53 -182 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1