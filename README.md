# README

## api

### get
`/api/v1/products`
product全件取得

`/api/v1/products/:product_id`
product1件取得

`/api/v1/shops`
shop全件取得

`/api/v1/shops/:shop_id`
shop1件取得

`/api/v1/shops/:id/products`
shopに属しているproduct 全県取得

### post
`/api/v1/products`
`params:product[name], product[price], product[shop_id]`
productをcreate

`/api/v1/shops`
`params:shop[name]`
shopをcreate

### put
`/api/v1/products/:product_id`
`params:product[name], product[price], product[shop_id]`
productをcreate

`/api/v1/shops/:shop_id`
`params:shop[name]`
shopをcreate

### delete
`/api/v1/products/:product_id`

`/api/v1/shops/:shop_id`
