function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 3
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/laboratory_a/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/laboratory_a/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 39 59 36 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 40 60 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 40 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/laboratory_a/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 38 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 38 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/laboratory_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}