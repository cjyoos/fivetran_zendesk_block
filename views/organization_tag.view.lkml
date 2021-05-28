view: organization_tag {
  sql_table_name: "ZENDESK"."ORGANIZATION_TAG"
    ;;


  dimension: organization_id {
    type: number
    hidden: yes
    sql: ${TABLE}."ORGANIZATION_ID" ;;
  }

  dimension: tag {
    type: string
    sql: ${TABLE}."TAG" ;;
  }

  dimension: concat_pk {
    primary_key: yes
    hidden: yes
    sql: ${organization_id}||'-;||${tag};;
  }


}
