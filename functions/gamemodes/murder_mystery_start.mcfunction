# Tag remainders as inocent
tag @s[tag=!murderer,tag=!sheriff] add inocent
title @s[tag=murderer] title {"translate":"medabots_server:message.gamemode.murder_mystery.murderer","color":"red"}
title @s[tag=sheriff] title {"translate":"medabots_server:message.gamemode.murder_mystery.sheriff","color":"gold"}
title @s[tag=inocent] title {"translate":"medabots_server:message.gamemode.murder_mystery.inocent","color":"green"}
