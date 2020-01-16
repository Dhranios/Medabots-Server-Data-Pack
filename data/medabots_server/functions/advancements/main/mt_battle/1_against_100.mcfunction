tellraw @s {"translate":"medabots_server:advancements.get.tinpet","with":[{"translate":"medabots_server:item.neutral_tinpet"}],"extra":[{"text":"\n"},{"translate":"medabots_server:advancements.get.rank","with":[{"translate":"medabots_server:scoreboard.team.mt_battle_master"}]}]}
scoreboard players set @s MtBattle 1
function medabots_server:give_items/tinpet/neutral
advancement grant @s only medabots_server:special_items/stars/top_tier_ranking