teleport @s -1890 50 -571 -180 0
data merge block -1891 51 -603 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/boxer/play"}}'}
setblock -1891 52 -605 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 22