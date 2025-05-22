# エンティティから実行されているか
execute unless entity @s run return fail

# UUIDの取得
tag @s add entity_direct_function.resolve
execute at @s summon minecraft:text_display run function entity_direct_function:core/common/resolve
tag @s remove entity_direct_function.resolve
data modify storage entity_direct_function:register entry.instance.entity set from storage entity_direct_function:core resolve

# エントリー
function entity_direct_function:core/register/entry with storage entity_direct_function:register entry

# 生存フラグの設定
scoreboard players set @s entity_direct_function.alive 0
