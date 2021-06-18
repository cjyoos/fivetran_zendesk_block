connection: "snowflake_prod_analytics"

include: "/dbt_zendesk/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard


explore: zendesk_ticket_metrics {
  join: zendesk_sla_policies {
    type: left_outer
    sql_on: ${zendesk_ticket_metrics.ticket_id} = ${zendesk_sla_policies.ticket_id} ;;
    relationship: one_to_many
  }
}


# explore: zendesk_sla_policies {}
