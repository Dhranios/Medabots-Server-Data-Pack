function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s[scores={ArenaType=0}] NeededPlayers 1
scoreboard players set @s[scores={ArenaType=1..3}] NeededPlayers 3
tag @s add main
tag @s[scores={ArenaType=0..2}] add ally_medabot
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/woods_battle/stones
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/woods_battle/try_to_complete
execute if entity @s[tag=!vs_cpus,tag=!random_arena_version] run teleport @s -1949 51 -617 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1948 53 -642 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1948 52 -640 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/woods_battle/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1950 53 -642 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1950 52 -640 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/woods_battle/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
