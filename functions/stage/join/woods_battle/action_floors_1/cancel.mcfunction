execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.woods_battle"}]}
execute if entity @s[tag=-1] run data merge block -1948 52 -640 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.stage.no_pvp_on\\\",\\\"color\\\":\\\"green\\\"}\"}}",Text2:"{\"text\":\" \"}"}
execute if entity @s[tag=-1] run setblock -1948 53 -642 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1947 37 -614
execute if entity @s[tag=-1] run data merge block -1950 52 -640 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/try/woods_battle/enter\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.play.main_player\"}"}
execute if entity @s[tag=-1] run setblock -1950 53 -642 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1