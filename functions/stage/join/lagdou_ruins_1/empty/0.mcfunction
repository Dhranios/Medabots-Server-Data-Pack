tellraw @s[scores={Dialog=0,Error=0}] {"translate":"medabots_server:message.stage.player.final","color":"green","extra":[{"text":" "},{"translate":"medabots_server:message.stage.player.wait","color":"green"}]}
execute if entity @s[scores={Dialog=0,Error=0}] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"1"}]}]}
execute if entity @s[scores={Dialog=0,Error=0}] run data merge block -1297 52 -115 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[scores={Dialog=0,Error=0}] run setblock -1297 53 -117 minecraft:red_wool
execute if entity @s[scores={Dialog=0,Error=0}] run data merge block -1299 52 -115 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_1/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[scores={Dialog=0,Error=0}] run setblock -1299 53 -117 minecraft:red_wool
tag @s[scores={Dialog=0,Error=0}] add enemy_medabot
scoreboard players set @s[scores={Dialog=0,Error=0}] StageVersion 1
tag @s[scores={Dialog=0,Error=0}] add 0
execute if entity @s[scores={Dialog=0,Error=0}] run function medabots_server:stage/create/lagdou_ruins_1/empty
scoreboard players set @s[scores={Error=1..}] PreviousError 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}