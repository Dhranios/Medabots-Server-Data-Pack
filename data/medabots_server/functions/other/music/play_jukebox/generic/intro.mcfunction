playsound medabots_server:music.map_beach_intro music @s[scores={Jukebox=3},advancements={medabots_server:special_items/jukebox/map_beach=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=3},advancements={medabots_server:special_items/jukebox/map_beach=true}] Music 145
playsound medabots_server:music.map_underground_intro music @s[scores={Jukebox=5},advancements={medabots_server:special_items/jukebox/map_underground=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=5},advancements={medabots_server:special_items/jukebox/map_underground=true}] Music 176
playsound medabots_server:music.medawatch_intro music @s[scores={Jukebox=6},advancements={medabots_server:special_items/jukebox/medawatch=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=6},advancements={medabots_server:special_items/jukebox/medawatch=true}] Music 75

scoreboard players operation @s[scores={Music=0},advancements={medabots_server:special_items/jukebox/=true}] PrevJukebox = @s Jukebox