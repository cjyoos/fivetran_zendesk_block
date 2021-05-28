view: zendesk_ticket_enriched {
  sql_table_name: "ANALYTICS"."ZENDESK_TICKET_ENRICHED"
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

  dimension: group_id {
    type: number
    sql: ${TABLE}."GROUP_ID" ;;
  }

  dimension: group_name {
    type: string
    sql: ${TABLE}."GROUP_NAME" ;;
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
    primary_key: yes
    type: number
    sql: ${TABLE}."TICKET_ID" ;;
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

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
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
      assignee_name,
      ticket_form_name,
      source_to_name,
      submitter_name,
      organization_name,
      group_name,
      ticket_brand_name,
      requester_organization_name,
      requester_name
    ]
  }
}
