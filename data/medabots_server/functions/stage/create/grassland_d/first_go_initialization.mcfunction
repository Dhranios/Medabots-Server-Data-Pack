function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/grassland_d/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/grassland_d/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1570 51 -720 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1569 53 -752 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1569 52 -750 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/grassland_d/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1571 53 -752 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1571 52 -750 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/grassland_d/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
