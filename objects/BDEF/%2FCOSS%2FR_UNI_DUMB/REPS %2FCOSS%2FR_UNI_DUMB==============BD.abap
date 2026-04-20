managed implementation in class /COSS/BP_R_UNI_DUMB unique;
strict ( 2 );
with draft;
extensible;
define behavior for /COSS/R_UNI_DUMB alias /coss/rUniDumb
persistent table /COSS/UNI_DUMB
extensible
draft table /COSS/UNI_DUMB_D
etag master LocalLastChangedAt
lock master total etag LastChangedAt
authorization master( global )
{
  field ( mandatory : create )
   EventUUID;

  field ( readonly )
   LocalLastChangedAt,
   LastChangedAt;

  field ( readonly : update )
   EventUUID;


  create;
  update;
  delete;

  draft action Activate optimized;
  draft action Discard;
  draft action Edit;
  draft action Resume;
  draft determine action Prepare;

  mapping for /COSS/UNI_DUMB corresponding extensible
  {
    EventUUID = EVENT_UUID;
    EventID = EVENT_ID;
    EventName = EVENT_NAME;
    Location = LOCATION;
    IsOnline = IS_ONLINE;
    DateFrom = DATE_FROM;
    DateTo = DATE_TO;
    CreatedBy = CREATED_BY;
    ChangedBy = CHANGED_BY;
    LocalLastChangedAt = LOCAL_LAST_CHANGED_AT;
    LastChangedAt = LAST_CHANGED_AT;
  }

}