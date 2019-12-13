function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 3
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/laboratory_a/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/laboratory_a/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1772 50 -285 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1771 51 -323 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1771 51 -321 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/laboratory_a/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1773 52 -323 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1773 51 -321 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/laboratory_a/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
