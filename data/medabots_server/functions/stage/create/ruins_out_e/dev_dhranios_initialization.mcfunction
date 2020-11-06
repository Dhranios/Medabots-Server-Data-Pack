function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 5
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_out_e/dev_dhranios
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_out_e/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 30 59 47 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 31 61 0 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 31 60 2 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_out_e/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 31 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 31 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_out_e/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}