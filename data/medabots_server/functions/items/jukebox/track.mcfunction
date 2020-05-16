scoreboard players set @s Music 0
scoreboard players set @s PrevMusicType 0
execute if entity @s[scores={JukeboxWave=0}] run function medabots_server:items/jukebox/track/wave_0
execute if entity @s[scores={JukeboxWave=1}] run function medabots_server:items/jukebox/track/wave_1