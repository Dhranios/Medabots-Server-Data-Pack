execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s 30 58 57 -180 0
data merge block 29 59 48 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/lagdou_ruins_5/play"}}'}
setblock 29 60 46 minecraft:stone_button[face=wall,facing=north,powered=true]
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players reset @s Stage
scoreboard players reset @s Gamemode