execute if entity @s[scores={EditingTinpet=0..}] run function medabots_server:items/tinpet/stop_editing
teleport @s -1890 51 -666 -180 0
data merge block -1891 52 -696 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/rock_f/play"}}'}
setblock -1891 53 -698 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1