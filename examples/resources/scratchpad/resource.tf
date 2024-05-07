
# resource "zendesk_organization_field" "foobar" {
#   title = "field"
#   type = "checkbox"
#   key = "foobar"
#   description = "foo bar some desc"
# }

resource "zendesk_dynamic_content" "foodc" {
  name = "dc utk snow"
  content = "utk snow snow snow "
  locale_id = 1
}