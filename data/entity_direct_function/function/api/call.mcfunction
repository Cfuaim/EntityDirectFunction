#> entity_direct_function:api/call
# @api
# @input
#   storage entity_direct_function:call { map: "<map_id>"}
# 
# 特定のmapに登録されたfunctionを実行

# マップから実行キューへコピー
$data modify storage entity_direct_function:call root.Queue set from storage entity_direct_function:map $(map)
# 実行
data modify storage entity_direct_function:call root.ProcessedQueue set value []
execute if data storage entity_direct_function:call root.Queue run function entity_direct_function:core/call/while
# 処理済みキューをマップへ戻す
$data modify storage entity_direct_function:map $(map) set from storage entity_direct_function:call root.ProcessedQueue
# ストレージの削除
data remove storage entity_direct_function:call root
