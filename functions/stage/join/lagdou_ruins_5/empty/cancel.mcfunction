execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.lagdou_ruins_5"}]}
execute if entity @s[tag=-1] run data merge block -1345 51 -228 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/sign/generic/no_pvp_on"}}'}
execute if entity @s[tag=-1] run setblock -1345 52 -230 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1342 25 -244 90 0
execute if entity @s[tag=-1] run data merge block -1347 51 -228 {Text1:'{"text":"","clickEvent":{"action":"run_command","value":"function medabots_server:stage/try/lagdou_ruins_5/enter"}}',Text3:'{"translate":"medabots_server:sign.stage.play.main_player"}'}
execute if entity @s[tag=-1] run setblock -1347 52 -230 minecraft:red_wool
execute if entity @s[tag=-1] run scoreboard players set @s Battle 0
execute if entity @s[tag=-1] run tag @s remove -1