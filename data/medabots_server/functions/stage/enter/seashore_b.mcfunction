scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:seashore_b run teleport @s[scores={Dialog=0,Verified=3}] 47 59 46 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={shrimplips_is_recruiting=true,rubberobo_enters_seashore_b=false}}] run tag @s add dialog_infinity_rubberobo_enters_seashore_b
execute if entity @s[advancements={medabots_server:story_progression/infinity={haru_and_tune=true,teach_sloan=false}}] run tag @s add dialog_infinity_teach_sloan
execute if entity @s[advancements={medabots_server:story_progression/other={salesman_mermaid_medal_follow=true,salesman_mermaid_medal_burried=false}}] run tag @s add dialog_other_salesman_mermaid_medal_burried