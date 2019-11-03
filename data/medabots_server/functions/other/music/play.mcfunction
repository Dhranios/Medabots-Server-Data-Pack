stopsound @s music
execute unless score @s MusicType = @s PrevMusicType run function medabots_server:other/music/play/intro
execute if score @s MusicType = @s PrevMusicType run function medabots_server:other/music/play/loop
scoreboard players operation @s PrevMusicType = @s MusicType