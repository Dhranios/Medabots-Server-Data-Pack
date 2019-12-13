function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 3
tag @s add main
scoreboard players set @s StageVersion 3
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/rock_b/rubberobo
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/rock_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1603 51 -351 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1603 53 -384 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1603 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/rock_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1605 53 -384 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1605 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/rock_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
