playsound medabots_server:music.stage.selection_intro music @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/wave_0/stage_selection=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/wave_0/stage_selection=true}] Music 42
playsound medabots_server:music.stage.cleared_intro music @s[scores={Jukebox=2},advancements={medabots_server:special_items/jukebox/wave_0/stage_cleared=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=2},advancements={medabots_server:special_items/jukebox/wave_0/stage_cleared=true}] Music 40
playsound medabots_server:music.stage.failed_intro music @s[scores={Jukebox=3},advancements={medabots_server:special_items/jukebox/wave_0/stage_failed=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=3},advancements={medabots_server:special_items/jukebox/wave_0/stage_failed=true}] Music 129
playsound medabots_server:music.stage.fly_course_intro music @s[scores={Jukebox=4},advancements={medabots_server:special_items/jukebox/wave_0/fly_course=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=4},advancements={medabots_server:special_items/jukebox/wave_0/fly_course=true}] Music 127
playsound medabots_server:music.stage.mt_battle_intro music @s[scores={Jukebox=5},advancements={medabots_server:special_items/jukebox/wave_0/mt_battle=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=5},advancements={medabots_server:special_items/jukebox/wave_0/mt_battle=true}] Music 91

scoreboard players operation @s[scores={Music=0}] PrevJukebox = @s Jukebox