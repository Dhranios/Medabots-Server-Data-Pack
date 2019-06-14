execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins","with":[{"text":"4"}]}]}
execute if entity @s[tag=-1] run data merge block -1344 52 -133 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1344 53 -135 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1340 25 -142 90 0
execute if entity @s[tag=-1] run data merge block -1346 52 -133 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_4/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1346 53 -135 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1