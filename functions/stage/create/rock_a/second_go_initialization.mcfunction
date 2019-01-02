execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/rock_a/second_go_cpus
execute if entity @s[tag=!vs_cpus] run teleport @s -1604 51 -149 -180 0
execute if entity @s[tag=!vs_cpus] run tag @s add -1
execute if entity @s[tag=!vs_cpus] run setblock -1603 53 -182 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1603 52 -180 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/rock_a/second_go/0\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.rock","with":[{"text":"A"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1605 53 -182 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1605 52 -180 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/join/rock_a/second_go/cancle\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.cancle\"}"}
