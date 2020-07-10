function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_in_b/second_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_in_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 46 59 46 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 47 61 0 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 47 60 2 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 45 61 0 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 45 60 2 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_in_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}