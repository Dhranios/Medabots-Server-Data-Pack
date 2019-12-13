function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 4
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/iceberg_b/second_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/iceberg_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1795 50 -394 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1794 52 -440 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1794 51 -438 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/iceberg_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1796 52 -439 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1796 51 -437 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/iceberg_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}