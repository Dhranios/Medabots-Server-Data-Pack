function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_out_c/second_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_out_c/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1635 50 -673 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1634 52 -705 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1634 51 -703 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_out_c/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1636 52 -703 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1636 51 -701 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_out_c/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
