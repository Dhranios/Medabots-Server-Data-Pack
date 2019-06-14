execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"10"}]}]}
execute if entity @s[tag=-1] run data merge block -1360 52 -114 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1360 53 -116 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1358 25 -82 90 0
execute if entity @s[tag=-1] run data merge block -1362 52 -114 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_10/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1362 53 -116 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1