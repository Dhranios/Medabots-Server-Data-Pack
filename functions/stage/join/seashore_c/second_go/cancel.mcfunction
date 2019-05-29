execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.seashore","with":[{"text":"C"}]}]}
execute if entity @s[tag=-1] run data merge block -1540 51 -608 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1540 52 -610 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1535 29 -573
execute if entity @s[tag=-1] run data merge block -1542 51 -608 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/seashore_c/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1542 52 -610 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1