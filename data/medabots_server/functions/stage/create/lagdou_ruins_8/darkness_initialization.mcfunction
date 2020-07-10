function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s[scores={ArenaType=0}] NeededPlayers 1
scoreboard players set @s[scores={ArenaType=1..3}] NeededPlayers 3
tag @s add main
tag @s[scores={ArenaType=0..2}] add ally_medabot
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_8/darkness
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/lagdou_ruins_8/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s 29 58 31 -180 0
execute if entity @s[tag=!vs_cpus] run setblock 30 60 1 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 30 59 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/lagdou_ruins_8/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock 28 60 1 minecraft:stone_button[face=wall,facing=north,powered=true]
execute if entity @s[tag=!vs_cpus] run data merge block 28 59 3 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_8/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}