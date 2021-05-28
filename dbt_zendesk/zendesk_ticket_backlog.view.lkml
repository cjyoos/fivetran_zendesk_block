view: zendesk_ticket_backlog {
  sql_table_name: "ANALYTICS"."ZENDESK_TICKET_BACKLOG"
    ;;

  dimension: assignee_name {
    type: string
    sql: ${TABLE}."ASSIGNEE_NAME" ;;
  }

  dimension: created_channel {
    type: string
    sql: ${TABLE}."CREATED_CHANNEL" ;;
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

  dimension: ticket_id {
    type: number
    sql: ${TABLE}."TICKET_ID" ;;
  }

  measure: count {
    type: count
    drill_fields: [assignee_name]
  }
}
