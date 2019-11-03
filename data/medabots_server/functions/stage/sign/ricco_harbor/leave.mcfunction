execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1440 51 -158 -180 0
data merge block -1441 52 -210 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ricco_harbor/play"}}'}
setblock -1441 53 -212 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1