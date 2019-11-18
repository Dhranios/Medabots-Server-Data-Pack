stopsound @s music
execute if entity @s[scores={JukeboxChannel=0}] unless score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/generic/intro
execute if entity @s[scores={JukeboxChannel=0}] if score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/generic/loop
execute if entity @s[scores={JukeboxChannel=1}] unless score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/battle/intro
execute if entity @s[scores={JukeboxChannel=1}] if score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/battle/loop
execute if entity @s[scores={JukeboxChannel=2}] unless score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/stage/intro
execute if entity @s[scores={JukeboxChannel=2}] if score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/stage/loop
execute if entity @s[scores={JukeboxChannel=3}] unless score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/boss/intro
execute if entity @s[scores={JukeboxChannel=3}] if score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/boss/loop
execute if entity @s[scores={JukeboxChannel=4}] unless score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/dialog/intro
execute if entity @s[scores={JukeboxChannel=4}] if score @s Jukebox = @s PrevMusicType run function medabots_server:other/music/play_jukebox/dialog/loop
execute run scoreboard players operation @s PrevMusicType = @s Jukebox