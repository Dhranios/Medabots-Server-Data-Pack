execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1541 50 -515 -180 0
data merge block -1542 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_c/play"}}'}
setblock -1542 52 -547 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 22