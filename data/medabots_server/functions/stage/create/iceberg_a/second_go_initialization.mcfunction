function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/iceberg_a/second_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/iceberg_a/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 58 59 24 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 59 61 -1 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 59 60 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/iceberg_a/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 57 61 -1 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 57 60 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/iceberg_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}