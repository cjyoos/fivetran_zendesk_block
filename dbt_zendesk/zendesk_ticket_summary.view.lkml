view: zendesk_ticket_summary {
  sql_table_name: "ANALYTICS"."ZENDESK_TICKET_SUMMARY"
    ;;

  dimension: active_agent_count {
    type: number
    sql: ${TABLE}."ACTIVE_AGENT_COUNT" ;;
  }

  dimension: assigned_ticket_count {
    type: number
    sql: ${TABLE}."ASSIGNED_TICKET_COUNT" ;;
  }

  dimension: deleted_ticket_count {
    type: number
    sql: ${TABLE}."DELETED_TICKET_COUNT" ;;
  }

  dimension: deleted_user_count {
    type: number
    sql: ${TABLE}."DELETED_USER_COUNT" ;;
  }

  dimension: end_user_count {
    type: number
    sql: ${TABLE}."END_USER_COUNT" ;;
  }

  dimension: new_ticket_count {
    type: number
    sql: ${TABLE}."NEW_TICKET_COUNT" ;;
  }

  dimension: on_hold_ticket_count {
    type: number
    sql: ${TABLE}."ON_HOLD_TICKET_COUNT" ;;
  }

  dimension: open_ticket_count {
    type: number
    sql: ${TABLE}."OPEN_TICKET_COUNT" ;;
  }

  dimension: pending_ticket_count {
    type: number
    sql: ${TABLE}."PENDING_TICKET_COUNT" ;;
  }

  dimension: problem_ticket_count {
    type: number
    sql: ${TABLE}."PROBLEM_TICKET_COUNT" ;;
  }

  dimension: reassigned_ticket_count {
    type: number
    sql: ${TABLE}."REASSIGNED_TICKET_COUNT" ;;
  }

  dimension: recovered_ticket_count {
    type: number
    sql: ${TABLE}."RECOVERED_TICKET_COUNT" ;;
  }

  dimension: reopened_ticket_count {
    type: number
    sql: ${TABLE}."REOPENED_TICKET_COUNT" ;;
  }

  dimension: solved_ticket_count {
    type: number
    sql: ${TABLE}."SOLVED_TICKET_COUNT" ;;
  }

  dimension: surveyed_satisfaction_ticket_count {
    type: number
    sql: ${TABLE}."SURVEYED_SATISFACTION_TICKET_COUNT" ;;
  }

  dimension: suspended_user_count {
    type: number
    sql: ${TABLE}."SUSPENDED_USER_COUNT" ;;
  }

  dimension: unassigned_unsolved_ticket_count {
    type: number
    sql: ${TABLE}."UNASSIGNED_UNSOLVED_TICKET_COUNT" ;;
  }

  dimension: unreplied_ticket_count {
    type: number
    sql: ${TABLE}."UNREPLIED_TICKET_COUNT" ;;
  }

  dimension: unreplied_unsolved_ticket_count {
    type: number
    sql: ${TABLE}."UNREPLIED_UNSOLVED_TICKET_COUNT" ;;
  }

  dimension: unsolved_ticket_count {
    type: number
    sql: ${TABLE}."UNSOLVED_TICKET_COUNT" ;;
  }

  dimension: user_count {
    type: number
    sql: ${TABLE}."USER_COUNT" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
