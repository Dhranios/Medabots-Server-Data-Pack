function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s[scores={ArenaType=0}] NeededPlayers 1
scoreboard players set @s[scores={ArenaType=1..3}] NeededPlayers 3
tag @s add main
tag @s[scores={ArenaType=0..2}] add ally_medabot
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_battle/wind
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_battle/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 20 59 21 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 21 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 21 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_battle/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 19 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 19 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_battle/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}