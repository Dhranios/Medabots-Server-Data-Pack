execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s 61 59 32 -180 0
data merge block 63 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/ruins_out_a/play"}}'}
setblock 63 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute unless entity @s[scores={Jukebox=1..}] run scoreboard players set @s Music 0
scoreboard players set @s MusicType 1
scoreboard players reset @s Stage
scoreboard players reset @s Gamemode