execute if score #sleep_in_percent bb.players < #minimum_percentage bb.players run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" and ","color":"yellow"},{"score":{"name":"#sleeping","objective":"bb.players"}},{"text":" others are sleeping - ","color":"yellow"},{"score":{"name":"#sleep_percentage","objective":"bb.players"}},{"text":"%"}]

execute if score #sleep_in_percent bb.players >= #minimum_percentage bb.players run tellraw @a [{"selector":"@s","color":"yellow"},{"text":" and ","color":"yellow"},{"score":{"name":"#sleeping","objective":"bb.players"}},{"text":" others are sleeping - ","color":"yellow"},{"text":"100%"}]

execute if score #sleep_in_percent bb.players >= #minimum_percentage bb.players run tellraw @a [{"text":"Fast forward time..","color":"yellow"}]

tag @s add boomber.morpheus.announce_to_chat