teleport @s[scores={Dialog=0,Verified=3}] -1997 51 -560 -180 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={rubberobo_leaves_seashore_a=true,vs_squidguts=false}}] run tag @s add dialog_infinity_vs_squidguts
execute if entity @s[advancements={medabots_server:story_progression/infinity={shrimplips_jammy_battle=true,vs_seaslug=false}}] run tag @s add dialog_infinity_vs_seaslug
execute if entity @s[advancements={medabots_server:story_progression/infinity={jaxys_new_look=true,motivated_fight=false}}] run tag @s add dialog_infinity_motivated_fight
execute if entity @s[advancements={medabots_server:story_progression/infinity={sloan_goes_elsewhere=true,vs_screws=false}}] run tag @s add dialog_infinity_vs_screws
execute if entity @s[advancements={medabots_server:story_progression/infinity={seaslug_eliminated=true,vs_jaxy=false}}] run tag @s add dialog_infinity_vs_jaxy