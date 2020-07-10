scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:grassland_a run teleport @s[scores={Dialog=0,Verified=3}] 31 59 29 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={opening_battle=true,meet_karin=false}}] run tag @s add dialog_infinity_meet_karin
execute if entity @s[advancements={medabots_server:story_progression/infinity={jammy_explained=true,rubberobo_enters_grassland_a=false}}] run tag @s add dialog_infinity_rubberobo_enters_grassland_a
execute if entity @s[advancements={medabots_server:story_progression/infinity={erika_is_out_of_the_race=true,three_colors=false}}] run tag @s add dialog_infinity_three_colors