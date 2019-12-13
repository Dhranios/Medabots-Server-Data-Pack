function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/iceberg_c/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/iceberg_c/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1541 50 -648 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1540 52 -687 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1540 51 -685 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/iceberg_c/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1542 52 -686 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1542 51 -684 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/iceberg_c/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
