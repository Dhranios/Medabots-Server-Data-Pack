teleport @s[scores={Error=0},gamemode=adventure] -1537 37 -217
execute if entity @s[scores={Error=0},gamemode=adventure] run data merge block -1540 52 -247 {Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @s {\\\"translate\\\":\\\"medabots_server:message.stage.already_playing\\\",\\\"color\\\":\\\"green\\\"}\"}}"}
execute if entity @s[scores={Error=0},gamemode=adventure] run setblock -1540 53 -249 minecraft:red_wool
scoreboard players set @s[scores={Error=0},gamemode=adventure] Music 0
scoreboard players set @s[scores={Error=0},gamemode=adventure] MusicType 4
scoreboard players set @s[scores={Error=1..}] PreviousError 0