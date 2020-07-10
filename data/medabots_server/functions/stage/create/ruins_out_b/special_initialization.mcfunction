function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 4
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_out_b/special
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_out_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 46 59 47 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 46 61 -1 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 46 60 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_out_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 44 61 -1 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 44 60 1 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_out_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}