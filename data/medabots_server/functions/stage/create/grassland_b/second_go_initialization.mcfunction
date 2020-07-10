function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 3
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/grassland_b/second_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/grassland_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 30 59 47 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 31 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 31 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/grassland_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 29 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 29 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/grassland_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}