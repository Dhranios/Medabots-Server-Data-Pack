function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 5
tag @s add main
scoreboard players set @s StageVersion 4
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_in_b/dev_fvbico
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/ruins_in_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1620 50 -526 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1619 52 -572 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1619 51 -570 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/ruins_in_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1621 52 -572 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1621 51 -570 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/ruins_in_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
