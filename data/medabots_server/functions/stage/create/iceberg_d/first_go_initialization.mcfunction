function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/iceberg_d/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/iceberg_d/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 29 59 26 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 30 61 0 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 30 60 2 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/iceberg_d/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 28 61 0 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 28 60 2 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/iceberg_d/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}