function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 5
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/laboratory_b/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/laboratory_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1727 50 -575 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1726 52 -606 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1726 51 -604 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/laboratory_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1728 52 -606 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1728 51 -604 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/laboratory_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
