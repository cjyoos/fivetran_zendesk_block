project_name: "zendesk_snowflake"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }

constant: schema_name {}

# Name of your company Zendesk instance (i.e. company.zendesk.com)
# Update value below
constant: zendesk_instance_domain {
  value: "cytracom"
}

# Name of your company Looker instance (i.e. company_name.looker.com)
# Update sql value below
constant: looker_instance_domain {
  value: "cytracom"
}

# Once you convert the Dashboard from LookML, the ID of the Zendesk Ticket Detail Dashboard
# Update sql value below to preserve link to this dashboard
constant: zendesk_ticket_detail_dashboard_id {
  value: "6"
}

# Once you convert the Dashboard from LookML, the ID of the Zendesk Ticket Detail Dashboard
# Update sql value below
constant: zendesk_agent_performance_dashboard_id {
  value: "8"
}

# Name of your organization ID in Zendesk instance
# Update value below
constant: internal_organization_id {
  value: "27173710"
}

# Ticket Status Names in Zendesk
# These are unlikely to be different for your organization, but are here in case Zendesk changes any language.
constant: ticket_status_closed {
  value: "closed"
}

constant: ticket_status_deleted {
  value: "deleted"
}

constant: ticket_status_new {
  value: "new"
}

constant: ticket_status_open {
  value: "open"
}

constant: ticket_status_hold {
  value: "hold"
}

constant: ticket_status_solved {
  value: "solved"
}
