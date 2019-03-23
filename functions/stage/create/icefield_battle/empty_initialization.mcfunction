tag @s add -1
tag @s add empty
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/icefield_battle/empty
execute if entity @s[tag=vs_cpus] positioned -1998 45 -612 run function medabots_server:stage/create/icefield_battle/random_cpu
execute if entity @s[tag=!vs_cpus] run teleport @s -1999 51 -608 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1998 53 -634 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1998 52 -632 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/icefield_battle/empty/0\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.icefield_battle"}]}
execute if entity @s[tag=!vs_cpus] run setblock -2000 53 -634 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -2000 52 -632 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/join/icefield_battle/empty/cancel\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.cancel\"}"}
