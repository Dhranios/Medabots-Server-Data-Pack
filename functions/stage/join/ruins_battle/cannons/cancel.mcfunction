execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.ruins_battle"}]}
execute if entity @s[tag=-1] run data merge block -1996 52 -581 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1996 53 -583 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1995 37 -557
execute if entity @s[tag=-1] run data merge block -1998 52 -581 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/ruins_battle/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1998 53 -583 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1