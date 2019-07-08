execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.laboratory","with":[{"text":"C"}]}]}
execute if entity @s[tag=-1] run data merge block -1585 51 -618 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1585 52 -620 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1579 29 -595 90 0
execute if entity @s[tag=-1] run data merge block -1587 51 -617 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/laboratory_c/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1587 52 -619 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1