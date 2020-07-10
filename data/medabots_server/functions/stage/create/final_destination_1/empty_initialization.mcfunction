function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s[scores={ArenaType=0}] NeededPlayers 1
scoreboard players set @s[scores={ArenaType=1..3}] NeededPlayers 3
tag @s add main
tag @s[scores={ArenaType=0..2}] add ally_medabot
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/final_destination_1/empty
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/final_destination_1/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 25 43 34 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 52 45 35 minecraft:stone_button[face=wall,facing=east,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 50 44 35 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/final_destination_1/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 52 45 33 minecraft:stone_button[face=wall,facing=east,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 50 44 33 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/final_destination_1/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}