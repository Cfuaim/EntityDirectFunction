#> entity_direct_function:api/discard
# @api
#
# マップから削除

# インプットのコピー
$data merge storage entity_direct_function:discard {target:{map:"$(map)"}}
# 実行
function entity_direct_function:core/discard/run
data remove storage entity_direct_function:discard target
