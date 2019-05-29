execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.park","with":[{"text":"B"}]}]}
execute if entity @s[tag=-1] run data merge block -1810 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1810 53 -732 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1806 37 -682
execute if entity @s[tag=-1] run data merge block -1812 52 -730 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/park_b/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1812 53 -730 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1