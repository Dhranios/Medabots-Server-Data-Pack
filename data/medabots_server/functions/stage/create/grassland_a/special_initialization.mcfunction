function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 4
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/grassland_a/special
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/grassland_a/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1539 51 -151 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1538 53 -182 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1538 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/grassland_a/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1540 53 -182 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1540 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/grassland_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
