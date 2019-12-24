stopsound @s music
execute unless score @s MusicType = @s PrevMusicType run function medabots_server:other/music/play/intro
execute if score @s MusicType = @s PrevMusicType run function medabots_server:other/music/play/loop
scoreboard players operation @s[tag=!not_yet] PrevMusicType = @s MusicType
tag @s remove not_yet