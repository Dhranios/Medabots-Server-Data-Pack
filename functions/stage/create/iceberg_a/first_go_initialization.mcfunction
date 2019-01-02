execute if entity @s[tag=vs_cpus] run function medabots_server:stage/create/iceberg_a/first_go_cpus
execute if entity @s[tag=!vs_cpus] run teleport @s -1704 50 -221 -180 0
execute if entity @s[tag=!vs_cpus] run tag @s add -1
execute if entity @s[tag=!vs_cpus] run setblock -1703 52 -246 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1703 51 -244 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/iceberg_a/first_go/0\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
execute if entity @s[tag=!vs_cpus] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"A"}]}]}
execute if entity @s[tag=!vs_cpus] run setblock -1705 52 -246 minecraft:redstone_block
execute if entity @s[tag=!vs_cpus] run data merge block -1705 51 -244 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/join/iceberg_a/first_go/cancle\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.cancle\"}"}
