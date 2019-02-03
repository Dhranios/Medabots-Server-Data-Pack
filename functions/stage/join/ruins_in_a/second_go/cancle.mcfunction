execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.ruins_in","with":[{"text":"A"}]}]}
execute if entity @s[tag=-1] run data merge block -1682 51 -277 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.stage.no_pvp_on\\\",\\\"color\\\":\\\"green\\\"}\"}}",Text2:"{\"text\":\" \"}"}
execute if entity @s[tag=-1] run setblock -1680 52 -277 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1584 37 -142
execute if entity @s[tag=-1] run data merge block -1683 51 -277 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/try/ruins_in_a/enter\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.play.main_player\"}"}
execute if entity @s[tag=-1] run setblock -1685 52 -277 minecraft:red_wool
execute if entity @s[tag=-1] run tag @a[x=-1729,y=50,z=-344,dx=90,dy=4,dz=92,tag=0] remove 0
execute if entity @s[tag=-1] run tag @s remove -1

execute if entity @s[tag=0] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.ruins_in","with":[{"text":"A"}]},{"text":"2"}]}
execute if entity @s[tag=0] run data merge block -1682 51 -277 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/ruins_in_a/second_go/0\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
execute if entity @s[tag=0] run tag @s remove 0