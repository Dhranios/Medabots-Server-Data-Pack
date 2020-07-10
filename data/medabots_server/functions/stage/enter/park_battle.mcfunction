scoreboard players set @s[scores={Dialog=0,Verified=3}] PrevMusicType 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] Music 0
execute in medabots_server:park_battle run teleport @s[scores={Dialog=0,Verified=3}] 24 59 25 -180 0
scoreboard players set @s[scores={Dialog=0,Verified=3}] KillStreak 0
tellraw @s[scores={Dialog=1..}] {"translate":"medabots_server:message.stage.dialog","color":"green"}
execute if entity @s[advancements={medabots_server:story_progression/infinity={spykes_insperation=true,vs_samantha=false}}] run tag @s add dialog_infinity_vs_samantha
execute if entity @s[advancements={medabots_server:story_progression/infinity={rubberobo_leaves_rock_b=true,rubberobo_leaves_seashore_b=true,rubberobo_leaves_ruins_in_b=true,rubberobo_leaves_laboratory_b=true,vs_shrimplips=false}}] run tag @s add dialog_infinity_vs_shrimplips
execute if entity @s[advancements={medabots_server:story_progression/infinity={gillgirls_jammy_battle=true,shrimplips_jammy=false}}] run tag @s add dialog_infinity_shrimplips_jammy
execute if entity @s[advancements={medabots_server:story_progression/infinity={motivated_fight_battle=true,new_look_new_chances=false}}] run tag @s add dialog_infinity_new_look_new_chances
execute if entity @s[advancements={medabots_server:story_progression/infinity={erikas_challenge=true,vs_max=false}}] run tag @s add dialog_infinity_vs_max
execute if entity @s[advancements={medabots_server:story_progression/other={salesman_chameleon_medal=true,salesman_chameleon_medal_vs=false}}] unless entity @s[advancements={medabots_server:story_progression/infinity={erikas_challenge=true,vs_max=false}}] run tag @s add dialog_other_salesman_chameleon_medal_vs
execute if entity @s[advancements={medabots_server:story_progression/infinity={spykes_pass=true,sloans_pass=true,samanthas_pass=true,karins_pass=true,erikas_pass=true,kojis_pass=true}}] unless entity @s[advancements={medabots_server:story_progression/other={salesman_chameleon_medal=true,salesman_chameleon_medal_battle=false}}] run function medabots_server:stage/enter/park_battle_postgame