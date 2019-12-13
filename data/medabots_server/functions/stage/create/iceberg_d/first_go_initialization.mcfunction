function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/iceberg_d/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/iceberg_d/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1700 50 -769 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1699 52 -795 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1699 51 -793 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/iceberg_d/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1701 52 -795 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1701 51 -793 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/iceberg_d/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
