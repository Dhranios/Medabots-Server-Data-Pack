playsound medabots_server:music.entity.dimentio_intro music @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/wave_0/dimentio=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/wave_0/dimentio=true}] Music 29

scoreboard players operation @s[scores={Music=0}] PrevJukebox = @s Jukebox