execute if entity @s[tag=-1] run tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.iceberg","with":[{"text":"A"}]}]}
execute if entity @s[tag=-1] run data merge block -1703 51 -244 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.stage.no_pvp_on\\\",\\\"color\\\":\\\"green\\\"}\"}}",Text2:"{\"text\":\" \"}"}
execute if entity @s[tag=-1] run setblock -1703 52 -246 minecraft:red_wool
execute if entity @s[tag=-1] run teleport @s -1721 29 -219
execute if entity @s[tag=-1] run data merge block -1705 51 -244 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"function medabots_server:stage/try/iceberg_a/enter\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.play.main_player\"}"}
execute if entity @s[tag=-1] run setblock -1705 52 -246 minecraft:red_wool
execute if entity @s[tag=-1] run tag @s remove -1