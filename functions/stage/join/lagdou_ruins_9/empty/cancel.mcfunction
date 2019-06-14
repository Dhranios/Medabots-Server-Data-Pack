execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"9"}]}]}
execute if entity @s[tag=-1] run data merge block -1287 52 -279 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1287 53 -281 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1280 25 -247 90 0
execute if entity @s[tag=-1] run data merge block -1289 52 -279 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_9/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1289 53 -281 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1