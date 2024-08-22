
# resource "zendesk_organization_field" "foobar" {
#   title = "field"
#   type = "checkbox"
#   key = "foobar"
#   description = "foo bar some desc"
# }

# resource "zendesk_dynamic_content" "foodcnew" {
#   name = "dcutkok"
# }

# resource "zendesk_dynamic_content" "life_isgood" {
#   name = "lifeisgoodright"
# }
# resource "zendesk_dynamic_content_variant" "foobar" {
#   content = "FooBar change is good"
#   locale_id = 2
#   default = true
#   dynamic_content_item_id = zendesk_dynamic_content.life_isgood.id
# }

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

# resource "zendesk_ticket_field"
# resource "zendesk_macro" "temp_utkarsh_test_macro" {
#   title = "NEW: Macro TF name modified"
#   description = "Macro TF description add something"

#   action {
#     field = "subject"
#     value = "foo bar temp terraform"
#   }
#   action {
#     field = "status"
#     value = "solved"
#   }

#   restrictions = [18651233156242, 17784599337874]
# }

resource "zendesk_ticket_field" "checkbox-field3" {
  title                 = "Checkbox Field (this is a test)"
  type                  = "regexp"
  regexp_for_validation = "^foobar$"
  description           = "test here something"
  agent_description     = "agent description change here"
  required              = true
}

resource "zendesk_user_field" "tagger-field" {
  title = "Tagger Field"
  type  = "dropdown"
  key   = "foobar"

  custom_field_option {
    id    = 20907892899730
    name  = "option b here foo bar"
    value = "optb"
  }
  custom_field_option {
    id    = 20909205605650
    name  = "option a"
    value = "opta"
  }


}
