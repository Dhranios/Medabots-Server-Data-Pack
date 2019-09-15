execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1290 49 29 -180 0
data merge block -1291 50 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_8/play"}}'}
setblock -1291 51 -1 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1