teleport @s[tag=!enemy_player,tag=!-1] -453 55 20
execute unless entity @s[tag=!enemy_player,tag=!-1] run tellraw @s {"translate":"medabots_server:message.stage.cant_leave"}