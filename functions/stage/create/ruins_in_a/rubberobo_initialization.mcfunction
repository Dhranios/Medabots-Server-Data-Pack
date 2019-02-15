tag @s add -1
execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/ruins_in_a/rubberobo
execute if entity @s[tag=!vs_cpus] run teleport @s -1683 50 -259 -180 0
execute if entity @s[tag=!vs_cpus] run setblock -1680 52 -277 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1682 51 -277 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/ruins_in_a/rubberobo/0\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"A"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1685 52 -277 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1683 51 -277 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/join/ruins_in_a/rubberobo/cancel\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.cancel\"}"}
