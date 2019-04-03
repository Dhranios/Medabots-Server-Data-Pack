teleport @s -1620 51 -216 -180 0
data merge block -1621 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/snowfield_a/play"}}'}
setblock -1621 53 -249 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1