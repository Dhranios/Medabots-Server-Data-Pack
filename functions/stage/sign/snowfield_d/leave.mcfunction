execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1572 51 -784 -180 0
data merge block -1573 52 -815 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_d/play"}}'}
setblock -1573 53 -817 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1