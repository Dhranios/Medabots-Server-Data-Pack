playsound medabots_server:music.stage.selection_intro music @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/stage_selection=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=1},advancements={medabots_server:special_items/jukebox/stage_selection=true}] Music 42
playsound medabots_server:music.stage.cleared_intro music @s[scores={Jukebox=2},advancements={medabots_server:special_items/jukebox/stage_cleared=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=2},advancements={medabots_server:special_items/jukebox/stage_cleared=true}] Music 40
playsound medabots_server:music.stage.failed_intro music @s[scores={Jukebox=3},advancements={medabots_server:special_items/jukebox/stage_failed=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=3},advancements={medabots_server:special_items/jukebox/stage_failed=true}] Music 129
playsound medabots_server:music.stage.fly_course_intro music @s[scores={Jukebox=4},advancements={medabots_server:special_items/jukebox/fly_course=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=4},advancements={medabots_server:special_items/jukebox/fly_course=true}] Music 127
playsound medabots_server:music.stage.rock_intro music @s[scores={Jukebox=6},advancements={medabots_server:special_items/jukebox/rock=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=6},advancements={medabots_server:special_items/jukebox/rock=true}] Music 24
playsound medabots_server:music.stage.laboratory_intro music @s[scores={Jukebox=13},advancements={medabots_server:special_items/jukebox/laboratory=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=13},advancements={medabots_server:special_items/jukebox/laboratory=true}] Music 109
playsound medabots_server:music.stage.park_intro music @s[scores={Jukebox=14},advancements={medabots_server:special_items/jukebox/park=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=14},advancements={medabots_server:special_items/jukebox/park=true}] Music 160
playsound medabots_server:music.edit_intro music @s[scores={Jukebox=18},advancements={medabots_server:special_items/jukebox/custom_stage=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=18},advancements={medabots_server:special_items/jukebox/custom_stage=true}] Music 20
playsound medabots_server:music.stage.pvp.ricco_harbor_intro music @s[scores={Jukebox=22},advancements={medabots_server:special_items/jukebox/ricco_harbor=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=22},advancements={medabots_server:special_items/jukebox/ricco_harbor=true}] Music 30
playsound medabots_server:music.stage.pvp.final_destination_1_intro music @s[scores={Jukebox=24},advancements={medabots_server:special_items/jukebox/final_destination_1=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=24},advancements={medabots_server:special_items/jukebox/final_destination_1=true}] Music 30
playsound medabots_server:music.stage.pvp.final_destination_2_intro music @s[scores={Jukebox=25},advancements={medabots_server:special_items/jukebox/final_destination_2=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=25},advancements={medabots_server:special_items/jukebox/final_destination_2=true}] Music 21
playsound medabots_server:music.stage.mt_battle.stage_intro music @s[scores={Jukebox=26},advancements={medabots_server:special_items/jukebox/mt_battle=true}] ~ ~ ~ 1000
scoreboard players set @s[scores={Jukebox=26},advancements={medabots_server:special_items/jukebox/mt_battle=true}] Music 91

scoreboard players operation @s[scores={Music=0},advancements={medabots_server:special_items/jukebox/=true}] PrevJukebox = @s Jukebox