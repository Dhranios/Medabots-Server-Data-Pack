playsound medabots_server:music.map_beach_intro music @s[scores={Jukebox=3},advancements={medabots_server:special_items/jukebox/wave_0/map_beach=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=3},advancements={medabots_server:special_items/jukebox/wave_0/map_beach=true}] Music 145
playsound medabots_server:music.medawatch_intro music @s[scores={Jukebox=5},advancements={medabots_server:special_items/jukebox/wave_0/medawatch=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=5},advancements={medabots_server:special_items/jukebox/wave_0/medawatch=true}] Music 75
playsound medabots_server:music.credits_intro music @s[scores={Jukebox=6},advancements={medabots_server:special_items/jukebox/wave_0/credits=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=6},advancements={medabots_server:special_items/jukebox/wave_0/credits=true}] Music 454

scoreboard players operation @s[scores={Music=0}] PrevJukebox = @s Jukebox