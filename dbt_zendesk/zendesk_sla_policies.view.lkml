view: zendesk_sla_policies {
  sql_table_name: "ANALYTICS"."ZENDESK_SLA_POLICIES"
    ;;
  drill_fields: [ticket_id, sla_policy_name, metric]

  dimension: in_business_hours {
    type: yesno
    sql: ${TABLE}."IN_BUSINESS_HOURS" ;;
  }

  dimension: is_active_sla {
    type: yesno
    sql: ${TABLE}."IS_ACTIVE_SLA" ;;
  }

  dimension: is_sla_breach {
    type: yesno
    sql: ${TABLE}."IS_SLA_BREACH" ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}."METRIC" ;;
  }

  dimension_group: sla_applied {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."SLA_APPLIED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: sla_breach {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: CAST(${TABLE}."SLA_BREACH_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: sla_elapsed_time {
    type: number
    sql: ${TABLE}."SLA_ELAPSED_TIME" ;;
  }

  dimension: sla_event_id {
    type: string
    sql: ${TABLE}."SLA_EVENT_ID" ;;
  }

  dimension: sla_policy_name {
    type: string
    sql: ${TABLE}."SLA_POLICY_NAME" ;;
  }

  dimension: target {
    type: number
    sql: ${TABLE}."TARGET" ;;
  }

  dimension: ticket_id {
    type: number
    sql: ${TABLE}."TICKET_ID" ;;
    link: {
      label: "See Ticket Dashboard"
      url: "dashboards/zendesk_block_snowflake::zendesk_ticket?Ticket={{ value }}"
    }
    link: {
      label: "Open in Zendesk"
      url: "https://cytracom.zendesk.com/agent/tickets/{{ value }}"
      icon_url: "https://d1eipm3vz40hy0.cloudfront.net/images/logos/zendesk-favicon.ico"
    }
  }

  measure: count_achieved {
    type: count
    filters: [is_sla_breach: "no"]
  }

  measure: count_breached {
    type: count
    filters: [is_sla_breach: "yes"]
  }

  measure: percent_achieved {
    type: number
    sql: ${count_achieved}/nullif(${count},0) ;;
    value_format_name: percent_1
  }

  measure: count {
    type: count
    drill_fields: [sla_policy_name]
  }
}
