package main


deny[msg] {
	alert := input.resource.sysdig_monitor_alert_v2_prometheus[name]
	not alert.name
	msg = sprintf("Alert `%v` does not specify a name", [name])
}

deny[msg] {
	alert := input.resource.sysdig_monitor_alert_v2_prometheus[name]
	not alert.group
	msg = sprintf("Alert `%v` does not specify a group attribute", [name])

}
