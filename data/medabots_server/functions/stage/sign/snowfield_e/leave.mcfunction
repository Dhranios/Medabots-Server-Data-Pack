execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1866 51 -399 -180 0
data merge block -1867 52 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_e/play"}}'}
setblock -1867 53 -440 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1