function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s[scores={ArenaType=0}] NeededPlayers 1
scoreboard players set @s[scores={ArenaType=1..3}] NeededPlayers 3
tag @s add main
tag @s[scores={ArenaType=0..2}] add ally_medabot
scoreboard players set @s StageVersion 7
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/woods_battle/cannons
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/woods_battle/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 23 59 23 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 24 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 24 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/woods_battle/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 22 61 -2 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 22 60 0 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/woods_battle/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}