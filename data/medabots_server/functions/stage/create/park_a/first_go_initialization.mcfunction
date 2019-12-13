function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/park_a/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/park_a/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1809 51 -587 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1808 53 -635 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1808 52 -633 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/park_a/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1810 53 -635 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1810 52 -633 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/park_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
