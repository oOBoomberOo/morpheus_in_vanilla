#
# <@s> is sleeping - <#bb.mp.percent_needed>%
# <@s> and <#bb.mp.sleep_player-1> others are sleeping - <#bb.mp.percent_needed>%
#

execute if score #bb.mp.sleep_player bb.variable < #bb.mp.player_needed bb.variable if score #bb.mp.sleep_player bb.variable matches ..1 run tellraw @a [{"selector":"@s", "color": "yellow"}, {"text": " is sleeping - ", "color": "yellow"}, {"score":{"name": "#bb.mp.percent_needed", "objective": "bb.variable"}}, {"text": "%", "color": "yellow"}]
execute if score #bb.mp.sleep_player bb.variable < #bb.mp.player_needed bb.variable if score #bb.mp.sleep_player bb.variable matches 2.. run tellraw @a [{"selector":"@s", "color": "yellow"}, {"text": " and ", "color":"yellow"}, {"score":{"name": "#bb.mp.sleep_player-1", "objective": "bb.variable"}}, {"text": " others are sleeping - ", "color": "yellow"}, {"score":{"name":"#bb.mp.percent_needed", "objective": "bb.variable"}}, {"text": "%", "color": "yellow"}]
execute if score #bb.mp.sleep_player bb.variable >= #bb.mp.player_needed bb.variable if score #bb.mp.sleep_player bb.variable matches ..1 run tellraw @a [{"selector":"@s", "color": "yellow"}, {"text": " is sleeping - ", "color":"yellow"}, {"text": "100%", "color": "yellow"}]
execute if score #bb.mp.sleep_player bb.variable >= #bb.mp.player_needed bb.variable if score #bb.mp.sleep_player bb.variable matches 2.. run tellraw @a [{"selector":"@s", "color": "yellow"}, {"text": " and ", "color":"yellow"}, {"score":{"name": "#bb.mp.sleep_player-1", "objective": "bb.variable"}}, {"text": " others are sleeping - ", "color": "yellow"}, {"text": "100%", "color": "yellow"}]

execute if score #bb.mp.sleep_player bb.variable >= #bb.mp.player_needed bb.variable run function boomber:morpheus/chat/fast_forward_time

tag @s add boomber.morpheus.announce_to_chat