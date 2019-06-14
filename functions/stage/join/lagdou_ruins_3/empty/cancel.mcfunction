execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"3"}]}]}
execute if entity @s[tag=-1] run data merge block -1226 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1226 53 -60 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1226 25 -26 90 0
execute if entity @s[tag=-1] run data merge block -1228 52 -58 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_3/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1228 53 -60 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1