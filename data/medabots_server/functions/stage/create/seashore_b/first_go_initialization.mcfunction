function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/seashore_b/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/seashore_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1715 51 -396 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1714 53 -444 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1714 52 -442 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/seashore_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1716 53 -444 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1716 52 -442 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/seashore_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
