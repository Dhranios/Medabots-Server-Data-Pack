function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_in_a/second_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_in_a/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1683 50 -259 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1680 52 -277 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1682 51 -277 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_a/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1685 52 -277 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1683 51 -277 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_in_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
