function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add main
tag @s add ally_medabot
scoreboard players set @s StageVersion 4
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/woods_battle/balloon_bombs
execute if entity @s[tag=vs_cpus] positioned -1954 45 -616 rotated -90 0 run function medabots_server:stage/create/woods_battle/random_cpu
execute if entity @s[tag=!vs_cpus,tag=!random_arena_version] run teleport @s -1949 51 -617 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1948 53 -642 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1948 52 -640 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot] run function medabots_server:stage/join/woods_battle/balloon_bombs/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.woods_battle"}]}
execute if entity @s[tag=!vs_cpus] run setblock -1950 53 -642 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1950 52 -640 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/woods_battle/balloon_bombs/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
