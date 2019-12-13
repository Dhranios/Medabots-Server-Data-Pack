function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 9
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/paradise_a/second_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/paradise_a/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1714 51 -683 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1713 53 -732 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1713 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/paradise_a/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1715 53 -732 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1715 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/paradise_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
