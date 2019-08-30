function medabots_server:gamemodes/default/set_stats
tag @s add -1
tag @s add ally_medabot
scoreboard players set @s StageVersion 1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_7/empty
execute if entity @s[tag=vs_cpus] positioned -1245 44 -150 run function medabots_server:stage/create/lagdou_ruins_7/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1280 51 -171 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1279 53 -180 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1279 52 -178 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/lagdou_ruins_7/empty/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"7"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1281 53 -180 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1281 52 -178 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_7/empty/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
