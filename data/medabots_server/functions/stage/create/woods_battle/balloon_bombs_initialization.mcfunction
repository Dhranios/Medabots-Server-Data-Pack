execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run function medabots_server:gamemodes/default/set_stats
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run scoreboard players set @s StageIndex -1
scoreboard players set @s[scores={ArenaType=0}] NeededPlayers 1
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run scoreboard players set @s[scores={ArenaType=1..3}] NeededPlayers 3
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run tag @s add main
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run tag @s[scores={ArenaType=0..2}] add ally_medabot
execute unless entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run scoreboard players set @s StageVersion 4
execute if entity @s[tag=vs_cpus,scores={ArenaType=0..1}] run function medabots_server:stage/create/woods_battle/balloon_bombs
execute if entity @s[tag=vs_cpus,scores={ArenaType=2..3}] run function medabots_server:stage/sign/generic/missing_cpu_support
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/woods_battle/try_to_complete
execute if entity @s[tag=!vs_cpus,tag=!random_arena_version] run teleport @s -1949 51 -617 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1948 53 -642 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1948 52 -640 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/woods_battle/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1950 53 -642 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1950 52 -640 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/woods_battle/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
