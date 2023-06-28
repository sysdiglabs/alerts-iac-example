package main

test_alert_name {
	cfg := parse_config("hcl2", `
		resource "sysdig_monitor_alert_v2_prometheus" "name" {
			group = "foo"
		}
	`)
	deny["Alert `name` does not specify a name"] with input as cfg
}

test_team_name {
	cfg := parse_config("hcl2", `
		resource "sysdig_monitor_alert_v2_prometheus" "name" {
			name = "foo"
		}
	`)
	deny["Alert `name` does not specify a group attribute"] with input as cfg
}