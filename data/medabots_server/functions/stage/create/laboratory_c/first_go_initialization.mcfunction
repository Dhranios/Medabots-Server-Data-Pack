function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 1
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/laboratory_c/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/create/laboratory_c/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1586 50 -599 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1585 52 -622 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1585 51 -620 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/laboratory_c/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1587 52 -621 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1587 51 -619 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/laboratory_c/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
