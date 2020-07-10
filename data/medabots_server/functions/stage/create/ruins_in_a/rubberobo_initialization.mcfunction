function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 3
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_in_a/rubberobo
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_in_a/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 46 59 86 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 49 61 68 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 47 60 68 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_a/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 44 61 68 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 46 60 68 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_in_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}