execute if entity @s[scores={Dialog=2}] run playsound medabots_server:entity.mr_referee.intro.6 voice @a[tag=this_robattle] ~ ~ ~ 1000
execute if entity @s[scores={Dialog=2}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.6.1"}]}
execute if entity @s[scores={Dialog=50}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.6.2"}]}
execute if entity @s[scores={Dialog=120}] run tellraw @a[tag=this_robattle] {"translate":"chat.type.text","with":[{"translate":"medabots_server:entity.mr_referee","color":"green"},{"translate":"medabots_server:dialog.mr_referee.6.3"}]}
tag @s[scores={Dialog=150}] add done
scoreboard players set @s[scores={Dialog=150}] Dialog 0