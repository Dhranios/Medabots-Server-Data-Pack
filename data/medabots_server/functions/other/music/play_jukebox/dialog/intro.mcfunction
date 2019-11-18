playsound medabots_server:music.entity.select_corps_intro music @s[scores={Jukebox=2},advancements={medabots_server:special_items/jukebox/select_corps=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=2},advancements={medabots_server:special_items/jukebox/select_corps=true}] Music 70
playsound medabots_server:music.entity.doctor_haru.evil_intro music @s[scores={Jukebox=7},advancements={medabots_server:special_items/jukebox/evil_haru=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=7},advancements={medabots_server:special_items/jukebox/evil_haru=true}] Music 97
playsound medabots_server:music.entity.koji_intro music @s[scores={Jukebox=9},advancements={medabots_server:special_items/jukebox/koji=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=9},advancements={medabots_server:special_items/jukebox/koji=true}] Music 136
playsound medabots_server:music.entity.screws_intro music @s[scores={Jukebox=13},advancements={medabots_server:special_items/jukebox/screws=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=13},advancements={medabots_server:special_items/jukebox/screws=true}] Music 62
playsound medabots_server:music.entity.rubberobo_intro music @s[scores={Jukebox=14},advancements={medabots_server:special_items/jukebox/rubberobo=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=14},advancements={medabots_server:special_items/jukebox/rubberobo=true}] Music 62
playsound medabots_server:music.entity.king_pharaoh_intro music @s[scores={Jukebox=18},advancements={medabots_server:special_items/jukebox/three_colors=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=18},advancements={medabots_server:special_items/jukebox/three_colors=true}] Music 335
playsound medabots_server:music.map_welcome_underground_intro music @s[scores={Jukebox=19},advancements={medabots_server:special_items/jukebox/enter_the_underground=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=19},advancements={medabots_server:special_items/jukebox/enter_the_underground=true}] Music 308

scoreboard players operation @s[scores={Music=0},advancements={medabots_server:special_items/jukebox/=true}] PrevJukebox = @s Jukebox