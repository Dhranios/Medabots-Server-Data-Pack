execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"1"}]}]}
execute if entity @s[tag=-1] run data merge block -1297 52 -115 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1297 53 -117 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1305 25 -75
execute if entity @s[tag=-1] run data merge block -1299 52 -115 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_1/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1299 53 -117 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1