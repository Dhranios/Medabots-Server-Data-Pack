tellraw @s[scores={Dialog=0,Error=0}] {"translate":"medabots_server:message.stage.player.mandatory","color":"green","extra":[{"text":" "},{"translate":"medabots_server:message.stage.player.wait","color":"green"}]}
execute if entity @s[scores={Dialog=0,Error=0}] run tellraw @a {"translate":"medabots_server:message.stage.players.more","color":"green","with":[{"translate":"medabots_server:location.laboratory"},{"text":"4"}]}
execute if entity @s[scores={Dialog=0,Error=0}] run data merge block -1889 51 -603 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute if entity @s[scores={Error=0},tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/boxer/second_go/4\"}}",Text2:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set @s[scores={Error=1..}] PreviousError 0\"}}"}
tag @s[scores={Dialog=0,Error=0}] add enemy_medabot
tag @s[scores={Dialog=0,Error=0}] add 3
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}