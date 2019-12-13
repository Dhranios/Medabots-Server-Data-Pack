function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/park_b/second_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/park_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1811 51 -683 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1810 53 -732 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1810 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/park_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1812 53 -730 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1812 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/park_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
