view: zendesk_ticket_field_history {
  sql_table_name: "ANALYTICS"."ZENDESK_TICKET_FIELD_HISTORY"
    ;;

  dimension: assignee_id {
    type: string
    sql: ${TABLE}."ASSIGNEE_ID" ;;
  }

  dimension_group: date_day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE_DAY" ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: ticket_day_id {
    type: string
    sql: ${TABLE}."TICKET_DAY_ID" ;;
  }

  dimension: ticket_id {
    type: number
    sql: ${TABLE}."TICKET_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
