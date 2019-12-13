function medabots_server:gamemodes/default/set_stats
scoreboard players set @s StageIndex -1
scoreboard players set @s NeededPlayers 3
tag @s add main
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/jungle_b/first_go
execute if entity @s[tag=!vs_cpus] run function medabots_server:stage/join/jungle_b/try_to_complete
execute if entity @s[tag=!vs_cpus] run teleport @s -1620 51 -431 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1619 53 -479 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1672 53 -179 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/jungle_b/try"}}'}
execute if entity @s[tag=!vs_cpus] run setblock -1621 53 -479 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1621 52 -477 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/jungle_b/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
