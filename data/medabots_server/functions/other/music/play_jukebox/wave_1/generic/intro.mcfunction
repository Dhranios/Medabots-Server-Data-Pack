playsound medabots_server:music.map_underground_intro music @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/wave_1/map_underground=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/wave_1/map_underground=true}] Music 176

scoreboard players operation @s[scores={Music=0}] PrevJukebox = @s Jukebox