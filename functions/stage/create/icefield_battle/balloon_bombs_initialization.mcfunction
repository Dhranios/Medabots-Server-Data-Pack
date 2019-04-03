tag @s add -1
tag @s add balloon_bombs
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/icefield_battle/balloon_bombs
execute if entity @s[tag=vs_cpus] positioned -1998 45 -612 run function medabots_server:stage/create/icefield_battle/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1999 51 -608 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1998 53 -634 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1998 52 -632 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/icefield_battle/balloon_bombs/0"}}'}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.icefield_battle"}]}
execute if entity @s[tag=!vs_cpus] run setblock -2000 53 -634 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -2000 52 -632 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/join/icefield_battle/balloon_bombs/cancel"}}',Text3:'{"translate":"medabots_server:sign.stage.cancel"}'}
