org1 = Organization.create(name: "BMW", type: "Service", public_name: "BMW", pricing_policy: "Flexible")

model1 = org1.models.create(name: "serie_1", model_slug: "serie_1")

model1.model_types.create(name: "bmw_116i", model_type_slug: "116i", model_type_code: "bmw116i", base_price: "1000")

model1.model_types.create(name: "bwm_125i", model_type_slug: "125i", model_type_code: "bwm125i", base_price: "1020")


org3 = Organization.create(name: "MEC", type: "Dealer", public_name: "MEC", pricing_policy: "Prestige")
model3 = org3.models.create(name: "serie_3", model_slug: "serie_3")
