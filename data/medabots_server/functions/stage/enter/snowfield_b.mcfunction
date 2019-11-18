teleport @s[scores={Dialog=0,Verified=3}] -1715 51 -492 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={max_got_ditched=true,kojis_issue=false}}] run tag @s add dialog_infinity_kojis_issue
execute if entity @s[advancements={medabots_server:story_progression/infinity={peace_kiss_defeated=true,red_pepper=false}}] run tag @s add dialog_infinity_red_pepper
execute if entity @s[advancements={medabots_server:story_progression/infinity={bonus_area_pass=true,sloans_challenge=false}}] run tag @s add dialog_infinity_sloans_challenge