view: zendesk_ticket_metrics {
  sql_table_name: "ANALYTICS"."ZENDESK_TICKET_METRICS"
    ;;

  dimension_group: _fivetran_synced {
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
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: agent_wait_time_in_business_minutes {
    type: number
    sql: ${TABLE}."AGENT_WAIT_TIME_IN_BUSINESS_MINUTES" ;;
  }

  dimension: agent_wait_time_in_calendar_minutes {
    type: number
    sql: ${TABLE}."AGENT_WAIT_TIME_IN_CALENDAR_MINUTES" ;;
  }

  dimension: agent_work_time_in_business_minutes {
    type: number
    sql: ${TABLE}."AGENT_WORK_TIME_IN_BUSINESS_MINUTES" ;;
  }

  dimension: agent_work_time_in_calendar_minutes {
    type: number
    sql: ${TABLE}."AGENT_WORK_TIME_IN_CALENDAR_MINUTES" ;;
  }

  dimension: assignee_email {
    type: string
    sql: ${TABLE}."ASSIGNEE_EMAIL" ;;
  }

  dimension: assignee_external_id {
    type: string
    sql: ${TABLE}."ASSIGNEE_EXTERNAL_ID" ;;
  }

  dimension: assignee_id {
    type: number
    sql: ${TABLE}."ASSIGNEE_ID" ;;
  }

  dimension: assignee_last_login_age_minutes {
    type: number
    sql: ${TABLE}."ASSIGNEE_LAST_LOGIN_AGE_MINUTES" ;;
  }

  dimension_group: assignee_last_login {
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
    sql: CAST(${TABLE}."ASSIGNEE_LAST_LOGIN_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: assignee_locale {
    type: string
    sql: ${TABLE}."ASSIGNEE_LOCALE" ;;
  }

  dimension: assignee_name {
    type: string
    sql: ${TABLE}."ASSIGNEE_NAME" ;;
  }

  dimension: assignee_role {
    type: string
    sql: ${TABLE}."ASSIGNEE_ROLE" ;;
  }

  dimension: assignee_stations_count {
    type: number
    sql: ${TABLE}."ASSIGNEE_STATIONS_COUNT" ;;
  }

  dimension: assignee_tag {
    type: string
    sql: ${TABLE}."ASSIGNEE_TAG" ;;
  }

  dimension_group: assignee_ticket_last_update {
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
    sql: CAST(${TABLE}."ASSIGNEE_TICKET_LAST_UPDATE_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: assignee_ticket_update_count {
    type: number
    sql: ${TABLE}."ASSIGNEE_TICKET_UPDATE_COUNT" ;;
  }

  dimension: assignee_time_zone {
    type: string
    sql: ${TABLE}."ASSIGNEE_TIME_ZONE" ;;
  }

  dimension: brand_id {
    type: number
    sql: ${TABLE}."BRAND_ID" ;;
  }

  dimension: count_agent_comments {
    type: number
    sql: ${TABLE}."COUNT_AGENT_COMMENTS" ;;
  }

  dimension: count_end_user_comments {
    type: number
    sql: ${TABLE}."COUNT_END_USER_COMMENTS" ;;
  }

  dimension: count_internal_comments {
    type: number
    sql: ${TABLE}."COUNT_INTERNAL_COMMENTS" ;;
  }

  dimension: count_public_comments {
    type: number
    sql: ${TABLE}."COUNT_PUBLIC_COMMENTS" ;;
  }

  dimension: count_reopens {
    type: number
    sql: ${TABLE}."COUNT_REOPENS" ;;
  }

  dimension: count_resolutions {
    type: number
    sql: ${TABLE}."COUNT_RESOLUTIONS" ;;
  }

  dimension_group: created {
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
    sql: CAST(${TABLE}."CREATED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: created_channel {
    type: string
    sql: ${TABLE}."CREATED_CHANNEL" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension_group: due {
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
    sql: CAST(${TABLE}."DUE_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: external_id {
    type: string
    sql: ${TABLE}."EXTERNAL_ID" ;;
  }

  dimension: final_resolution_calendar_minutes {
    type: number
    sql: ${TABLE}."FINAL_RESOLUTION_CALENDAR_MINUTES" ;;
  }

  dimension_group: first_agent_assignment {
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
    sql: CAST(${TABLE}."FIRST_AGENT_ASSIGNMENT_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: first_assignee_id {
    type: string
    sql: ${TABLE}."FIRST_ASSIGNEE_ID" ;;
  }

  dimension: first_assignment_to_resolution_calendar_minutes {
    type: number
    sql: ${TABLE}."FIRST_ASSIGNMENT_TO_RESOLUTION_CALENDAR_MINUTES" ;;
  }

  dimension: first_reply_time_business_minutes {
    type: number
    sql: ${TABLE}."FIRST_REPLY_TIME_BUSINESS_MINUTES" ;;
  }

  dimension: first_reply_time_calendar_minutes {
    type: number
    sql: ${TABLE}."FIRST_REPLY_TIME_CALENDAR_MINUTES" ;;
  }

  dimension: first_resolution_business_minutes {
    type: number
    sql: ${TABLE}."FIRST_RESOLUTION_BUSINESS_MINUTES" ;;
  }

  dimension: first_resolution_calendar_minutes {
    type: number
    sql: ${TABLE}."FIRST_RESOLUTION_CALENDAR_MINUTES" ;;
  }

  dimension_group: first_solved {
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
    sql: CAST(${TABLE}."FIRST_SOLVED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: full_resolution_business_minutes {
    type: number
    sql: ${TABLE}."FULL_RESOLUTION_BUSINESS_MINUTES" ;;
  }

  dimension: group_id {
    type: number
    sql: ${TABLE}."GROUP_ID" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}."GROUP_NAME" ;;
  }

  dimension: group_stations_count {
    type: number
    sql: ${TABLE}."GROUP_STATIONS_COUNT" ;;
  }

  dimension: is_agent_submitted {
    type: yesno
    sql: ${TABLE}."IS_AGENT_SUBMITTED" ;;
  }

  dimension: is_assignee_active {
    type: yesno
    sql: ${TABLE}."IS_ASSIGNEE_ACTIVE" ;;
  }

  dimension: is_bad_to_good_satisfaction_score {
    type: yesno
    sql: ${TABLE}."IS_BAD_TO_GOOD_SATISFACTION_SCORE" ;;
  }

  dimension: is_good_to_bad_satisfaction_score {
    type: yesno
    sql: ${TABLE}."IS_GOOD_TO_BAD_SATISFACTION_SCORE" ;;
  }

  dimension: is_incident {
    type: yesno
    sql: ${TABLE}."IS_INCIDENT" ;;
  }

  dimension: is_multi_touch_resolution {
    type: yesno
    sql: ${TABLE}."IS_MULTI_TOUCH_RESOLUTION" ;;
  }

  dimension: is_one_touch_resolution {
    type: yesno
    sql: ${TABLE}."IS_ONE_TOUCH_RESOLUTION" ;;
  }

  dimension: is_public {
    type: yesno
    sql: ${TABLE}."IS_PUBLIC" ;;
  }

  dimension: is_requester_active {
    type: yesno
    sql: ${TABLE}."IS_REQUESTER_ACTIVE" ;;
  }

  dimension: is_submitter_active {
    type: yesno
    sql: ${TABLE}."IS_SUBMITTER_ACTIVE" ;;
  }

  dimension: is_two_touch_resolution {
    type: yesno
    sql: ${TABLE}."IS_TWO_TOUCH_RESOLUTION" ;;
  }

  dimension_group: last_agent_assignment {
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
    sql: CAST(${TABLE}."LAST_AGENT_ASSIGNMENT_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: last_assignee_id {
    type: string
    sql: ${TABLE}."LAST_ASSIGNEE_ID" ;;
  }

  dimension: last_assignment_to_resolution_calendar_minutes {
    type: number
    sql: ${TABLE}."LAST_ASSIGNMENT_TO_RESOLUTION_CALENDAR_MINUTES" ;;
  }

  dimension_group: last_solved {
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
    sql: CAST(${TABLE}."LAST_SOLVED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_status_assignment {
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
    sql: CAST(${TABLE}."LAST_STATUS_ASSIGNMENT_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: new_status_duration_in_calendar_minutes {
    type: number
    sql: ${TABLE}."NEW_STATUS_DURATION_IN_CALENDAR_MINUTES" ;;
  }

  dimension: on_hold_time_in_business_minutes {
    type: number
    sql: ${TABLE}."ON_HOLD_TIME_IN_BUSINESS_MINUTES" ;;
  }

  dimension: on_hold_time_in_calendar_minutes {
    type: number
    sql: ${TABLE}."ON_HOLD_TIME_IN_CALENDAR_MINUTES" ;;
  }

  dimension: open_status_duration_in_calendar_minutes {
    type: number
    sql: ${TABLE}."OPEN_STATUS_DURATION_IN_CALENDAR_MINUTES" ;;
  }

  dimension: organization_id {
    type: number
    sql: ${TABLE}."ORGANIZATION_ID" ;;
  }

  dimension: organization_name {
    type: string
    sql: ${TABLE}."ORGANIZATION_NAME" ;;
  }

  dimension: priority {
    type: string
    sql: ${TABLE}."PRIORITY" ;;
  }

  dimension: problem_id {
    type: number
    sql: ${TABLE}."PROBLEM_ID" ;;
  }

  dimension: recipient {
    type: string
    sql: ${TABLE}."RECIPIENT" ;;
  }

  dimension_group: requester_created {
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
    sql: CAST(${TABLE}."REQUESTER_CREATED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: requester_email {
    type: string
    sql: ${TABLE}."REQUESTER_EMAIL" ;;
  }

  dimension: requester_external_id {
    type: string
    sql: ${TABLE}."REQUESTER_EXTERNAL_ID" ;;
  }

  dimension: requester_id {
    type: number
    sql: ${TABLE}."REQUESTER_ID" ;;
  }

  dimension: requester_last_login_age_minutes {
    type: number
    sql: ${TABLE}."REQUESTER_LAST_LOGIN_AGE_MINUTES" ;;
  }

  dimension_group: requester_last_login {
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
    sql: CAST(${TABLE}."REQUESTER_LAST_LOGIN_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: requester_locale {
    type: string
    sql: ${TABLE}."REQUESTER_LOCALE" ;;
  }

  dimension: requester_name {
    type: string
    sql: ${TABLE}."REQUESTER_NAME" ;;
  }

  dimension_group: requester_organization_created {
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
    sql: CAST(${TABLE}."REQUESTER_ORGANIZATION_CREATED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: requester_organization_domain_names {
    type: string
    sql: ${TABLE}."REQUESTER_ORGANIZATION_DOMAIN_NAMES" ;;
  }

  dimension: requester_organization_external_id {
    type: string
    sql: ${TABLE}."REQUESTER_ORGANIZATION_EXTERNAL_ID" ;;
  }

  dimension: requester_organization_id {
    type: number
    sql: ${TABLE}."REQUESTER_ORGANIZATION_ID" ;;
  }

  dimension: requester_organization_name {
    type: string
    sql: ${TABLE}."REQUESTER_ORGANIZATION_NAME" ;;
  }

  dimension: requester_organization_tags {
    type: string
    sql: ${TABLE}."REQUESTER_ORGANIZATION_TAGS" ;;
  }

  dimension_group: requester_organization_updated {
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
    sql: CAST(${TABLE}."REQUESTER_ORGANIZATION_UPDATED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: requester_role {
    type: string
    sql: ${TABLE}."REQUESTER_ROLE" ;;
  }

  dimension: requester_tag {
    type: string
    sql: ${TABLE}."REQUESTER_TAG" ;;
  }

  dimension_group: requester_ticket_last_update {
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
    sql: CAST(${TABLE}."REQUESTER_TICKET_LAST_UPDATE_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: requester_ticket_update_count {
    type: number
    sql: ${TABLE}."REQUESTER_TICKET_UPDATE_COUNT" ;;
  }

  dimension: requester_time_zone {
    type: string
    sql: ${TABLE}."REQUESTER_TIME_ZONE" ;;
  }

  dimension_group: requester_updated {
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
    sql: CAST(${TABLE}."REQUESTER_UPDATED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: requester_wait_time_in_business_minutes {
    type: number
    sql: ${TABLE}."REQUESTER_WAIT_TIME_IN_BUSINESS_MINUTES" ;;
  }

  dimension: requester_wait_time_in_calendar_minutes {
    type: number
    sql: ${TABLE}."REQUESTER_WAIT_TIME_IN_CALENDAR_MINUTES" ;;
  }

  dimension: source_from_id {
    type: number
    sql: ${TABLE}."SOURCE_FROM_ID" ;;
  }

  dimension: source_from_title {
    type: string
    sql: ${TABLE}."SOURCE_FROM_TITLE" ;;
  }

  dimension: source_rel {
    type: string
    sql: ${TABLE}."SOURCE_REL" ;;
  }

  dimension: source_to_address {
    type: string
    sql: ${TABLE}."SOURCE_TO_ADDRESS" ;;
  }

  dimension: source_to_name {
    type: string
    sql: ${TABLE}."SOURCE_TO_NAME" ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }

  dimension: subject {
    type: string
    sql: ${TABLE}."SUBJECT" ;;
  }

  dimension: submitter_email {
    type: string
    sql: ${TABLE}."SUBMITTER_EMAIL" ;;
  }

  dimension: submitter_external_id {
    type: string
    sql: ${TABLE}."SUBMITTER_EXTERNAL_ID" ;;
  }

  dimension: submitter_id {
    type: number
    sql: ${TABLE}."SUBMITTER_ID" ;;
  }

  dimension: submitter_locale {
    type: string
    sql: ${TABLE}."SUBMITTER_LOCALE" ;;
  }

  dimension: submitter_name {
    type: string
    sql: ${TABLE}."SUBMITTER_NAME" ;;
  }

  dimension: submitter_role {
    type: string
    sql: ${TABLE}."SUBMITTER_ROLE" ;;
  }

  dimension: submitter_tag {
    type: string
    sql: ${TABLE}."SUBMITTER_TAG" ;;
  }

  dimension: submitter_time_zone {
    type: string
    sql: ${TABLE}."SUBMITTER_TIME_ZONE" ;;
  }

  dimension: ticket_brand_name {
    type: string
    sql: ${TABLE}."TICKET_BRAND_NAME" ;;
  }

  dimension: ticket_deleted_count {
    type: number
    sql: ${TABLE}."TICKET_DELETED_COUNT" ;;
  }

  dimension: ticket_first_satisfaction_score {
    type: string
    sql: ${TABLE}."TICKET_FIRST_SATISFACTION_SCORE" ;;
  }

  dimension: ticket_form_id {
    type: number
    sql: ${TABLE}."TICKET_FORM_ID" ;;
  }

  dimension: ticket_form_name {
    type: string
    sql: ${TABLE}."TICKET_FORM_NAME" ;;
  }

  dimension: ticket_id {
    type: number
    sql: ${TABLE}."TICKET_ID" ;;
    link: {
      label: "Open in Zendesk"
      url: "https://cytracom.zendesk.com/agent/tickets/{{ value }}"
      icon_url: "https://d1eipm3vz40hy0.cloudfront.net/images/logos/zendesk-favicon.ico"
  }
    link: {
      label: "See Ticket Dashboard"
      url: "dashboards/zendesk_block_snowflake::zendesk_ticket?Ticket={{ value }}"
    }
  }

  dimension_group: ticket_last_comment {
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
    sql: CAST(${TABLE}."TICKET_LAST_COMMENT_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: ticket_organization_domain_names {
    type: string
    sql: ${TABLE}."TICKET_ORGANIZATION_DOMAIN_NAMES" ;;
  }

  dimension: ticket_satisfaction_comment {
    type: string
    sql: ${TABLE}."TICKET_SATISFACTION_COMMENT" ;;
  }

  dimension: ticket_satisfaction_reason {
    type: string
    sql: ${TABLE}."TICKET_SATISFACTION_REASON" ;;
  }

  dimension: ticket_satisfaction_score {
    type: string
    sql: ${TABLE}."TICKET_SATISFACTION_SCORE" ;;
  }

  dimension: ticket_tags {
    type: string
    sql: ${TABLE}."TICKET_TAGS" ;;
  }

  dimension: ticket_total_satisfaction_scores {
    type: number
    sql: ${TABLE}."TICKET_TOTAL_SATISFACTION_SCORES" ;;
  }

  dimension: ticket_unassigned_duration_calendar_minutes {
    type: number
    sql: ${TABLE}."TICKET_UNASSIGNED_DURATION_CALENDAR_MINUTES" ;;
  }

  dimension: total_agent_replies {
    type: number
    sql: ${TABLE}."TOTAL_AGENT_REPLIES" ;;
  }

  dimension: total_comments {
    type: number
    sql: ${TABLE}."TOTAL_COMMENTS" ;;
  }

  dimension: total_reply_time_calendar_minutes {
    type: number
    sql: ${TABLE}."TOTAL_REPLY_TIME_CALENDAR_MINUTES" ;;
  }

  dimension: total_ticket_recoveries {
    type: number
    sql: ${TABLE}."TOTAL_TICKET_RECOVERIES" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: unique_assignee_count {
    type: number
    sql: ${TABLE}."UNIQUE_ASSIGNEE_COUNT" ;;
  }

  dimension: unsolved_ticket_age_minutes {
    type: number
    sql: ${TABLE}."UNSOLVED_TICKET_AGE_MINUTES" ;;
  }

  dimension: unsolved_ticket_age_since_update_minutes {
    type: number
    sql: ${TABLE}."UNSOLVED_TICKET_AGE_SINCE_UPDATE_MINUTES" ;;
  }

  dimension_group: updated {
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
    sql: CAST(${TABLE}."UPDATED_AT" AS TIMESTAMP_NTZ) ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}."URL" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      requester_name,
      submitter_name,
      organization_name,
      ticket_form_name,
      group_name,
      assignee_name,
      requester_organization_name,
      ticket_brand_name,
      source_to_name
    ]
  }
}
