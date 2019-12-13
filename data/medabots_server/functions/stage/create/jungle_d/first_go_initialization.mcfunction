function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/jungle_d/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/jungle_d/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1635 51 -738 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1634 53 -770 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1634 52 -768 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/jungle_d/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1636 53 -770 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1636 52 -768 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/jungle_d/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
