teleport @s -1908 51 -200 -180 0
data merge block -1909 52 -247 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/jungle_e/play"}}'}
setblock -1909 53 -249 minecraft:redstone_block
scoreboard players set @s Music 0
scoreboard players set @s MusicType 1