execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1811 51 -683 -180 0
data merge block -1812 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/park_a/play"}}'}
setblock -1812 53 -732 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1