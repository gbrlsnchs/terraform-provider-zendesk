
# resource "zendesk_organization_field" "foobar" {
#   title = "field"
#   type = "checkbox"
#   key = "foobar"
#   description = "foo bar some desc"
# }

resource "zendesk_dynamic_content" "foodcnew" {
  name = "dcutkok"
}

resource "zendesk_dynamic_content" "life_isgood" {
  name = "lifeisgoodright"
}
resource "zendesk_dynamic_content_variant" "foobar" {
  content = "FooBar change is good"
  locale_id = 2
  default = true
  dynamic_content_item_id = zendesk_dynamic_content.life_isgood.id
}

# resource "zendesk_dynamic_content" "better" {
#   name = "better"
# }

# resource "zendesk_dynamic_content_variant" "better_content" {
#   content = "Some data here is template good"
#   locale_id = 1
#   default = true 
#   dynamic_content_item_id = 18847895265170
# }

# resource "zendesk_dynamic_content_variant" "foobaranother" {
#   content = "foo bar is here right??? new"
#   locale_id = 1
#   default = true
#   dynamic_content_item_id = zendesk_dynamic_content.life_isgood.id
# }