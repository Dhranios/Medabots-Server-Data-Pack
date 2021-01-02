scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:ruins_battle run teleport @s[scores={Dialog=0,Verified=3}] 20 59 21 -180 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] KillStreak 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={rubberobo_leaves_seashore_a=true,vs_squidguts=false}}] run tag @s add dialog_infinity_vs_squidguts
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={shrimplips_jammy_battle=true,vs_seaslug=false}}] run tag @s add dialog_infinity_vs_seaslug
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={jaxys_new_look=true,motivated_fight=false}}] run tag @s add dialog_infinity_motivated_fight
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={sloan_goes_elsewhere=true,vs_screws=false}}] run tag @s add dialog_infinity_vs_screws
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={seaslug_eliminated=true,vs_jaxy=false}}] run tag @s add dialog_infinity_vs_jaxy
execute if entity @s[scores={Dialog=0,Verified=3},advancements={medabots_server:story_progression/infinity={spykes_pass=true,sloans_pass=true,samanthas_pass=true,karins_pass=true,erikas_pass=true,kojis_pass=true}}] run function medabots_server:stage/enter/ruins_battle_postgame