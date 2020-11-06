scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:ruins_in_b run teleport @s[scores={Dialog=0,Verified=3}] 46 59 46 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={rubberobo_interview=true,where_is_karin=false}}] run tag @s add dialog_infinity_where_is_karin
execute if entity @s[advancements={medabots_server:story_progression/infinity={shrimplips_is_recruiting=true,rubberobo_enters_ruins_in_b=false}}] run tag @s add dialog_infinity_rubberobo_enters_ruins_in_b
execute if entity @s[advancements={medabots_server:story_progression/other={ruins_in_b_dhranios=false},medabots_server:stages/wave_1/boxer_first_go=true}] run tag @s add dialog_other_ruins_in_b_dhranios