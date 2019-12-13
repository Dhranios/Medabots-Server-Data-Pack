function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 2
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/laboratory_d/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/laboratory_d/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1827 50 -767 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1826 52 -809 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1672 53 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/laboratory_d/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1828 52 -808 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1828 51 -806 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/laboratory_d/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
