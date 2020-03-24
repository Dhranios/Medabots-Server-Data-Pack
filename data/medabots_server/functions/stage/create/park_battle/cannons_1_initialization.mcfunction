function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s[scores={ArenaType=0}] NeededPlayers 1
scoreboard players set @s[scores={ArenaType=1..3}] NeededPlayers 3
tag @s add main
tag @s[scores={ArenaType=0..2}] add ally_medabot
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/park_battle/cannons_1
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/park_battle/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1949 51 -564 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1948 53 -591 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1948 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/park_battle/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1950 53 -591 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1950 52 -589 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/park_battle/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
