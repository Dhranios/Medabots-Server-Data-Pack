execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.ruins_out","with":[{"text":"A"}]}]}
execute if entity @s[tag=-1] run data merge block -1569 52 -315 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.stage.no_pvp_on\\\",\\\"color\\\":\\\"green\\\"}\"}}",Text2:"{\"text\":\" \"}"}
execute if entity @s[tag=-1] run setblock -1569 52 -317 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1566 37 -282
execute if entity @s[tag=-1] run data merge block -1571 52 -315 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/try/ruins_out_a/enter\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.play.main_player\"}"}
execute if entity @s[tag=-1] run setblock -1571 52 -317 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1