scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:paradise_a run teleport @s[scores={Dialog=0,Verified=3}] 47 59 47 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={tunes_tinpet=true,seaslug_returns=false}}] run tag @s add dialog_infinity_seaslug_returns
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={harus_tinpet=true,seaslug_returns=false}}] run tag @s add dialog_infinity_seaslug_returns
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/other={salesman_mermaid_medal=true,salesman_mermaid_medal_find=false}}] run tag @s add dialog_other_salesman_mermaid_medal_find