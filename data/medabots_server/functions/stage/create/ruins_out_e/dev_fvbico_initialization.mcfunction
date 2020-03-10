function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 5
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_out_e/dev_fvbico
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_out_e/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1892 51 -489 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1891 53 -536 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1891 52 -534 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_out_e/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1891 53 -538 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1891 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_out_e/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
