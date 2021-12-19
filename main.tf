locals {
  timestamp      = timestamp()
  timestamp_no_t = replace(local.timestamp, "T", "")
  timestamp_no_z = replace(local.timestamp_no_t, "Z", "")

  date-created = local.timestamp_no_z

  #Some of these ternary conditionals are unecessary but leave as-is so we can modify "optional" as-needed
  default_tags = zipmap(
    compact(
      [
        var.environment != "" ? "environment" : "",
        var.project-name != "" ? "project-name" : "",
        var.back-up != "" ? "back-up" : "",
        var.monitoring != "" ? "monitoring" : "",
        var.patching != "" ? "patching" : "",
        var.subscription-type != "" ? "subscription-type" : "",
      ],
    ),
    compact(
      [
        var.environment,
        var.project-name,
        var.back-up,
        var.monitoring,
        var.patching,
        var.subscription-type,
      ],
    ),
  )
}
