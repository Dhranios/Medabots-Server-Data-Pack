function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_out_c/second_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_out_c/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 30 59 31 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 31 61 -1 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 31 60 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_out_c/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 29 61 1 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 29 60 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_out_c/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}