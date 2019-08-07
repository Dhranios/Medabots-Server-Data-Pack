tag @s add -1
tag @s add special
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/grassland_a/special
execute if entity @s[tag=!vs_cpus] run teleport @s -1539 51 -151 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1538 53 -182 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1538 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!medabot,tag=!-1] run function medabots_server:stage/join/grassland_a/special/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"A"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1540 53 -182 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1540 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/grassland_a/special/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
