execute if entity @s[scores={JukeboxChannel=0}] unless score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/wave_1/generic/intro
execute if entity @s[scores={JukeboxChannel=0}] if score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/wave_1/generic/loop
execute if entity @s[scores={JukeboxChannel=1}] unless score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/wave_1/battle/intro
execute if entity @s[scores={JukeboxChannel=1}] if score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/wave_1/battle/loop
execute if entity @s[scores={JukeboxChannel=2}] unless score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/wave_1/stage/intro
execute if entity @s[scores={JukeboxChannel=2}] if score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/wave_1/stage/loop
execute if entity @s[scores={JukeboxChannel=3}] unless score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/wave_1/boss/intro
execute if entity @s[scores={JukeboxChannel=3}] if score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/wave_1/boss/loop
execute if entity @s[scores={JukeboxChannel=4}] unless score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/wave_1/dialog/intro
execute if entity @s[scores={JukeboxChannel=4}] if score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/wave_1/dialog/loop