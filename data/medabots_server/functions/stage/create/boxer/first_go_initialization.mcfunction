function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 8
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/boxer/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/boxer/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1890 50 -571 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1889 52 -605 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1889 51 -603 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/boxer/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1891 52 -605 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1891 51 -603 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/boxer/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
