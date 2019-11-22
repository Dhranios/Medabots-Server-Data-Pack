execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1949 51 -617 -180 0
data merge block -1950 52 -640 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/woods_battle/play"}}'}
setblock -1950 53 -642 minecraft:redstone_block
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players reset @s Stage