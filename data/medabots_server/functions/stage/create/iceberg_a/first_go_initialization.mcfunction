function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/iceberg_a/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/iceberg_a/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1704 50 -221 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1703 52 -246 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1703 51 -244 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/iceberg_a/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1705 52 -246 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1705 51 -244 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/iceberg_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
