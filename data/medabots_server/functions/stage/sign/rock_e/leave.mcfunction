execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1860 51 -298 -180 0
data merge block -1861 52 -345 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/rock_e/play"}}'}
setblock -1861 53 -347 minecraft:redstone_block
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players reset @s Stage