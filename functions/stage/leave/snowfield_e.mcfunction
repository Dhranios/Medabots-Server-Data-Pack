teleport @s[tag=!enemy_player,tag=!-1] -367 55 -4
execute unless entity @s[tag=!enemy_player,tag=!-1] run tellraw @s {"translate":"medabots_server:message.stage.cant_leave"}