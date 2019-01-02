tellraw @s {"translate":"medabots_server:message.stage.player.final","color":"green","extra":[{"text":" "},{"translate":"medabots_server:message.stage.player.wait","color":"green"}]}
tellraw @a {"translate":"medabots_server:message.stage.players.0","color":"green","with":[{"translate":"medabots_server:location.seashore","with":[{"text":"A"}]}]}
data merge block -1538 52 -247 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.stage.no_pvp_on\\\",\\\"color\\\":\\\"green\\\"}\"}}",Text2:"{\"text\":\" \"}"}
setblock -1538 53 -249 minecraft:red_wool
data merge block -1540 52 -247 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.stage.already_playing\\\",\\\"color\\\":\\\"green\\\"}\"}}",Text3:"{\"translate\":\"medabots_server:sign.stage.play.main_player\"}"}
setblock -1540 53 -249 minecraft:red_wool
tag @s add enemy_medabot
tag @s add 0
function medabots_server:stage/create/seashore_a/first_go