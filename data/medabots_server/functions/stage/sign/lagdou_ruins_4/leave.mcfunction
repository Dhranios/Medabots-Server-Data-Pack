execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1345 51 -127 -180 0
data merge block -1346 52 -133 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_4/play"}}'}
setblock -1346 53 -135 minecraft:redstone_block
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players reset @s Stage
scoreboard players reset @s Gamemode