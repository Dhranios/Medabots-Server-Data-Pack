function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s[scores={ArenaType=0}] NeededPlayers 1
scoreboard players set @s[scores={ArenaType=1..3}] NeededPlayers 3
tag @s add main
tag @s[scores={ArenaType=0..2}] add ally_medabot
scoreboard players set @s StageVersion 4
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/icefield_battle/locked_out
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/icefield_battle/try_to_complete
execute if entity @s[tag=!vs_cpus,tag=!random_arena_version] run teleport @s -1999 51 -608 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1998 53 -634 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1998 52 -632 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/icefield_battle/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -2000 53 -634 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -2000 52 -632 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/icefield_battle/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
