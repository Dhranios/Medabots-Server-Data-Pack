# Close
scoreboard players reset @s EditingTinpet
scoreboard players set @s UsePart 0

tellraw @s {"translate":"medabots_server:message.tinpet.stop_editing","color":"green"}

scoreboard players set @s MusicType 1
scoreboard players set @s Music 0