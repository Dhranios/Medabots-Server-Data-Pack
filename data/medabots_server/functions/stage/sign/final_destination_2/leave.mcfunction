execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1985 43 -196 -180 0
data merge block -1959 44 -197 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/final_destination_2/play"}}'}
setblock -1957 45 -197 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1