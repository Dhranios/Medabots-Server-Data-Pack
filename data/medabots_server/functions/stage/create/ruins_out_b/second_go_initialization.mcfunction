function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_out_b/second_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_out_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1812 51 -489 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1812 53 -537 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1812 52 -535 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_out_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1814 53 -537 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1814 52 -535 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_out_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
