function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 3
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/jungle_a/rubberobo
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/jungle_a/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1674 51 -149 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1672 53 -181 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1672 52 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/jungle_a/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1674 53 -181 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1674 52 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/jungle_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
