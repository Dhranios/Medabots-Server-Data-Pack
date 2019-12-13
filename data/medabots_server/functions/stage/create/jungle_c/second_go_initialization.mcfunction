function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 3
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/jungle_c/second_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/jungle_c/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1541 50 -515 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1540 52 -547 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1540 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/jungle_c/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1542 52 -547 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1542 51 -545 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/jungle_c/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
