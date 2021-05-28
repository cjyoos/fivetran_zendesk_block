view: zendesk_sla_policies {
  sql_table_name: "ANALYTICS"."ZENDESK_SLA_POLICIES"
    ;;

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
  }

  measure: count {
    type: count
    drill_fields: [sla_policy_name]
  }
}
