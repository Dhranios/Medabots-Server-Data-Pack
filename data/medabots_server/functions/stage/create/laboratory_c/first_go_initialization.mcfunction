function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/laboratory_c/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/create/laboratory_c/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 10 59 21 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 11 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 11 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/laboratory_c/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 9 61 -1 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 9 60 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/laboratory_c/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}