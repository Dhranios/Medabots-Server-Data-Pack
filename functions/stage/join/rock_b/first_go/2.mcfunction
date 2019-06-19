tellraw @s[scores={Dialog=0,Error=0}] {"translate":"medabots_server:message.stage.player.final","color":"green","extra":[{"text":" "},{"translate":"medabots_server:message.stage.player.wait","color":"green"}]}
execute if entity @s[scores={Dialog=0,Error=0}] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.rock","with":[{"text":"B"}]}]}
execute if entity @s[scores={Dialog=0,Error=0}] run data merge block -1603 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[scores={Dialog=0,Error=0}] run setblock -1605 53 -382 minecraft:red_wool
execute if entity @s[scores={Dialog=0,Error=0}] run data merge block -1605 52 -382 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/rock_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[scores={Dialog=0,Error=0}] run setblock -1605 53 -384 minecraft:red_wool
tag @s[scores={Dialog=0,Error=0}] add enemy_medabot
tag @s[scores={Dialog=0,Error=0}] add 2
execute if entity @s[scores={Dialog=0,Error=0}] run function medabots_server:stage/create/rock_b/first_go
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}