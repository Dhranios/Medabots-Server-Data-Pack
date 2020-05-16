stopsound @s music
execute if entity @s[scores={JukeboxWave=0}] run function medabots_server:other/music/play_jukebox/wave_0
execute if entity @s[scores={JukeboxWave=1}] run function medabots_server:other/music/play_jukebox/wave_1
execute run scoreboard players operation @s PrevMusicType = @s Jukebox