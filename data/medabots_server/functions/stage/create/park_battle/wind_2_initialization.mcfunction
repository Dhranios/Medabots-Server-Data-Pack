function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s[scores={ArenaType=0}] NeededPlayers 1
scoreboard players set @s[scores={ArenaType=1..3}] NeededPlayers 3
tag @s add main
tag @s[scores={ArenaType=0..2}] add ally_medabot
scoreboard players set @s StageVersion 8
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/park_battle/wind_2
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/park_battle/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 24 59 25 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 25 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 25 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/park_battle/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 23 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 23 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/park_battle/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}