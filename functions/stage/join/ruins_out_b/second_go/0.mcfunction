tellraw @s[scores={Dialog=0,Error=0}] {"translate":"medabots_server:message.stage.player.optional","color":"green","extra":[{"text":" "},{"translate":"medabots_server:message.stage.player.wait","color":"green"}]}
execute if entity @s[scores={Dialog=0,Error=0}] run tellraw @a {"translate":"medabots_server:message.stage.players.1","color":"green","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"B"}]}]}
execute if entity @s[scores={Dialog=0,Error=0}] run data merge block -1811 52 -536 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute if entity @s[tag=!enemy_medabot,tag=!-1] run function medabots_server:stage/join/ruins_out_b/second_go/1"}}'}
tag @s[scores={Dialog=0,Error=0}] add enemy_medabot
tag @s[scores={Dialog=0,Error=0}] add 0
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}