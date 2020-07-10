function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 4
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/grassland_a/special
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/grassland_a/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 31 59 29 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 32 53 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 32 52 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/grassland_a/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 30 53 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 30 52 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/grassland_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}