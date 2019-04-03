execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.ricco_harbor"}]}
execute if entity @s[tag=-1] run data merge block -1439 52 -210 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1439 53 -212 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1432 2 -162
execute if entity @s[tag=-1] run data merge block -1441 52 -210 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ricco_harbor/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1441 53 -212 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1