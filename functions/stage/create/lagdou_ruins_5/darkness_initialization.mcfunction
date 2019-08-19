tag @s add -1
tag @s add ally_medabot
scoreboard players set @s StageVersion 2
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/lagdou_ruins_5/darkness
execute if entity @s[tag=vs_cpus] positioned -1345 44 -215 run function medabots_server:stage/create/lagdou_ruins_5/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1346 50 -219 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1345 52 -230 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1345 51 -228 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/lagdou_ruins_5/darkness/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"5"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1347 52 -230 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1347 51 -228 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/lagdou_ruins_5/darkness/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
