execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.grassland","with":[{"text":"A"}]}]}
execute if entity @s[tag=-1] run data merge block -1538 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1538 53 -182 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1531 37 -169 90 0
execute if entity @s[tag=-1] run data merge block -1605 52 -180 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/grassland_a/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1605 53 -182 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1