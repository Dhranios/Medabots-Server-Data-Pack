execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1827 50 -767 -180 0
data merge block -1828 51 -806 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/laboratory_d/play"}}'}
setblock -1828 52 -808 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1