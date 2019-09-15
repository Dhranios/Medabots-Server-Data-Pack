# Close
scoreboard players reset @s EditingTinpet
scoreboard players set @s UsePart 0

tellraw @s {"translate":"medabots_server:message.tinpet.stop_editing","color":"green"}

scoreboard players operation @s MusicType = @s OldMusicType
scoreboard players set @s Music 0
scoreboard players reset @s OldMusicType