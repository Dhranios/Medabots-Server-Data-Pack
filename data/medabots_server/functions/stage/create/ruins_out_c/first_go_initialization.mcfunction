function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_out_c/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_out_c/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 1695 68 735 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 1696 70 703 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 1696 69 705 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_out_c/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 1694 70 705 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 1694 69 707 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_out_c/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}