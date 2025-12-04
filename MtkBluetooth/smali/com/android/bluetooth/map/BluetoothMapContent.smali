.class public Lcom/android/bluetooth/map/BluetoothMapContent;
.super Ljava/lang/Object;
.source "BluetoothMapContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;
    }
.end annotation


# static fields
.field public static final CONVO_PARAMETER_MASK_ALL_ENABLED:J = 0xffffffffL

.field public static final CONVO_PARAMETER_MASK_DEFAULT:J = 0xe1L

.field private static final CONVO_PARAM_MASK_CONVO_LAST_ACTIVITY:I = 0x2

.field private static final CONVO_PARAM_MASK_CONVO_NAME:I = 0x1

.field private static final CONVO_PARAM_MASK_CONVO_READ_STATUS:I = 0x4

.field private static final CONVO_PARAM_MASK_CONVO_SUMMARY:I = 0x10

.field private static final CONVO_PARAM_MASK_CONVO_VERSION_COUNTER:I = 0x8

.field private static final CONVO_PARAM_MASK_PARTTICIPANTS:I = 0x20

.field private static final CONVO_PARAM_MASK_PART_CHAT_STATE:I = 0x100

.field private static final CONVO_PARAM_MASK_PART_DISP_NAME:I = 0x80

.field private static final CONVO_PARAM_MASK_PART_LAST_ACTIVITY:I = 0x200

.field private static final CONVO_PARAM_MASK_PART_NAME:I = 0x800

.field private static final CONVO_PARAM_MASK_PART_PRESENCE:I = 0x1000

.field private static final CONVO_PARAM_MASK_PART_PRESENCE_TEXT:I = 0x2000

.field private static final CONVO_PARAM_MASK_PART_PRIORITY:I = 0x4000

.field private static final CONVO_PARAM_MASK_PART_UCI:I = 0x40

.field private static final CONVO_PARAM_MASK_PART_X_BT_UID:I = 0x400

.field private static final CONVO_VERSION_PROJECTION:[Ljava/lang/String;

.field private static final D:Z

.field private static final FILTER_READ_STATUS_ALL:I = 0x0

.field private static final FILTER_READ_STATUS_READ_ONLY:I = 0x2

.field private static final FILTER_READ_STATUS_UNREAD_ONLY:I = 0x1

.field public static final INSERT_ADDRES_TOKEN:Ljava/lang/String; = "insert-address-token"

.field private static final INTERESTED_MESSAGE_TYPE_CLAUSE:Ljava/lang/String;

.field public static final MAP_CONTENT_URI:Landroid/net/Uri;

.field public static final MAP_MESSAGE_CHARSET_NATIVE:I = 0x0

.field public static final MAP_MESSAGE_CHARSET_UTF8:I = 0x1

.field private static final MASK_ATTACHMENT_MIME:I = 0x100000

.field private static final MASK_ATTACHMENT_SIZE:I = 0x400

.field private static final MASK_CONVERSATION_ID:I = 0x20000

.field private static final MASK_CONVERSATION_NAME:I = 0x40000

.field private static final MASK_DATETIME:I = 0x2

.field private static final MASK_DELIVERY_STATUS:I = 0x10000

.field private static final MASK_FOLDER_TYPE:I = 0x100000

.field private static final MASK_PRIORITY:I = 0x800

.field private static final MASK_PROTECTED:I = 0x4000

.field private static final MASK_READ:I = 0x1000

.field private static final MASK_RECEPTION_STATUS:I = 0x100

.field private static final MASK_RECIPIENT_ADDRESSING:I = 0x20

.field private static final MASK_RECIPIENT_NAME:I = 0x10

.field private static final MASK_REPLYTO_ADDRESSING:I = 0x8000

.field private static final MASK_SENDER_ADDRESSING:I = 0x8

.field private static final MASK_SENDER_NAME:I = 0x4

.field private static final MASK_SENT:I = 0x2000

.field private static final MASK_SIZE:I = 0x80

.field private static final MASK_SUBJECT:I = 0x1

.field private static final MASK_TEXT:I = 0x200

.field private static final MASK_TYPE:I = 0x40

.field public static final MMSSMS_CONTENT_URI:Landroid/net/Uri;

.field public static final MMS_BCC:I = 0x81

.field public static final MMS_CC:I = 0x82

.field static final MMS_CONVO_PROJECTION:[Ljava/lang/String;

.field public static final MMS_FROM:I = 0x89

.field static final MMS_PROJECTION:[Ljava/lang/String;

.field private static final MMS_SMS_THREAD_COL_DATE:I

.field private static final MMS_SMS_THREAD_COL_ID:I

.field private static final MMS_SMS_THREAD_COL_READ:I

.field private static final MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

.field private static final MMS_SMS_THREAD_COL_SNIPPET:I

.field private static final MMS_SMS_THREAD_COL_SNIPPET_CS:I

.field private static final MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

.field public static final MMS_TO:I = 0x97

.field public static final PARAMETER_MASK_ALL_ENABLED:J = 0xffffffffL

.field private static final RECIPIENT_ID_PROJECTION:[Ljava/lang/String;

.field static final SIMID_PROJECTION:[Ljava/lang/String;

.field static final SMS_CONVO_PROJECTION:[Ljava/lang/String;

.field static final SMS_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "BluetoothMapContent"

.field static final THREADID_PROJECTION:[Ljava/lang/String;

.field private static final V:Z


# instance fields
.field private final mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

.field private final mBaseUri:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

.field private mMessageVersion:Ljava/lang/String;

.field private mMsgListingVersion:I

.field private mRemoteFeatureMask:I

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 70
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    .line 71
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    .line 140
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "m_type"

    aput-object v2, v0, v1

    .line 142
    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    aput-object v2, v0, v1

    .line 143
    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    aput-object v2, v0, v1

    .line 144
    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 141
    const-string v1, "( %s = %d OR %s = %d OR %s = %d )"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->INTERESTED_MESSAGE_TYPE_CLAUSE:Ljava/lang/String;

    .line 159
    const-string v1, "_id"

    const-string v2, "thread_id"

    const-string v3, "address"

    const-string v4, "body"

    const-string v5, "date"

    const-string v6, "read"

    const-string v7, "type"

    const-string v8, "status"

    const-string v9, "locked"

    const-string v10, "error_code"

    const-string v11, "sub_id"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    .line 173
    const-string v1, "_id"

    const-string v2, "thread_id"

    const-string v3, "m_id"

    const-string v4, "m_size"

    const-string v5, "sub"

    const-string v6, "ct_t"

    const-string v7, "text_only"

    const-string v8, "date"

    const-string v9, "date_sent"

    const-string v10, "read"

    const-string v11, "msg_box"

    const-string v12, "st"

    const-string v13, "pri"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    .line 189
    const-string v1, "_id"

    const-string v2, "thread_id"

    const-string v3, "address"

    const-string v4, "date"

    const-string v5, "read"

    const-string v6, "type"

    const-string v7, "status"

    const-string v8, "locked"

    const-string v9, "error_code"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_CONVO_PROJECTION:[Ljava/lang/String;

    .line 201
    const-string v1, "_id"

    const-string v2, "thread_id"

    const-string v3, "m_id"

    const-string v4, "m_size"

    const-string v5, "sub"

    const-string v6, "ct_t"

    const-string v7, "text_only"

    const-string v8, "date"

    const-string v9, "date_sent"

    const-string v10, "read"

    const-string v11, "msg_box"

    const-string v12, "st"

    const-string v13, "pri"

    const-string v14, "address"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_CONVO_PROJECTION:[Ljava/lang/String;

    .line 219
    const-string v1, "_id"

    const-string v2, "date"

    const-string v3, "snippet"

    const-string v4, "snippet_cs"

    const-string v5, "read"

    const-string v6, "recipient_ids"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

    .line 228
    const-string v1, "thread_id"

    const-string v2, "thread_name"

    const-string v3, "read_status"

    const-string v4, "last_thread_activity"

    const-string v5, "convo_summary"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapContent;->CONVO_VERSION_PROJECTION:[Ljava/lang/String;

    .line 249
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 250
    const-string v1, "_id"

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_ID:I

    .line 251
    const-string v2, "date"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    .line 252
    const-string v2, "snippet"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET:I

    .line 253
    const-string v2, "snippet_cs"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET_CS:I

    .line 254
    const-string v2, "read"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sput v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    .line 255
    const-string v2, "recipient_ids"

    invoke-interface {v0, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    .line 259
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->THREADID_PROJECTION:[Ljava/lang/String;

    .line 263
    const-string v0, "transport_type"

    const-string v3, "sub_id"

    filled-new-array {v0, v1, v3, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->SIMID_PROJECTION:[Ljava/lang/String;

    .line 1445
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->RECIPIENT_ID_PROJECTION:[Ljava/lang/String;

    .line 4378
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "conversations/map"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->MAP_CONTENT_URI:Landroid/net/Uri;

    .line 4381
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->MMSSMS_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)V
    .locals 1

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const-string v0, "1.0"

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    .line 156
    const/16 v0, 0x1f

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    .line 157
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    .line 442
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    .line 443
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 444
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 445
    if-nez p1, :cond_0

    .line 446
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p1, :cond_0

    .line 447
    const-string p1, "BluetoothMapContent"

    const-string p3, "getContentResolver failed"

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    if-eqz p2, :cond_1

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p2, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->mBase_uri:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    .line 453
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    goto :goto_0

    .line 455
    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    .line 456
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 458
    :goto_0
    return-void
.end method

.method private addSmsMmsContacts(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Lcom/android/bluetooth/map/SmsMmsContacts;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 17

    .line 3482
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "BluetoothMapContent"

    invoke-virtual/range {p5 .. p5}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v4

    long-to-int v4, v4

    .line 3483
    nop

    .line 3484
    const-string v0, " "

    move-object/from16 v5, p3

    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3485
    array-length v6, v5

    new-array v7, v6, [J

    .line 3486
    if-eqz p4, :cond_0

    .line 3487
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 3486
    :cond_0
    move-object/from16 v8, p4

    .line 3490
    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    array-length v0, v5

    if-ge v10, v0, :cond_5

    .line 3493
    :try_start_0
    aget-object v0, v5, v10

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 3494
    aput-wide v13, v7, v10

    .line 3495
    if-nez v8, :cond_1

    .line 3497
    nop

    .line 3498
    const/4 v11, 0x1

    goto :goto_2

    .line 3500
    :cond_1
    iget-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v0, v13, v14}, Lcom/android/bluetooth/map/SmsMmsContacts;->getPhoneNumber(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v0

    .line 3501
    if-nez v0, :cond_2

    .line 3504
    goto :goto_2

    .line 3506
    :cond_2
    iget-object v15, v1, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    .line 3507
    invoke-virtual {v2, v0, v15, v8}, Lcom/android/bluetooth/map/SmsMmsContacts;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/bluetooth/map/MapContact;

    move-result-object v15

    .line 3508
    sget-boolean v16, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v16, :cond_3

    .line 3509
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "  id "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3510
    if-eqz v15, :cond_3

    .line 3511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  contact name: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/bluetooth/map/MapContact;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "  X-BT-UID: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3512
    invoke-virtual {v15}, Lcom/android/bluetooth/map/MapContact;->getXBtUid()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3511
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3515
    :cond_3
    if-nez v15, :cond_4

    .line 3516
    goto :goto_2

    .line 3518
    :cond_4
    nop

    .line 3522
    const/4 v11, 0x1

    goto :goto_2

    .line 3519
    :catch_0
    move-exception v0

    .line 3521
    nop

    .line 3490
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 3525
    :cond_5
    if-eqz v11, :cond_d

    .line 3526
    nop

    .line 3527
    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_c

    aget-wide v10, v7, v9

    .line 3528
    iget-object v3, v1, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3, v10, v11}, Lcom/android/bluetooth/map/SmsMmsContacts;->getPhoneNumber(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v3

    .line 3529
    if-nez v3, :cond_6

    .line 3532
    move-object/from16 v3, p1

    goto :goto_5

    .line 3534
    :cond_6
    nop

    .line 3535
    iget-object v0, v1, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3, v0}, Lcom/android/bluetooth/map/SmsMmsContacts;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/android/bluetooth/map/MapContact;

    move-result-object v0

    .line 3537
    if-nez v0, :cond_8

    .line 3539
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>()V

    .line 3540
    and-int/lit16 v5, v4, 0x800

    if-eqz v5, :cond_7

    .line 3541
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setName(Ljava/lang/String;)V

    .line 3543
    :cond_7
    and-int/lit8 v5, v4, 0x40

    if-eqz v5, :cond_b

    .line 3544
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setContactId(Ljava/lang/String;)V

    goto :goto_4

    .line 3547
    :cond_8
    nop

    .line 3548
    invoke-static {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->createFromMapContact(Lcom/android/bluetooth/map/MapContact;Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    move-result-object v0

    .line 3550
    and-int/lit8 v3, v4, 0x40

    const/4 v5, 0x0

    if-nez v3, :cond_9

    .line 3551
    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setContactId(Ljava/lang/String;)V

    .line 3553
    :cond_9
    and-int/lit16 v3, v4, 0x400

    if-nez v3, :cond_a

    .line 3554
    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setBtUid(Lcom/android/bluetooth/SignedLongLong;)V

    .line 3556
    :cond_a
    and-int/lit16 v3, v4, 0x80

    if-nez v3, :cond_b

    .line 3557
    invoke-virtual {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setDisplayName(Ljava/lang/String;)V

    .line 3560
    :cond_b
    :goto_4
    move-object/from16 v3, p1

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V

    const/4 v0, 0x1

    .line 3527
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_c
    move v11, v0

    .line 3563
    :cond_d
    return v11
.end method

.method private appendConvoListQueryParameters(Lcom/android/bluetooth/map/BluetoothMapAppParams;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 5

    .line 3423
    invoke-virtual {p2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p2

    .line 3424
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v0

    .line 3425
    if-eqz v0, :cond_0

    .line 3426
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 3427
    const-string v1, "*"

    const-string v2, "%"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 3428
    const-string v1, "org_sub_str"

    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3430
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v0

    .line 3431
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 3432
    nop

    .line 3433
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 3432
    const-string v1, "t_begin"

    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3435
    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v0

    .line 3436
    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 3437
    nop

    .line 3438
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 3437
    const-string v1, "t_end"

    invoke-virtual {p2, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3440
    :cond_2
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v0

    .line 3441
    if-lez v0, :cond_4

    .line 3442
    const/4 v1, 0x1

    const-string v4, "read"

    if-ne v0, v1, :cond_3

    .line 3444
    const-string v0, "false"

    invoke-virtual {p2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 3445
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 3447
    const-string v0, "true"

    invoke-virtual {p2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3453
    :cond_4
    :goto_0
    const-wide/16 v0, -0x1

    .line 3454
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 3455
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v0

    .line 3457
    :cond_5
    cmp-long p1, v0, v2

    if-lez p1, :cond_6

    .line 3458
    nop

    .line 3459
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    .line 3458
    const-string v0, "thread_id"

    invoke-virtual {p2, v0, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3461
    :cond_6
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 0

    .line 462
    if-eqz p0, :cond_0

    .line 463
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 465
    :catch_0
    move-exception p0

    goto :goto_1

    .line 466
    :cond_0
    :goto_0
    nop

    .line 467
    :goto_1
    return-void
.end method

.method private createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;
    .locals 1

    .line 1404
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    .line 1405
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setLastActivity(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1406
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getType(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 1408
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setCursorIndex(I)V

    .line 1409
    return-object v0
.end method

.method private element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;
    .locals 6

    .line 1390
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;-><init>()V

    .line 1391
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1392
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1393
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getType(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v2

    const-wide/16 v4, 0x40

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;Z)V

    .line 1394
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 1398
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setCursorIndex(I)V

    .line 1399
    return-object v0
.end method

.method private emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 2

    .line 2180
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result p1

    .line 2182
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v0, :cond_0

    .line 2183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "emailSelected msgType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapContent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 2187
    return v1

    .line 2190
    :cond_1
    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_2

    .line 2191
    return v1

    .line 2194
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private extractIMParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V
    .locals 10

    .line 3926
    const-string v0, "extractIMParts"

    .line 3927
    new-instance v4, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3928
    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/part"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3930
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 3932
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3934
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3936
    :cond_0
    const-string p2, "_id"

    .line 3937
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    .line 3936
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 3938
    const-string v1, "charset"

    .line 3939
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 3938
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3940
    const-string v2, "filename"

    .line 3941
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 3940
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3942
    const-string v3, "text"

    .line 3943
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 3942
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3944
    const-string v4, "raw_data"

    .line 3945
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 3944
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3946
    const-string v5, "cid"

    .line 3947
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 3946
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3949
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "BluetoothMapContent"

    if-eqz v6, :cond_1

    .line 3950
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "     _id : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\n     charset : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n     filename : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n     text : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\n     cid : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    :cond_1
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v6

    .line 3956
    iput-object v5, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3958
    const/4 v5, 0x0

    :try_start_2
    const-string v8, "yes"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3959
    const-string p2, "UTF-8"

    invoke-virtual {v4, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3960
    const-string p2, "utf-8"

    iput-object p2, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    goto :goto_0

    .line 3962
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Part"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3963
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3964
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 3962
    invoke-direct {p0, v3, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapContent;->readRawDataPart(Landroid/net/Uri;J)[B

    move-result-object p2

    iput-object p2, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3965
    if-eqz v1, :cond_3

    .line 3966
    nop

    .line 3967
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 3974
    :catch_0
    move-exception p2

    .line 3975
    :try_start_3
    invoke-static {v7, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3976
    iput-object v5, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3977
    iput-object v5, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    goto :goto_1

    .line 3970
    :catch_1
    move-exception p2

    .line 3971
    invoke-static {v7, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3972
    iput-object v5, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3973
    iput-object v5, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    .line 3978
    :cond_3
    :goto_0
    nop

    .line 3979
    :goto_1
    iput-object v2, v6, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mFileName:Ljava/lang/String;

    .line 3980
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_0

    .line 3983
    :cond_4
    if-eqz p1, :cond_5

    .line 3984
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3988
    :cond_5
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->updateCharset()V

    .line 3989
    return-void

    .line 3983
    :catchall_0
    move-exception p2

    if-eqz p1, :cond_6

    .line 3984
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3986
    :cond_6
    throw p2
.end method

.method private extractMmsAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V
    .locals 6

    .line 3765
    nop

    .line 3766
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3767
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/addr"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3768
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3769
    nop

    .line 3771
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3773
    if-eqz p1, :cond_7

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 3775
    :cond_0
    const-string p2, "address"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3776
    const-string v0, "insert-address-token"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3777
    goto :goto_0

    .line 3779
    :cond_1
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 3780
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x81

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    const/16 v1, 0x82

    if-eq v0, v1, :cond_4

    const/16 v1, 0x89

    if-eq v0, v1, :cond_3

    const/16 v1, 0x97

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 3786
    :cond_2
    invoke-direct {p0, p3, p2, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3787
    invoke-virtual {p3, v0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addTo(Ljava/lang/String;Ljava/lang/String;)V

    .line 3788
    goto :goto_0

    .line 3782
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, p3, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3783
    invoke-virtual {p3, v0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addFrom(Ljava/lang/String;Ljava/lang/String;)V

    .line 3784
    goto :goto_0

    .line 3790
    :cond_4
    invoke-direct {p0, p3, p2, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3791
    invoke-virtual {p3, v0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addCc(Ljava/lang/String;Ljava/lang/String;)V

    .line 3792
    goto :goto_0

    .line 3794
    :cond_5
    invoke-direct {p0, p3, p2, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 3795
    invoke-virtual {p3, v0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addBcc(Ljava/lang/String;Ljava/lang/String;)V

    .line 3796
    nop

    .line 3800
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    goto :goto_1

    .line 3803
    :catchall_0
    move-exception p2

    if-eqz p1, :cond_6

    .line 3804
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3806
    :cond_6
    throw p2

    .line 3803
    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 3804
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3807
    :cond_8
    return-void
.end method

.method private extractMmsParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V
    .locals 16

    .line 3850
    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    .line 3851
    new-instance v5, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3852
    new-instance v0, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "/part"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3853
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3855
    iget-object v2, v1, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3857
    if-eqz v2, :cond_5

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3859
    :cond_0
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3860
    const-string v3, "ct"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3861
    const-string v4, "name"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3862
    const-string v5, "chset"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3863
    const-string v6, "fn"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 3864
    const-string v7, "text"

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3865
    const-string v9, "_data"

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3866
    const-string v10, "cid"

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 3867
    const-string v11, "cl"

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3868
    const-string v12, "cd"

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 3870
    sget-boolean v13, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, "BluetoothMapContent"

    if-eqz v13, :cond_1

    .line 3871
    :try_start_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "     _id : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, "\n     ct : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\n     partname : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\n     charset : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\n     filename : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\n     text : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "\n     fd : "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n     cid : "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n     cl : "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n     cdisp : "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3878
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v9

    .line 3879
    iput-object v3, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    .line 3880
    iput-object v4, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mPartName:Ljava/lang/String;

    .line 3881
    iput-object v10, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    .line 3882
    iput-object v11, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentLocation:Ljava/lang/String;

    .line 3883
    iput-object v12, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentDisposition:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3886
    const-string v3, "extractMmsParts"

    const/4 v4, 0x0

    if-eqz v7, :cond_2

    .line 3887
    :try_start_2
    const-string v0, "UTF-8"

    invoke-virtual {v7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3888
    const-string v0, "utf-8"

    iput-object v0, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    goto :goto_0

    .line 3890
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3891
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-direct {v1, v7, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapContent;->readRawDataPart(Landroid/net/Uri;J)[B

    move-result-object v0

    iput-object v0, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3892
    if-eqz v5, :cond_3

    .line 3893
    nop

    .line 3894
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/mms/pdu/CharacterSets;->getMimeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3905
    :cond_3
    :goto_0
    goto :goto_1

    .line 3901
    :catch_0
    move-exception v0

    .line 3902
    :try_start_3
    invoke-static {v14, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3903
    iput-object v4, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3904
    iput-object v4, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    goto :goto_1

    .line 3897
    :catch_1
    move-exception v0

    .line 3898
    invoke-static {v14, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3899
    iput-object v4, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 3900
    iput-object v4, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    goto :goto_0

    .line 3906
    :goto_1
    iput-object v6, v9, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mFileName:Ljava/lang/String;

    .line 3907
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3908
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->updateCharset()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3912
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 3913
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3915
    :cond_4
    throw v0

    .line 3912
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 3913
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3916
    :cond_6
    return-void
.end method

.method public static getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;
    .locals 6

    .line 1528
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v3, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1529
    new-instance p3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/addr"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1530
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1531
    nop

    .line 1532
    const-string p1, "address"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    .line 1533
    nop

    .line 1535
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 p2, 0x0

    move-object v0, p0

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1536
    :try_start_1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1537
    if-eqz p0, :cond_0

    .line 1538
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 1539
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1540
    const-string p1, "insert-address-token"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1541
    const-string p2, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1546
    :cond_0
    if-eqz p0, :cond_1

    .line 1547
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1550
    :cond_1
    return-object p2

    .line 1546
    :catchall_0
    move-exception p1

    move-object p2, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    if-eqz p2, :cond_2

    .line 1547
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1549
    :cond_2
    throw p1
.end method

.method public static getCanonicalAddressSms(Landroid/content/ContentResolver;I)Ljava/lang/String;
    .locals 11

    .line 1459
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    .line 1460
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "canonical-addresses"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1461
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 1462
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1463
    nop

    .line 1464
    nop

    .line 1465
    nop

    .line 1466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1467
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    const-string v9, "whereClause is "

    const-string v10, "BluetoothMapContent"

    if-eqz v0, :cond_0

    .line 1468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapContent;->RECIPIENT_ID_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1472
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1473
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1474
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_2

    .line 1475
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cursor.getCount(): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1476
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "recipientIds: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "selection: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1475
    invoke-static {v10, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1481
    :catchall_0
    move-exception p0

    move-object v0, v3

    goto/16 :goto_4

    :cond_1
    move-object v5, v0

    :cond_2
    :goto_0
    if-eqz v3, :cond_3

    .line 1482
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1483
    goto :goto_1

    .line 1481
    :cond_3
    move-object v0, v3

    .line 1486
    :goto_1
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p1, :cond_4

    .line 1487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recipientIds with spaces: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v10, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    :cond_4
    const-string p1, ""

    if-eqz v5, :cond_c

    .line 1490
    nop

    .line 1491
    nop

    .line 1492
    const-string v3, " "

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1493
    array-length v5, v3

    move-object v6, p1

    :goto_2
    if-ge v4, v5, :cond_6

    aget-object v7, v3, v4

    .line 1494
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    .line 1495
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " OR "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1497
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1493
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1499
    :cond_6
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v1, :cond_7

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_7
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, v6

    move-object v6, v7

    :try_start_2
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1504
    if-eqz v0, :cond_a

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 1507
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_9

    .line 1508
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1510
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "address"

    .line 1511
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1512
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez p0, :cond_8

    .line 1515
    :cond_a
    if-eqz v0, :cond_c

    .line 1516
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 1515
    :catchall_1
    move-exception p0

    if-eqz v0, :cond_b

    .line 1516
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1518
    :cond_b
    throw p0

    .line 1521
    :cond_c
    :goto_3
    sget-boolean p0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p0, :cond_d

    .line 1522
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Final recipientAddress : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    :cond_d
    return-object p1

    .line 1481
    :catchall_2
    move-exception p0

    :goto_4
    if-eqz v0, :cond_e

    .line 1482
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1485
    :cond_e
    throw p0
.end method

.method public static getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 8

    .line 1415
    nop

    .line 1417
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1418
    return-object v1

    .line 1421
    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 1422
    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1424
    const-string p0, "_id"

    const-string v0, "display_name"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object v4

    .line 1425
    const-string v5, "in_visible_group=1"

    .line 1426
    const-string v7, "display_name ASC"

    .line 1427
    nop

    .line 1429
    const/4 v6, 0x0

    move-object v2, p1

    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1430
    if-eqz p0, :cond_1

    .line 1431
    :try_start_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1432
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_1

    .line 1433
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1434
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1438
    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p0, :cond_2

    .line 1439
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1442
    :cond_2
    return-object v1

    .line 1438
    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v1, :cond_3

    .line 1439
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1441
    :cond_3
    throw p1
.end method

.method private getFolderName(II)Ljava/lang/String;
    .locals 1

    .line 3573
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3574
    const-string p1, "deleted"

    return-object p1

    .line 3577
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 3589
    const-string p1, ""

    return-object p1

    .line 3587
    :pswitch_0
    const-string p1, "outbox"

    return-object p1

    .line 3583
    :pswitch_1
    const-string p1, "draft"

    return-object p1

    .line 3581
    :pswitch_2
    const-string p1, "sent"

    return-object p1

    .line 3579
    :pswitch_3
    const-string p1, "inbox"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getRecipientAddressingEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 9

    .line 928
    iget p1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 929
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 930
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 932
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 933
    const-string v1, "; "

    const-string v2, "BluetoothMapContent"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 934
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object p1

    .line 935
    array-length v5, p1

    if-eqz v5, :cond_3

    .line 936
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v5, :cond_0

    .line 937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toAddress count= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    :cond_0
    nop

    .line 940
    move v6, v3

    move v5, v4

    .line 941
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_3

    .line 942
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v7, :cond_1

    .line 943
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ToAddress = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p1, v5

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_1
    aget-object v7, p1, v5

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 946
    if-nez v6, :cond_2

    .line 947
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    :cond_2
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    nop

    .line 951
    add-int/lit8 v5, v5, 0x1

    .line 952
    move v6, v4

    goto :goto_0

    .line 955
    :cond_3
    if-eqz v0, :cond_4

    .line 956
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    :cond_4
    if-eqz v0, :cond_9

    .line 960
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object p1

    .line 961
    array-length v0, p1

    if-eqz v0, :cond_8

    .line 962
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v0, :cond_5

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccAddress count= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    :cond_5
    nop

    .line 966
    move v5, v3

    move v0, v4

    .line 967
    :goto_1
    array-length v6, p1

    if-ge v0, v6, :cond_8

    .line 968
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_6

    .line 969
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ccAddress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p1, v0

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    :cond_6
    aget-object v6, p1, v0

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 972
    if-nez v5, :cond_7

    .line 973
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 975
    :cond_7
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    nop

    .line 977
    add-int/lit8 v0, v0, 0x1

    .line 978
    move v5, v4

    goto :goto_1

    .line 980
    :cond_8
    if-eqz p2, :cond_9

    .line 981
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 984
    :cond_9
    if-eqz p2, :cond_d

    .line 985
    invoke-static {p2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object p1

    .line 986
    array-length p2, p1

    if-eqz p2, :cond_d

    .line 987
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p2, :cond_a

    .line 988
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bccAddress count= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_a
    nop

    .line 991
    move p2, v4

    .line 992
    :goto_2
    array-length v0, p1

    if-ge p2, v0, :cond_d

    .line 993
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v0, :cond_b

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bccAddress = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, p2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_b
    aget-object v0, p1, p2

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 997
    if-nez v3, :cond_c

    .line 998
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    :cond_c
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    nop

    .line 1002
    add-int/lit8 p2, p2, 0x1

    .line 1003
    move v3, v4

    goto :goto_2

    .line 1006
    :cond_d
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRecipientNameEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 9

    .line 844
    iget p1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColToAddress:I

    invoke-interface {p2, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 845
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColCcAddress:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 846
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColBccAddress:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 848
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 849
    const-string v1, "; "

    const-string v2, "BluetoothMapContent"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    .line 850
    invoke-static {p1}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object p1

    .line 851
    array-length v5, p1

    if-eqz v5, :cond_3

    .line 852
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v5, :cond_0

    .line 853
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toName count= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    :cond_0
    nop

    .line 856
    move v6, v3

    move v5, v4

    .line 857
    :goto_0
    array-length v7, p1

    if-ge v5, v7, :cond_3

    .line 858
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v7, :cond_1

    .line 859
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ToName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p1, v5

    invoke-virtual {v8}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :cond_1
    aget-object v7, p1, v5

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v7

    .line 862
    if-nez v6, :cond_2

    .line 863
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 865
    :cond_2
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    nop

    .line 867
    add-int/lit8 v5, v5, 0x1

    .line 868
    move v6, v4

    goto :goto_0

    .line 871
    :cond_3
    if-eqz v0, :cond_4

    .line 872
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    :cond_4
    if-eqz v0, :cond_9

    .line 876
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object p1

    .line 877
    array-length v0, p1

    if-eqz v0, :cond_8

    .line 878
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v0, :cond_5

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ccName count= "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, p1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_5
    nop

    .line 882
    move v5, v3

    move v0, v4

    .line 883
    :goto_1
    array-length v6, p1

    if-ge v0, v6, :cond_8

    .line 884
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_6

    .line 885
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ccName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p1, v0

    invoke-virtual {v7}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    :cond_6
    aget-object v6, p1, v0

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v6

    .line 888
    if-nez v5, :cond_7

    .line 889
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    :cond_7
    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    nop

    .line 893
    add-int/lit8 v0, v0, 0x1

    .line 894
    move v5, v4

    goto :goto_1

    .line 896
    :cond_8
    if-eqz p2, :cond_9

    .line 897
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    :cond_9
    if-eqz p2, :cond_d

    .line 901
    invoke-static {p2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object p1

    .line 902
    array-length p2, p1

    if-eqz p2, :cond_d

    .line 903
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p2, :cond_a

    .line 904
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bccName count= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_a
    nop

    .line 907
    move p2, v4

    .line 908
    :goto_2
    array-length v0, p1

    if-ge p2, v0, :cond_d

    .line 909
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v0, :cond_b

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bccName = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p1, p2

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_b
    aget-object v0, p1, p2

    invoke-virtual {v0}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v0

    .line 913
    if-nez v3, :cond_c

    .line 914
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    :cond_c
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    nop

    .line 918
    add-int/lit8 p2, p2, 0x1

    .line 919
    move v3, v4

    goto :goto_2

    .line 922
    :cond_d
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;
    .locals 6

    .line 1309
    nop

    .line 1310
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1311
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/part"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1312
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1314
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1316
    const-string p1, ""

    if-eqz p0, :cond_3

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1318
    :cond_0
    const-string p2, "ct"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1319
    const-string v0, "text/plain"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1320
    const-string p2, "text"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1321
    if-eqz p2, :cond_1

    .line 1322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1325
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_0

    goto :goto_0

    .line 1328
    :catchall_0
    move-exception p1

    if-eqz p0, :cond_2

    .line 1329
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1331
    :cond_2
    throw p1

    .line 1328
    :cond_3
    :goto_0
    if-eqz p0, :cond_4

    .line 1329
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1333
    :cond_4
    return-object p1
.end method

.method private getType(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;
    .locals 3

    .line 757
    nop

    .line 758
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    const-string v0, "BluetoothMapContent"

    if-eqz p1, :cond_0

    .line 759
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getType: for filterMsgType"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    :cond_0
    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x2

    if-nez p1, :cond_3

    .line 762
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p1, :cond_1

    .line 763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getType: phoneType for SMS "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    :cond_1
    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    if-ne p1, v1, :cond_2

    .line 766
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 768
    :cond_2
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 770
    :cond_3
    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 771
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 772
    :cond_4
    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne p1, v1, :cond_5

    .line 773
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 774
    :cond_5
    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    .line 775
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 774
    :cond_6
    const/4 p1, 0x0

    .line 777
    :goto_0
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_7

    .line 778
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getType: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_7
    return-object p1
.end method

.method private imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 2

    .line 2205
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result p1

    .line 2207
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v0, :cond_0

    .line 2208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "imSelected msgType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapContent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 2212
    return v1

    .line 2215
    :cond_1
    and-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_2

    .line 2216
    return v1

    .line 2219
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 1

    .line 1760
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private matchOriginator(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 3

    .line 1739
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object p3

    .line 1740
    const/4 v0, 0x1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1741
    const-string v1, "*"

    const-string v2, ".*"

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1742
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1743
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_0

    .line 1744
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1745
    :cond_0
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v0, :cond_1

    .line 1746
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchOriginatorMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1748
    :cond_1
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p1, :cond_2

    .line 1749
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "matchOriginator: Unknown msg type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMapContent"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1754
    :cond_3
    nop

    .line 1756
    :goto_0
    return v0
.end method

.method private matchOriginatorMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1660
    const-string p2, "_id"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 1661
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v1, 0x89

    invoke-static {v0, p1, p2, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object p1

    .line 1662
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1663
    invoke-virtual {p1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "BluetoothMapContent"

    if-eqz v1, :cond_1

    .line 1664
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_0

    .line 1665
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "matchOriginatorMms: match originator phone = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    :cond_0
    goto :goto_1

    .line 1669
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 1670
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1671
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_2

    .line 1672
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "matchOriginatorMms: match originator name = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    :cond_2
    goto :goto_0

    .line 1676
    :cond_3
    move p2, v0

    .line 1678
    :goto_0
    goto :goto_1

    .line 1680
    :cond_4
    move p2, v0

    .line 1682
    :goto_1
    return p2
.end method

.method private matchOriginatorSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 9

    .line 1687
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1688
    const-string v1, "matchOriginatorSms: match originator name = "

    const-string v2, "matchOriginatorSms: match originator phone = "

    const/4 v3, 0x0

    const-string v4, "BluetoothMapContent"

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    .line 1689
    const-string p2, "address"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1690
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_4

    .line 1691
    invoke-virtual {p1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1692
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_0

    .line 1693
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    :cond_0
    move v3, v5

    goto :goto_1

    .line 1697
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 1698
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 1699
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_2

    .line 1700
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_2
    move v3, v5

    goto :goto_0

    .line 1704
    :cond_3
    nop

    .line 1706
    :goto_0
    goto :goto_1

    .line 1708
    :cond_4
    nop

    .line 1710
    :goto_1
    goto/16 :goto_2

    .line 1712
    :cond_5
    const-string v0, "sub_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1713
    invoke-static {v6, v7}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getNumberBySubID(J)Ljava/lang/String;

    move-result-object p1

    .line 1714
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v0, :cond_6

    .line 1715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[matchOriginatorSms] subId = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " number = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_6
    nop

    .line 1719
    iget-object p2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    .line 1720
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1721
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_7

    .line 1722
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    :cond_7
    move v3, v5

    goto :goto_2

    .line 1725
    :cond_8
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_a

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1726
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p1, :cond_9

    .line 1727
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    :cond_9
    move v3, v5

    goto :goto_2

    .line 1731
    :cond_a
    nop

    .line 1734
    :goto_2
    return v3
.end method

.method private matchRecipient(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 3

    .line 1638
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object p3

    .line 1639
    const/4 v0, 0x1

    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 1640
    const-string v1, "*"

    const-string v2, ".*"

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 1641
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1642
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v1, :cond_0

    .line 1643
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1644
    :cond_0
    iget v1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v0, :cond_1

    .line 1645
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchRecipientMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 1647
    :cond_1
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p1, :cond_2

    .line 1648
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "matchRecipient: Unknown msg type: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMapContent"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1653
    :cond_3
    nop

    .line 1655
    :goto_0
    return v0
.end method

.method private matchRecipientMms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 3

    .line 1559
    const-string p2, "_id"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    .line 1560
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v1, 0x97

    invoke-static {v0, p1, p2, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object p1

    .line 1561
    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1562
    invoke-virtual {p1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "BluetoothMapContent"

    if-eqz v1, :cond_1

    .line 1563
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_0

    .line 1564
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "matchRecipientMms: match recipient phone = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    :cond_0
    goto :goto_1

    .line 1568
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 1569
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {p1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1570
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_2

    .line 1571
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "matchRecipientMms: match recipient name = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1573
    :cond_2
    goto :goto_0

    .line 1575
    :cond_3
    move p2, v0

    .line 1577
    :goto_0
    goto :goto_1

    .line 1579
    :cond_4
    move p2, v0

    .line 1581
    :goto_1
    return p2
.end method

.method private matchRecipientSms(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Ljava/lang/String;)Z
    .locals 9

    .line 1586
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1587
    const-string v1, "matchRecipientSms: match recipient name = "

    const-string v2, "matchRecipientSms: match recipient phone = "

    const/4 v3, 0x0

    const-string v4, "BluetoothMapContent"

    const/4 v5, 0x1

    if-ne v0, v5, :cond_5

    .line 1589
    const-string v0, "sub_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1590
    invoke-static {v6, v7}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getNumberBySubID(J)Ljava/lang/String;

    move-result-object p1

    .line 1591
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v0, :cond_0

    .line 1592
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[matchRecipientSms] subId = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " number = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_0
    nop

    .line 1596
    iget-object p2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    .line 1597
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1598
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_1

    .line 1599
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    :cond_1
    move v3, v5

    goto :goto_0

    .line 1602
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p2, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1603
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p1, :cond_3

    .line 1604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    :cond_3
    move v3, v5

    goto :goto_0

    .line 1608
    :cond_4
    nop

    .line 1610
    :goto_0
    goto :goto_2

    .line 1611
    :cond_5
    const-string p2, "address"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1612
    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_a

    .line 1613
    invoke-virtual {p1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1614
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_6

    .line 1615
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    :cond_6
    move v3, v5

    goto :goto_2

    .line 1619
    :cond_7
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p1

    .line 1620
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_9

    invoke-virtual {p1, p3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 1621
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_8

    .line 1622
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    :cond_8
    move v3, v5

    goto :goto_1

    .line 1626
    :cond_9
    nop

    .line 1628
    :goto_1
    goto :goto_2

    .line 1630
    :cond_a
    nop

    .line 1633
    :goto_2
    return v3
.end method

.method private mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 2

    .line 2155
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result p1

    .line 2157
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v0, :cond_0

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mmsSelected msgType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapContent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 2162
    return v1

    .line 2165
    :cond_1
    and-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2

    .line 2166
    return v1

    .line 2169
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private populateImEmailConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V
    .locals 8

    .line 3345
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCursorIndex()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3347
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v0

    long-to-int p3, v0

    .line 3348
    iget v0, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 3351
    const-wide/16 v2, 0x2

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 3353
    and-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    .line 3354
    iget v2, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    .line 3357
    :cond_0
    nop

    .line 3358
    and-int/lit8 v2, p3, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 3359
    move v2, v4

    goto :goto_0

    .line 3358
    :cond_1
    move v2, v3

    .line 3361
    :goto_0
    iget v5, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v4, v5, :cond_2

    move v3, v4

    :cond_2
    invoke-virtual {p1, v3, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    .line 3363
    iget v2, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3364
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_3

    .line 3365
    invoke-virtual {p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    goto :goto_1

    .line 3368
    :cond_3
    const-wide/16 v2, -0x1

    invoke-virtual {p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    .line 3372
    :goto_1
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_4

    .line 3373
    invoke-direct {p0, p2, p4, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->updateImEmailConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    .line 3375
    :cond_4
    and-int/lit8 v2, p3, 0x10

    if-eqz v2, :cond_5

    .line 3376
    iget v2, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    .line 3380
    :cond_5
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_10

    .line 3382
    :cond_6
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;

    invoke-direct {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;-><init>()V

    .line 3383
    and-int/lit16 v3, p3, 0x400

    if-eqz v3, :cond_7

    .line 3384
    new-instance v3, Lcom/android/bluetooth/SignedLongLong;

    iget v4, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColBtUid:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/bluetooth/SignedLongLong;-><init>(JJ)V

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setBtUid(Lcom/android/bluetooth/SignedLongLong;)V

    .line 3386
    :cond_7
    and-int/lit16 v3, p3, 0x100

    if-eqz v3, :cond_8

    .line 3387
    iget v3, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColChatState:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setChatState(I)V

    .line 3389
    :cond_8
    and-int/lit16 v3, p3, 0x1000

    if-eqz v3, :cond_9

    .line 3390
    iget v3, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceState:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceAvailability(I)V

    .line 3392
    :cond_9
    and-int/lit16 v3, p3, 0x2000

    if-eqz v3, :cond_a

    .line 3393
    iget v3, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPresenceText:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPresenceStatus(Ljava/lang/String;)V

    .line 3395
    :cond_a
    and-int/lit16 v3, p3, 0x4000

    if-eqz v3, :cond_b

    .line 3396
    iget v3, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColPriority:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setPriority(I)V

    .line 3398
    :cond_b
    and-int/lit16 v3, p3, 0x80

    if-eqz v3, :cond_c

    .line 3399
    iget v3, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColNickname:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setDisplayName(Ljava/lang/String;)V

    .line 3401
    :cond_c
    and-int/lit8 v3, p3, 0x40

    if-eqz v3, :cond_d

    .line 3402
    iget v3, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColContactUci:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setContactId(Ljava/lang/String;)V

    .line 3404
    :cond_d
    and-int/lit16 v3, p3, 0x200

    if-eqz v3, :cond_e

    .line 3405
    iget v3, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColLastActive:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setLastActivity(J)V

    .line 3407
    :cond_e
    and-int/lit16 v3, p3, 0x800

    if-eqz v3, :cond_f

    .line 3408
    iget v3, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mContactColName:I

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;->setName(Ljava/lang/String;)V

    .line 3410
    :cond_f
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->addContact(Lcom/android/bluetooth/map/BluetoothMapConvoContactElement;)V

    .line 3411
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_10

    iget v2, p4, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-eqz v2, :cond_6

    .line 3413
    :cond_10
    return-void
.end method

.method private populateSmsMmsConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/SmsMmsContacts;)V
    .locals 7

    .line 3283
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCursorIndex()I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3285
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v0

    long-to-int v0, v0

    .line 3289
    sget v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_ID:I

    .line 3290
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3289
    const-wide/16 v3, 0x1

    invoke-virtual {p1, v3, v4, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 3292
    sget v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3293
    :goto_0
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_1

    .line 3294
    invoke-virtual {p1, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    goto :goto_1

    .line 3296
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    .line 3299
    :goto_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    .line 3300
    sget v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 3301
    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    .line 3302
    goto :goto_2

    .line 3304
    :cond_2
    const-wide/16 v1, -0x1

    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    .line 3307
    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 3308
    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->updateSmsMmsConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    .line 3311
    :cond_3
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    .line 3312
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    .line 3315
    :cond_4
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_6

    .line 3316
    sget v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET:I

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3317
    sget v2, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_SNIPPET_CS:I

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3318
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 3321
    :try_start_0
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v4, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3324
    move-object v1, v4

    goto :goto_3

    .line 3322
    :catch_0
    move-exception v2

    .line 3323
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "populateSmsMmsConvoElement: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothMapContent"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :cond_5
    :goto_3
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    .line 3329
    :cond_6
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_7

    .line 3330
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 3332
    sget v0, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3333
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->addSmsMmsContacts(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Lcom/android/bluetooth/map/SmsMmsContacts;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    .line 3336
    :cond_7
    return-void
.end method

.method private readRawDataPart(Landroid/net/Uri;J)[B
    .locals 3

    .line 3817
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 3818
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3819
    nop

    .line 3820
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3821
    nop

    .line 3822
    const/16 p3, 0x2000

    new-array p3, p3, [B

    .line 3823
    nop

    .line 3826
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3827
    nop

    .line 3828
    :goto_0
    :try_start_1
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 3829
    const/4 v2, 0x0

    invoke-virtual {p2, p3, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 3831
    :cond_0
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    .line 3832
    :catch_0
    move-exception p3

    goto :goto_1

    .line 3836
    :catchall_0
    move-exception p3

    goto :goto_3

    .line 3832
    :catch_1
    move-exception p3

    move-object p1, v0

    .line 3834
    :goto_1
    :try_start_2
    const-string v1, "BluetoothMapContent"

    const-string v2, "Error reading part data"

    invoke-static {v1, v2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3836
    :goto_2
    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3837
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3838
    nop

    .line 3839
    return-object v0

    .line 3836
    :catchall_1
    move-exception p3

    move-object v0, p1

    :goto_3
    invoke-static {p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3837
    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3838
    throw p3
.end method

.method private setAttachment(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 9

    .line 610
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 611
    const/4 v0, 0x0

    .line 612
    const/4 v1, 0x0

    .line 613
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v5, " Changing size to 1"

    const-string v6, "BluetoothMapContent"

    const/4 v7, 0x1

    if-ne v4, v7, :cond_1

    .line 614
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_7

    .line 615
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColAttachmentSize:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 616
    if-gtz v0, :cond_7

    .line 620
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p2, :cond_0

    .line 621
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error in message database, size reported as: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    move v0, v7

    goto :goto_1

    .line 628
    :cond_1
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_5

    .line 629
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 630
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentSize:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 631
    if-ne v0, v7, :cond_3

    if-nez p2, :cond_3

    .line 632
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p3, :cond_2

    .line 633
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in message database, attachment size reported as: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    :cond_2
    move v0, v7

    goto :goto_0

    .line 640
    :cond_3
    move v0, p2

    :cond_4
    :goto_0
    goto :goto_1

    :cond_5
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 641
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachment:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 642
    iget v4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentSize:I

    invoke-interface {p2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 643
    if-ne v0, v7, :cond_6

    if-nez v4, :cond_6

    .line 644
    nop

    .line 647
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColAttachmentMime:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move v0, v7

    goto :goto_1

    .line 650
    :cond_6
    move v0, v4

    :cond_7
    :goto_1
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_8

    .line 651
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setAttachmentSize: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\nsetAttachmentMimeTypes: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_8
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setAttachmentSize(I)V

    .line 656
    iget p2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    const/16 p3, 0xa

    if-le p2, p3, :cond_9

    .line 657
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide p2

    const-wide/32 v4, 0x100000

    and-long/2addr p2, v4

    cmp-long p2, p2, v2

    if-eqz p2, :cond_9

    .line 658
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setAttachmentMimeTypes(Ljava/lang/String;)V

    .line 661
    :cond_9
    return-void
.end method

.method private setConvoRead(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5

    .line 566
    nop

    .line 567
    nop

    .line 568
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 571
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_0

    .line 572
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setRead: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BluetoothMapContent"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :cond_0
    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, p3

    :goto_0
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v1

    const-wide/16 v3, 0x1000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-eqz p4, :cond_2

    move p3, v0

    :cond_2
    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    .line 575
    return-void
.end method

.method private setConvoWhereFilterSmsMms(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;",
            "Lcom/android/bluetooth/map/BluetoothMapAppParams;",
            ")V"
        }
    .end annotation

    .line 2068
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 2071
    :cond_0
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result p2

    const/4 p3, -0x1

    const-string v0, " AND "

    if-eq p2, p3, :cond_2

    .line 2072
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result p2

    and-int/lit8 p2, p2, 0x1

    const-string p3, "read"

    if-eqz p2, :cond_1

    .line 2073
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2075
    :cond_1
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    .line 2076
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " = 1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2081
    :cond_2
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide p2

    const-wide/16 v1, -0x1

    cmp-long p2, p2, v1

    const-string p3, "date"

    if-eqz p2, :cond_3

    .line 2083
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2084
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2085
    const-string p2, " >= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2086
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2088
    :cond_3
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v3

    cmp-long p2, v3, v1

    if-eqz p2, :cond_4

    .line 2089
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2090
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2091
    const-string p2, " <= "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2092
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2096
    :cond_4
    nop

    .line 2097
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 2098
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoId()Lcom/android/bluetooth/SignedLongLong;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/bluetooth/SignedLongLong;->getLeastSignificantBits()J

    move-result-wide v1

    .line 2100
    :cond_5
    const-wide/16 p2, 0x0

    cmp-long p2, v1, p2

    if-lez p2, :cond_6

    .line 2101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2102
    const-string p2, "_id"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2103
    const-string p2, " = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2107
    :cond_6
    return-void
.end method

.method private setDateTime(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    .line 1270
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_4

    .line 1271
    nop

    .line 1272
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez p4, :cond_0

    .line 1273
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColDate:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    .line 1274
    :cond_0
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 1277
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColDate:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    mul-long v2, p2, v0

    goto :goto_0

    .line 1285
    :cond_1
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x2

    if-eq p4, v0, :cond_2

    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_3

    .line 1286
    :cond_2
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDate:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1288
    :cond_3
    :goto_0
    invoke-virtual {p1, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setDateTime(J)V

    .line 1290
    :cond_4
    return-void
.end method

.method private setDeliveryStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    .line 705
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_3

    .line 706
    nop

    .line 708
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x2

    if-eq p4, v0, :cond_1

    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "delivered"

    goto :goto_1

    .line 709
    :cond_1
    :goto_0
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColDelivery:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 711
    :goto_1
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_2

    .line 712
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setDeliveryStatus: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BluetoothMapContent"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setDeliveryStatus(Ljava/lang/String;)V

    .line 716
    :cond_3
    return-void
.end method

.method private setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V
    .locals 2

    .line 2223
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    .line 2224
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2225
    if-eqz v0, :cond_0

    .line 2226
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    .line 2227
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    .line 2229
    :cond_0
    return-void
.end method

.method private setFolderType(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 10

    .line 786
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_13

    .line 787
    const/4 p4, 0x0

    .line 788
    nop

    .line 789
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x4

    const-string v2, "deleted"

    const-string v3, "outbox"

    const-string v4, "draft"

    const-string v5, "sent"

    const/4 v6, 0x3

    const-string v7, "inbox"

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v0, :cond_5

    .line 790
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 791
    if-ne p2, v9, :cond_0

    .line 792
    move-object p4, v7

    goto/16 :goto_1

    .line 793
    :cond_0
    if-ne p2, v8, :cond_1

    .line 794
    move-object p4, v5

    goto/16 :goto_1

    .line 795
    :cond_1
    if-ne p2, v6, :cond_2

    .line 796
    move-object p4, v4

    goto/16 :goto_1

    .line 797
    :cond_2
    if-eq p2, v1, :cond_4

    const/4 p3, 0x5

    if-eq p2, p3, :cond_4

    const/4 p3, 0x6

    if-ne p2, p3, :cond_3

    goto :goto_0

    .line 800
    :cond_3
    move-object p4, v2

    goto/16 :goto_1

    .line 798
    :cond_4
    :goto_0
    move-object p4, v3

    goto/16 :goto_1

    .line 802
    :cond_5
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v0, v9, :cond_a

    .line 803
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 804
    if-ne p2, v9, :cond_6

    .line 805
    move-object p4, v7

    goto :goto_1

    .line 806
    :cond_6
    if-ne p2, v8, :cond_7

    .line 807
    move-object p4, v5

    goto :goto_1

    .line 808
    :cond_7
    if-ne p2, v6, :cond_8

    .line 809
    move-object p4, v4

    goto :goto_1

    .line 810
    :cond_8
    if-ne p2, v1, :cond_9

    .line 811
    move-object p4, v3

    goto :goto_1

    .line 813
    :cond_9
    move-object p4, v2

    goto :goto_1

    .line 815
    :cond_a
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v0, v8, :cond_b

    goto :goto_1

    .line 817
    :cond_b
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v0, v6, :cond_11

    .line 818
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 819
    int-to-long p2, p2

    const-wide/16 v0, 0x1

    cmp-long p4, p2, v0

    if-nez p4, :cond_c

    .line 820
    move-object p4, v7

    goto :goto_1

    .line 821
    :cond_c
    const-wide/16 v0, 0x2

    cmp-long p4, p2, v0

    if-nez p4, :cond_d

    .line 822
    move-object p4, v5

    goto :goto_1

    .line 823
    :cond_d
    const-wide/16 v0, 0x3

    cmp-long p4, p2, v0

    if-nez p4, :cond_e

    .line 824
    move-object p4, v4

    goto :goto_1

    .line 825
    :cond_e
    const-wide/16 v0, 0x4

    cmp-long p4, p2, v0

    if-nez p4, :cond_f

    .line 826
    move-object p4, v3

    goto :goto_1

    .line 827
    :cond_f
    const-wide/16 v0, 0x5

    cmp-long p2, p2, v0

    if-nez p2, :cond_10

    .line 828
    move-object p4, v2

    goto :goto_1

    .line 830
    :cond_10
    const-string p4, "other"

    .line 833
    :cond_11
    :goto_1
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_12

    .line 834
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setFolderType: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothMapContent"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    :cond_12
    invoke-virtual {p1, p4}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setFolderType(Ljava/lang/String;)V

    .line 838
    :cond_13
    return-void
.end method

.method private setHandle(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 1

    .line 1374
    nop

    .line 1375
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez p4, :cond_0

    .line 1376
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColId:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_1

    .line 1377
    :cond_0
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 1378
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_1

    .line 1379
    :cond_1
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x2

    if-eq p4, v0, :cond_3

    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide/16 p2, -0x1

    goto :goto_1

    .line 1380
    :cond_3
    :goto_0
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColId:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 1382
    :goto_1
    sget-boolean p4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p4, :cond_4

    .line 1383
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setHandle: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "BluetoothMapContent"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_4
    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setHandle(J)V

    .line 1386
    return-void
.end method

.method private setLastActivity(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 1

    .line 1295
    nop

    .line 1296
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eqz p4, :cond_3

    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_1

    .line 1298
    :cond_0
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x2

    if-eq p4, v0, :cond_2

    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 p2, 0x0

    goto :goto_2

    .line 1299
    :cond_2
    :goto_0
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    goto :goto_2

    .line 1297
    :cond_3
    :goto_1
    sget p3, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 1301
    :goto_2
    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    .line 1302
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_4

    .line 1303
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setDateTime: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivityString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMapContent"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_4
    return-void
.end method

.method private setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    .line 579
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/16 v2, 0x800

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_5

    .line 580
    nop

    .line 581
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x2

    const-string v1, "yes"

    const/4 v2, 0x1

    if-eq p4, v0, :cond_0

    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    .line 582
    :cond_0
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColPriority:I

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    .line 583
    if-ne p4, v2, :cond_1

    .line 584
    move-object p4, v1

    goto :goto_0

    .line 587
    :cond_1
    const-string p4, "no"

    :goto_0
    const/4 v0, 0x0

    .line 588
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne p3, v2, :cond_2

    .line 589
    const-string p3, "pri"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 591
    :cond_2
    const/16 p2, 0x82

    if-ne v0, p2, :cond_3

    .line 592
    goto :goto_1

    .line 591
    :cond_3
    move-object v1, p4

    .line 594
    :goto_1
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_4

    .line 595
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setPriority: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothMapContent"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setPriority(Ljava/lang/String;)V

    .line 599
    :cond_5
    return-void
.end method

.method private setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    .line 471
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_3

    .line 472
    nop

    .line 473
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x2

    if-eq p4, v0, :cond_0

    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_1

    .line 474
    :cond_0
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColProtected:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 475
    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 476
    const-string p2, "yes"

    goto :goto_0

    .line 479
    :cond_1
    const-string p2, "no"

    :goto_0
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_2

    .line 480
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setProtected: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "\n"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BluetoothMapContent"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setProtect(Ljava/lang/String;)V

    .line 484
    :cond_3
    return-void
.end method

.method private setRead(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5

    .line 548
    nop

    .line 549
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 550
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColRead:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_1

    .line 551
    :cond_0
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v0, v2, :cond_1

    .line 552
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColRead:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    goto :goto_1

    .line 553
    :cond_1
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    move p2, v1

    goto :goto_1

    .line 554
    :cond_3
    :goto_0
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColRead:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 556
    :goto_1
    const/4 p3, 0x0

    .line 558
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v0, :cond_4

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRead: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BluetoothMapContent"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_4
    if-ne p2, v2, :cond_5

    move p2, v2

    goto :goto_2

    :cond_5
    move p2, v1

    :goto_2
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide p3

    const-wide/16 v3, 0x1000

    and-long/2addr p3, v3

    const-wide/16 v3, 0x0

    cmp-long p3, p3, v3

    if-eqz p3, :cond_6

    move v1, v2

    :cond_6
    invoke-virtual {p1, p2, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRead(ZZ)V

    .line 562
    return-void
.end method

.method private setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 2

    .line 694
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide p2

    const-wide/16 v0, 0x100

    and-long/2addr p2, v0

    const-wide/16 v0, 0x0

    cmp-long p2, p2, v0

    if-eqz p2, :cond_1

    .line 695
    const-string p2, "complete"

    .line 696
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_0

    .line 697
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setReceptionStatus: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BluetoothMapContent"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setReceptionStatus(Ljava/lang/String;)V

    .line 701
    :cond_1
    return-void
.end method

.method private setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    .line 1011
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_8

    .line 1012
    const/4 p4, 0x0

    .line 1013
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v1, "BluetoothMapContent"

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 1014
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    .line 1015
    if-ne p4, v2, :cond_0

    .line 1016
    iget-object p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneNum:Ljava/lang/String;

    goto :goto_0

    .line 1018
    :cond_0
    const-string p3, "address"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1020
    :goto_0
    if-nez p3, :cond_2

    const/4 v0, 0x3

    if-ne p4, v0, :cond_2

    .line 1022
    const-string p4, "thread_id"

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 1023
    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1026
    if-eqz p2, :cond_1

    .line 1027
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-static {p3, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->getCanonicalAddressSms(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object p3

    .line 1029
    :cond_1
    sget-boolean p4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p4, :cond_2

    .line 1030
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "threadId = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " adress:"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_2
    move-object p4, p3

    goto :goto_2

    :cond_3
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v0, v2, :cond_4

    .line 1034
    const-string p3, "_id"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 1035
    iget-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v0, 0x97

    invoke-static {p4, p2, p3, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object p4

    goto :goto_1

    .line 1036
    :cond_4
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 1038
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getRecipientAddressingEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    .line 1036
    :cond_5
    :goto_1
    nop

    .line 1040
    :goto_2
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_6

    .line 1041
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setRecipientAddressing: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    :cond_6
    if-nez p4, :cond_7

    .line 1044
    const-string p4, ""

    .line 1046
    :cond_7
    invoke-virtual {p1, p4}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientAddressing(Ljava/lang/String;)V

    .line 1048
    :cond_8
    return-void
.end method

.method private setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    .line 1052
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/16 v2, 0x10

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_8

    .line 1053
    const/4 p4, 0x0

    .line 1054
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 1055
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1056
    if-eq v0, v1, :cond_1

    .line 1057
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1058
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1059
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p4

    .line 1061
    :cond_0
    goto :goto_0

    .line 1062
    :cond_1
    iget-object p2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    move-object p4, p2

    .line 1064
    :goto_0
    goto :goto_3

    :cond_2
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v0, v1, :cond_4

    .line 1065
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 1067
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRecipientAddressing()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1068
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v1, 0x97

    invoke-static {v0, p2, p3, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 1070
    :cond_3
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getRecipientAddressing()Ljava/lang/String;

    move-result-object p2

    .line 1072
    :goto_1
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_5

    .line 1073
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p2

    move-object p4, p2

    goto :goto_2

    .line 1075
    :cond_4
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 1077
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getRecipientNameEmail(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object p4

    goto :goto_3

    .line 1075
    :cond_5
    :goto_2
    nop

    .line 1079
    :goto_3
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_6

    .line 1080
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setRecipientName: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothMapContent"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_6
    if-nez p4, :cond_7

    .line 1083
    const-string p4, ""

    .line 1085
    :cond_7
    invoke-virtual {p1, p4}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setRecipientName(Ljava/lang/String;)V

    .line 1087
    :cond_8
    return-void
.end method

.method private setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 9

    .line 1091
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_14

    .line 1092
    nop

    .line 1094
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x2

    const-string v1, ""

    const-string v2, "BluetoothMapContent"

    const/4 v3, 0x1

    if-nez p4, :cond_4

    .line 1095
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColType:I

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    .line 1096
    if-ne p4, v3, :cond_0

    .line 1097
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1100
    :cond_0
    const-string p3, "sub_id"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 1101
    invoke-static {p2, p3}, Lcom/android/bluetooth/map/BluetoothMapSimManager;->getNumberBySubID(J)Ljava/lang/String;

    move-result-object p2

    .line 1102
    nop

    .line 1105
    :goto_0
    if-nez p2, :cond_1

    move-object p2, v1

    goto :goto_2

    .line 1109
    :cond_1
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1115
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 1116
    const-string v3, "[0-9]*[a-zA-Z]+[0-9]*"

    invoke-virtual {p4, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p4

    .line 1115
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    .line 1118
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v0, :cond_3

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_1

    :cond_2
    move-object p2, p3

    goto :goto_2

    .line 1119
    :cond_3
    :goto_1
    nop

    .line 1122
    :goto_2
    goto/16 :goto_8

    :cond_4
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne p4, v3, :cond_7

    .line 1123
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 1124
    iget-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v0, 0x89

    invoke-static {p4, p2, p3, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object p2

    .line 1125
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1126
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p4

    if-ge p4, v3, :cond_5

    goto :goto_3

    :cond_5
    move-object p2, p3

    goto :goto_4

    .line 1127
    :cond_6
    :goto_3
    nop

    .line 1129
    :goto_4
    goto/16 :goto_8

    :cond_7
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne p4, v0, :cond_d

    .line 1131
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1132
    invoke-static {p2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object p2

    .line 1133
    array-length p3, p2

    if-eqz p3, :cond_c

    .line 1134
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p3, :cond_8

    .line 1135
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Originator count= "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p2

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_8
    nop

    .line 1138
    const/4 p3, 0x0

    move p4, p3

    move-object v0, v1

    move v4, v3

    .line 1139
    :goto_5
    array-length v5, p2

    if-ge p4, v5, :cond_b

    .line 1140
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_9

    .line 1141
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SenderAddress = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, p4

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    :cond_9
    new-array v5, v3, [Ljava/lang/String;

    .line 1144
    aget-object v6, p2, p4

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p3

    .line 1145
    aget-object v6, p2, p4

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    .line 1146
    if-nez v4, :cond_a

    .line 1147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    :cond_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v5, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1150
    nop

    .line 1151
    add-int/lit8 p4, p4, 0x1

    .line 1152
    move v4, p3

    goto :goto_5

    .line 1139
    :cond_b
    move-object p2, v0

    goto :goto_6

    .line 1133
    :cond_c
    move-object p2, v1

    .line 1154
    :goto_6
    goto :goto_8

    :cond_d
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_11

    .line 1156
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 1159
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ConvoContact"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1160
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "convo_id = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1161
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 1166
    if-eqz p2, :cond_f

    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_f

    .line 1167
    const-string p3, "x_bt_uci"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    .line 1171
    :catchall_0
    move-exception p1

    if-eqz p2, :cond_e

    .line 1172
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1174
    :cond_e
    throw p1

    .line 1171
    :cond_f
    move-object p3, v1

    :goto_7
    if-eqz p2, :cond_10

    .line 1172
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1177
    :cond_10
    move-object p2, p3

    goto :goto_8

    .line 1154
    :cond_11
    move-object p2, v1

    .line 1177
    :goto_8
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_12

    .line 1178
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setSenderAddressing: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :cond_12
    if-nez p2, :cond_13

    .line 1181
    goto :goto_9

    .line 1180
    :cond_13
    move-object v1, p2

    .line 1183
    :goto_9
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderAddressing(Ljava/lang/String;)V

    .line 1185
    :cond_14
    return-void
.end method

.method private setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 8

    .line 1189
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_12

    .line 1190
    nop

    .line 1191
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v0, ""

    const-string v1, "BluetoothMapContent"

    const/4 v2, 0x1

    if-nez p4, :cond_2

    .line 1192
    const-string p4, "type"

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    .line 1193
    if-ne p4, v2, :cond_1

    .line 1194
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColAddress:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1195
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1196
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 1198
    :cond_0
    move-object p2, v0

    :goto_0
    goto :goto_1

    .line 1199
    :cond_1
    iget-object p2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneAlphaTag:Ljava/lang/String;

    .line 1201
    :goto_1
    goto/16 :goto_7

    :cond_2
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne p4, v2, :cond_5

    .line 1202
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 1204
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getSenderAddressing()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    .line 1205
    iget-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/16 v2, 0x89

    invoke-static {p4, p2, p3, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getAddressMms(Landroid/content/ContentResolver;JI)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1207
    :cond_3
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getSenderAddressing()Ljava/lang/String;

    move-result-object p2

    .line 1209
    :goto_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_4

    .line 1210
    iget-object p3, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getContactNameFromPhone(Ljava/lang/String;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 1212
    :cond_4
    move-object p2, v0

    :goto_3
    goto/16 :goto_7

    :cond_5
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-ne p4, v3, :cond_b

    .line 1214
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1215
    invoke-static {p2}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object p2

    .line 1216
    array-length p3, p2

    if-eqz p3, :cond_a

    .line 1217
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p3, :cond_6

    .line 1218
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Originator count= "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p4, p2

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_6
    nop

    .line 1221
    const/4 p3, 0x0

    move p4, p3

    move-object v3, v0

    move v4, v2

    .line 1222
    :goto_4
    array-length v5, p2

    if-ge p4, v5, :cond_9

    .line 1223
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_7

    .line 1224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "senderName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p2, p4

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    :cond_7
    new-array v5, v2, [Ljava/lang/String;

    .line 1227
    aget-object v6, p2, p4

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p3

    .line 1228
    aget-object v5, p2, p4

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1229
    if-nez v4, :cond_8

    .line 1230
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1232
    :cond_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1233
    nop

    .line 1234
    add-int/lit8 p4, p4, 0x1

    .line 1235
    move v4, p3

    goto :goto_4

    .line 1222
    :cond_9
    move-object p2, v3

    goto :goto_5

    .line 1216
    :cond_a
    move-object p2, v0

    .line 1237
    :goto_5
    goto :goto_7

    :cond_b
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne p4, v2, :cond_f

    .line 1239
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFromAddress:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 1240
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ConvoContact"

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1241
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "convo_id = "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1242
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 1247
    if-eqz p2, :cond_d

    :try_start_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 1248
    const-string p3, "name"

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    .line 1252
    :catchall_0
    move-exception p1

    if-eqz p2, :cond_c

    .line 1253
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1255
    :cond_c
    throw p1

    .line 1252
    :cond_d
    move-object p3, v0

    :goto_6
    if-eqz p2, :cond_e

    .line 1253
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1257
    :cond_e
    move-object p2, p3

    goto :goto_7

    .line 1237
    :cond_f
    move-object p2, v0

    .line 1257
    :goto_7
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_10

    .line 1258
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setSenderName: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    :cond_10
    if-nez p2, :cond_11

    .line 1261
    goto :goto_8

    .line 1260
    :cond_11
    move-object v0, p2

    .line 1263
    :goto_8
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSenderName(Ljava/lang/String;)V

    .line 1265
    :cond_12
    return-void
.end method

.method private setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    .line 524
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/16 v2, 0x2000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_6

    .line 525
    const/4 p4, 0x0

    .line 526
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 527
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColFolder:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    goto :goto_0

    .line 528
    :cond_0
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 529
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColFolder:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    goto :goto_0

    .line 530
    :cond_1
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v0, v1, :cond_2

    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 531
    :cond_2
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColFolder:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    .line 533
    :cond_3
    :goto_0
    nop

    .line 534
    if-ne p4, v1, :cond_4

    .line 535
    const-string p2, "yes"

    goto :goto_1

    .line 537
    :cond_4
    const-string p2, "no"

    .line 539
    :goto_1
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_5

    .line 540
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setSent: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BluetoothMapContent"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_5
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSent(Ljava/lang/String;)V

    .line 544
    :cond_6
    return-void
.end method

.method private setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    .line 720
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/16 v2, 0x80

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 721
    const/4 v0, 0x0

    .line 722
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 723
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 724
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 725
    goto :goto_2

    :cond_0
    iget v1, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v1, v2, :cond_3

    .line 726
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSize:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 728
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 729
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 731
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 733
    :cond_2
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    if-eqz p2, :cond_4

    .line 734
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr v0, p2

    goto :goto_0

    .line 736
    :cond_3
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x2

    if-eq p4, v1, :cond_5

    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x3

    if-ne p4, v1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    goto :goto_2

    .line 737
    :cond_5
    :goto_1
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSize:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 739
    :goto_2
    const-string p2, "BluetoothMapContent"

    if-gtz v0, :cond_7

    .line 743
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p3, :cond_6

    .line 744
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Error in message database, size reported as: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " Changing size to 1"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_6
    goto :goto_3

    .line 739
    :cond_7
    move v2, v0

    .line 749
    :goto_3
    sget-boolean p3, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p3, :cond_8

    .line 750
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "setSize: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_8
    invoke-virtual {p1, v2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSize(I)V

    .line 754
    :cond_9
    return-void
.end method

.method private setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 5

    .line 1338
    nop

    .line 1339
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getSubjectLength()I

    move-result v0

    .line 1340
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1341
    const/16 v0, 0x100

    .line 1345
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "64:D4:BD"

    invoke-static {v1, v2}, Lcom/android/bluetooth/DeviceWorkArounds;->addressStartsWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1347
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p4, v1, v3

    if-eqz p4, :cond_b

    .line 1348
    :cond_1
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v1, ""

    if-nez p4, :cond_2

    .line 1349
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColSubject:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 1350
    :cond_2
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x1

    if-ne p4, v2, :cond_5

    .line 1351
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColSubject:I

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 1352
    if-eqz p4, :cond_4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object p2, p4

    goto :goto_2

    .line 1354
    :cond_4
    :goto_0
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 1355
    iget-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p4, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object p2

    .line 1356
    goto :goto_2

    .line 1357
    :cond_5
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x2

    if-eq p4, v2, :cond_7

    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v2, 0x3

    if-ne p4, v2, :cond_6

    goto :goto_1

    :cond_6
    move-object p2, v1

    goto :goto_2

    .line 1358
    :cond_7
    :goto_1
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColSubject:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1360
    :goto_2
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-le p3, v0, :cond_8

    .line 1361
    const/4 p3, 0x0

    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 1362
    :cond_8
    if-nez p2, :cond_9

    .line 1363
    goto :goto_3

    .line 1362
    :cond_9
    move-object v1, p2

    .line 1365
    :goto_3
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_a

    .line 1366
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setSubject: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothMapContent"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    :cond_a
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setSubject(Ljava/lang/String;)V

    .line 1370
    :cond_b
    return-void
.end method

.method private setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    .line 665
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_7

    .line 666
    nop

    .line 667
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v0, "yes"

    if-nez p4, :cond_0

    .line 668
    goto :goto_2

    .line 669
    :cond_0
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x1

    if-ne p4, v1, :cond_3

    .line 670
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColTextOnly:I

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result p4

    .line 671
    if-ne p4, v1, :cond_1

    .line 672
    goto :goto_0

    .line 674
    :cond_1
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColId:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 675
    iget-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {p4, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getTextPartsMms(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object p2

    .line 676
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_2

    .line 677
    goto :goto_0

    .line 679
    :cond_2
    const-string p2, "no"

    move-object v0, p2

    .line 682
    :goto_0
    goto :goto_2

    :cond_3
    iget p2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 p4, 0x2

    if-eq p2, p4, :cond_5

    iget p2, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 p3, 0x3

    if-ne p2, p3, :cond_4

    goto :goto_1

    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 683
    :cond_5
    :goto_1
    nop

    .line 685
    :goto_2
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_6

    .line 686
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setText: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BluetoothMapContent"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_6
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setText(Ljava/lang/String;)V

    .line 690
    :cond_7
    return-void
.end method

.method private setThreadId(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    .line 488
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/32 v2, 0x20000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_4

    .line 489
    nop

    .line 490
    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 491
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v0, :cond_0

    .line 492
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mSmsColThreadId:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    goto :goto_0

    .line 493
    :cond_0
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 494
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMmsColThreadId:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 495
    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    goto :goto_0

    .line 496
    :cond_1
    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 497
    :cond_2
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadId:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 498
    sget-object p4, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    .line 500
    :cond_3
    :goto_0
    invoke-virtual {p1, v2, v3, p4}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setThreadId(JLcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 501
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p1, :cond_4

    .line 502
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setThreadId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMapContent"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :cond_4
    return-void
.end method

.method private setThreadName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    .locals 4

    .line 510
    invoke-virtual {p4}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v0

    const-wide/32 v2, 0x40000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-eqz p4, :cond_0

    .line 511
    iget p4, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x3

    if-ne p4, v0, :cond_0

    .line 512
    iget p3, p3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMessageColThreadName:I

    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 513
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->setThreadName(Ljava/lang/String;)V

    .line 514
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p1, :cond_0

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setThreadName: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMapContent"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_0
    return-void
.end method

.method private setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17

    .line 3618
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 3619
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    .line 3621
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 3622
    return-object v4

    .line 3628
    :cond_0
    const/4 v3, 0x0

    aput-object v1, v6, v3

    .line 3629
    nop

    .line 3632
    sget-object v5, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 3633
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 3635
    const-string v5, "_id"

    const-string v7, "display_name"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v10

    .line 3636
    nop

    .line 3637
    nop

    .line 3640
    iget-object v8, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const/4 v12, 0x0

    const-string v11, "in_visible_group=1"

    const-string v13, "_id ASC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 3642
    if-eqz v8, :cond_1

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3643
    invoke-interface {v8, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3644
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v7

    goto :goto_0

    .line 3647
    :catchall_0
    move-exception v0

    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3648
    throw v0

    .line 3647
    :cond_1
    move-object v5, v4

    move-object v10, v5

    :goto_0
    invoke-static {v8}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3648
    nop

    .line 3650
    if-eqz v5, :cond_4

    .line 3651
    nop

    .line 3654
    :try_start_1
    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    const/4 v13, 0x0

    const-string v14, "contact_id = ?"

    new-array v15, v2, [Ljava/lang/String;

    aput-object v5, v15, v3

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 3657
    if-eqz v2, :cond_3

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3658
    nop

    .line 3659
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 3661
    :goto_1
    const-string v0, "data1"

    .line 3662
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 3661
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3663
    add-int/lit8 v5, v3, 0x1

    aput-object v0, v4, v3

    .line 3664
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    goto :goto_1

    .line 3667
    :catchall_1
    move-exception v0

    move-object v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3668
    move-object v7, v4

    goto :goto_4

    .line 3667
    :catchall_2
    move-exception v0

    :goto_3
    invoke-static {v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->close(Ljava/io/Closeable;)V

    .line 3668
    throw v0

    .line 3650
    :cond_4
    move-object v7, v4

    .line 3671
    :goto_4
    const-string v0, "BluetoothMapContent"

    if-eqz p3, :cond_6

    .line 3672
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_5

    .line 3673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding originator for phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3676
    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object v4, v10

    move-object v5, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_5

    .line 3679
    :cond_6
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_7

    .line 3680
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding recipient for phone:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3683
    :cond_7
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    move-object v4, v10

    move-object v5, v10

    invoke-virtual/range {v3 .. v9}, Lcom/android/bluetooth/map/BluetoothMapbMessage;->addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 3686
    :goto_5
    return-object v10
.end method

.method private setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 2

    .line 2038
    nop

    .line 2039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2041
    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterMessageHandle(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v0

    .line 2043
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2047
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterOriginatorEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2049
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterRecipientEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2051
    :cond_0
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterOriginatorIM(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2055
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterThreadId(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 2057
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2060
    :goto_0
    return-object p1
.end method

.method private setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 2

    .line 1827
    nop

    .line 1828
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1829
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-nez v0, :cond_0

    .line 1830
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeSms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1831
    :cond_0
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1832
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeMms(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1833
    :cond_1
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1834
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeEmail(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1835
    :cond_2
    iget p2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 1836
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderTypeIm(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1840
    :cond_3
    const-string p1, "1=1"

    :goto_0
    return-object p1
.end method

.method private setWhereFilterFolderTypeEmail(J)Ljava/lang/String;
    .locals 2

    .line 1804
    nop

    .line 1805
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folder_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1811
    return-object p1

    .line 1808
    :cond_0
    const-string p1, "BluetoothMapContent"

    const-string p2, "setWhereFilterFolderTypeEmail: not valid!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid folder ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setWhereFilterFolderTypeIm(J)Ljava/lang/String;
    .locals 2

    .line 1815
    nop

    .line 1816
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "folder_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1822
    return-object p1

    .line 1819
    :cond_0
    const-string p1, "BluetoothMapContent"

    const-string p2, "setWhereFilterFolderTypeIm: not valid!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid folder ID"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private setWhereFilterFolderTypeMms(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1786
    nop

    .line 1787
    const-string v0, "inbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1788
    const-string p1, "msg_box = 1 AND thread_id <> -1"

    goto :goto_0

    .line 1789
    :cond_0
    const-string v0, "outbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1790
    const-string p1, "msg_box = 4 AND thread_id <> -1"

    goto :goto_0

    .line 1791
    :cond_1
    const-string v0, "sent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1792
    const-string p1, "msg_box = 2 AND thread_id <> -1"

    goto :goto_0

    .line 1793
    :cond_2
    const-string v0, "draft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1794
    const-string p1, "msg_box = 3 AND (thread_id IS NULL OR thread_id <> -1 )"

    goto :goto_0

    .line 1796
    :cond_3
    const-string v0, "deleted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1797
    const-string p1, "thread_id = -1"

    goto :goto_0

    .line 1796
    :cond_4
    const-string p1, ""

    .line 1800
    :goto_0
    return-object p1
.end method

.method private setWhereFilterFolderTypeSms(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1767
    nop

    .line 1768
    const-string v0, "inbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1769
    const-string p1, "type = 1 AND thread_id <> -1"

    goto :goto_0

    .line 1770
    :cond_0
    const-string v0, "outbox"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1771
    const-string p1, "(type = 4 OR type = 5 OR type = 6) AND thread_id <> -1"

    goto :goto_0

    .line 1773
    :cond_1
    const-string v0, "sent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1774
    const-string p1, "type = 2 AND thread_id <> -1"

    goto :goto_0

    .line 1775
    :cond_2
    const-string v0, "draft"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1776
    const-string p1, "type = 3 AND (thread_id IS NULL OR thread_id <> -1 )"

    goto :goto_0

    .line 1778
    :cond_3
    const-string v0, "deleted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1779
    const-string p1, "thread_id = -1"

    goto :goto_0

    .line 1778
    :cond_4
    const-string p1, ""

    .line 1782
    :goto_0
    return-object p1
.end method

.method private setWhereFilterLastActivity(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 10

    .line 1902
    nop

    .line 1903
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x3

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    .line 1904
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v8, " AND date >= "

    if-nez v0, :cond_0

    .line 1905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1906
    :cond_0
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v0, v7, :cond_1

    .line 1907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityBegin()J

    move-result-wide v8

    div-long/2addr v8, v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1908
    :cond_1
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v0, v6, :cond_2

    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v0, v1, :cond_3

    .line 1909
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " AND last_thread_activity >= "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1910
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1913
    :cond_3
    const-string v0, ""

    :goto_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v8

    cmp-long v2, v8, v2

    if-eqz v2, :cond_7

    .line 1914
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v3, " AND date < "

    if-nez v2, :cond_4

    .line 1915
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1916
    :cond_4
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v2, v7, :cond_5

    .line 1917
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v0

    div-long/2addr v0, v4

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1918
    :cond_5
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v2, v6, :cond_6

    iget p2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne p2, v1, :cond_7

    .line 1919
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND last_thread_activity < "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1920
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterLastActivityEnd()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1923
    :cond_7
    :goto_1
    return-object v0
.end method

.method private setWhereFilterMessageHandle(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 5

    .line 1992
    nop

    .line 1993
    nop

    .line 1994
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMsgHandleString()Ljava/lang/String;

    move-result-object p1

    .line 1995
    const-wide/16 v0, -0x1

    if-eqz p1, :cond_0

    .line 1996
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v2

    .line 1997
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p1, :cond_1

    .line 1998
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BluetoothMapContent"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1995
    :cond_0
    move-wide v2, v0

    .line 2001
    :cond_1
    :goto_0
    cmp-long p1, v2, v0

    if-eqz p1, :cond_5

    .line 2002
    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v0, " AND _id = "

    if-nez p1, :cond_2

    .line 2003
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 2004
    :cond_2
    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 2005
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 2006
    :cond_3
    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 2007
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 2010
    :cond_5
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private setWhereFilterOriginatorEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 2

    .line 1928
    nop

    .line 1929
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object p1

    .line 1932
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1933
    const-string v0, "*"

    const-string v1, "%"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND from_list LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1937
    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private setWhereFilterOriginatorIM(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 2

    .line 1941
    nop

    .line 1942
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterOriginator()Ljava/lang/String;

    move-result-object p1

    .line 1945
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1946
    const-string v0, "*"

    const-string v1, "%"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND from_list LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1950
    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 10

    .line 1875
    nop

    .line 1877
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x3

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    .line 1878
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v8, " AND date >= "

    if-nez v0, :cond_0

    .line 1879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1880
    :cond_0
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v0, v7, :cond_1

    .line 1881
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v8

    div-long/2addr v8, v4

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1882
    :cond_1
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v0, v6, :cond_2

    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v0, v1, :cond_3

    .line 1883
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1884
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodBegin()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1888
    :cond_3
    const-string v0, ""

    :goto_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v8

    cmp-long v2, v8, v2

    if-eqz v2, :cond_7

    .line 1889
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v3, " AND date < "

    if-nez v2, :cond_4

    .line 1890
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1891
    :cond_4
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v2, v7, :cond_5

    .line 1892
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v0

    div-long/2addr v0, v4

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1893
    :cond_5
    iget v2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v2, v6, :cond_6

    iget p2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne p2, v1, :cond_7

    .line 1894
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1895
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPeriodEnd()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1898
    :cond_7
    :goto_1
    return-object v0
.end method

.method private setWhereFilterPriority(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 4

    .line 1954
    nop

    .line 1955
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result p1

    .line 1957
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, ""

    if-ne v0, v2, :cond_1

    .line 1958
    if-ne p1, v1, :cond_0

    .line 1959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND pri<="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x81

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1961
    :cond_0
    if-ne p1, v2, :cond_1

    .line 1962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " AND pri="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x82

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1965
    :cond_1
    :goto_0
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v0, v1, :cond_2

    iget p2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 1966
    :cond_2
    if-ne p1, v1, :cond_3

    .line 1967
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND high_priority!=1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1968
    :cond_3
    if-ne p1, v2, :cond_4

    .line 1969
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND high_priority=1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1973
    :cond_4
    :goto_1
    return-object v3
.end method

.method private setWhereFilterReadStatus(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 6

    .line 1844
    nop

    .line 1845
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result v0

    const-string v1, " AND read= 1"

    const-string v2, ""

    const/4 v3, -0x1

    if-eq v0, v3, :cond_8

    .line 1846
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v3, " AND read= 0"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v0, :cond_2

    .line 1847
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result p2

    and-int/2addr p2, v5

    if-eqz p2, :cond_0

    .line 1848
    move-object v2, v3

    .line 1851
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result p1

    and-int/2addr p1, v4

    if-eqz p1, :cond_1

    .line 1852
    goto :goto_1

    .line 1851
    :cond_1
    move-object v1, v2

    goto :goto_1

    .line 1854
    :cond_2
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-ne v0, v5, :cond_5

    .line 1855
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result p2

    and-int/2addr p2, v5

    if-eqz p2, :cond_3

    .line 1856
    move-object v2, v3

    .line 1859
    :cond_3
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result p1

    and-int/2addr p1, v4

    if-eqz p1, :cond_4

    .line 1860
    goto :goto_1

    .line 1859
    :cond_4
    move-object v1, v2

    goto :goto_1

    .line 1862
    :cond_5
    iget v0, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    if-eq v0, v4, :cond_6

    iget p2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_8

    .line 1863
    :cond_6
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result p2

    and-int/2addr p2, v5

    if-eqz p2, :cond_7

    .line 1864
    const-string p2, " AND flag_read= 0"

    move-object v1, p2

    goto :goto_0

    .line 1863
    :cond_7
    move-object v1, v2

    .line 1866
    :goto_0
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterReadStatus()I

    move-result p1

    and-int/2addr p1, v4

    if-eqz p1, :cond_9

    .line 1867
    const-string v1, " AND flag_read= 1"

    goto :goto_1

    .line 1871
    :cond_8
    move-object v1, v2

    :cond_9
    :goto_1
    return-object v1
.end method

.method private setWhereFilterRecipientEmail(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;
    .locals 3

    .line 1977
    nop

    .line 1978
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object p1

    .line 1981
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1982
    const-string v0, "*"

    const-string v1, "%"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1983
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND (to_list LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "cc_list"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LIKE \'%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "bcc_list"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\' )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1988
    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private setWhereFilterThreadId(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;
    .locals 4

    .line 2014
    nop

    .line 2015
    nop

    .line 2016
    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterConvoIdString()Ljava/lang/String;

    move-result-object p1

    .line 2017
    if-eqz p1, :cond_0

    .line 2018
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgHandleAsLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 2019
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p1, :cond_1

    .line 2020
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "BluetoothMapContent"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2017
    :cond_0
    const-wide/16 v0, -0x1

    .line 2023
    :cond_1
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    .line 2024
    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const-string v2, " AND thread_id = "

    if-nez p1, :cond_2

    .line 2025
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 2026
    :cond_2
    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x1

    if-ne p1, v3, :cond_3

    .line 2027
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 2028
    :cond_3
    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 v3, 0x2

    if-eq p1, v3, :cond_4

    iget p1, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_5

    .line 2029
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 2033
    :cond_5
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 2

    .line 2118
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result p2

    .line 2119
    iget p1, p1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mPhoneType:I

    .line 2121
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v0, :cond_0

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsSelected msgType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapContent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p2, v0, :cond_1

    .line 2126
    return v1

    .line 2129
    :cond_1
    and-int/lit8 v0, p2, 0x3

    if-nez v0, :cond_2

    .line 2131
    return v1

    .line 2134
    :cond_2
    and-int/lit8 v0, p2, 0x1

    if-nez v0, :cond_3

    if-ne p1, v1, :cond_3

    .line 2136
    return v1

    .line 2139
    :cond_3
    const/4 v0, 0x2

    and-int/2addr p2, v0

    if-nez p2, :cond_4

    if-ne p1, v0, :cond_4

    .line 2141
    return v1

    .line 2144
    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private updateImEmailConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V
    .locals 12

    .line 3228
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCpConvoId()J

    move-result-wide v0

    .line 3229
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 3230
    nop

    .line 3231
    nop

    .line 3232
    const-string v3, "BluetoothMapContent"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_1

    .line 3234
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_0

    .line 3235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Added new conversation with ID = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3237
    :cond_0
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    .line 3238
    const-wide/16 v6, 0x2

    invoke-virtual {v2, v6, v7, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 3239
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3240
    nop

    .line 3241
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    move v6, v5

    goto :goto_0

    .line 3232
    :cond_1
    move v6, v4

    .line 3243
    :goto_0
    iget v7, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3244
    iget v8, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3245
    iget p2, p2, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v5, :cond_2

    move p1, v5

    goto :goto_1

    :cond_2
    move p1, v4

    .line 3247
    :goto_1
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v10

    cmp-long p2, v8, v10

    if-eqz p2, :cond_3

    .line 3248
    nop

    .line 3249
    invoke-virtual {v2, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    move p2, v5

    goto :goto_2

    .line 3247
    :cond_3
    move p2, v4

    .line 3252
    :goto_2
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v8

    if-eq p1, v8, :cond_4

    .line 3253
    nop

    .line 3254
    invoke-virtual {v2, p1, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    move p2, v5

    .line 3257
    :cond_4
    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 3258
    nop

    .line 3259
    invoke-virtual {v2, v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    move p2, v5

    .line 3262
    :cond_5
    if-eqz p2, :cond_7

    .line 3263
    nop

    .line 3264
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p1, :cond_6

    .line 3265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "conversation with ID = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " changed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    :cond_6
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    goto :goto_3

    .line 3262
    :cond_7
    move v5, v6

    .line 3269
    :goto_3
    if-eqz v5, :cond_8

    .line 3270
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateImEmailConvoListVersionCounter()V

    .line 3272
    :cond_8
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getVersionCounter()J

    move-result-wide p1

    invoke-virtual {p3, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    .line 3273
    return-void
.end method

.method private updateSmsMmsConvoVersion(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V
    .locals 9

    .line 3184
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getCpConvoId()J

    move-result-wide v0

    .line 3185
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 3186
    nop

    .line 3187
    nop

    .line 3188
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    .line 3190
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    .line 3191
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3192
    const-wide/16 v5, 0x1

    invoke-virtual {v2, v5, v6, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 3193
    nop

    .line 3194
    const-wide/16 v0, 0x0

    invoke-virtual {v2, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    move v0, v4

    goto :goto_0

    .line 3188
    :cond_0
    move v0, v3

    .line 3196
    :goto_0
    sget v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 3197
    sget v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v4, :cond_1

    move p1, v4

    goto :goto_1

    :cond_1
    move p1, v3

    .line 3199
    :goto_1
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-eqz v1, :cond_2

    .line 3200
    nop

    .line 3201
    invoke-virtual {v2, v5, v6}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    move v1, v4

    goto :goto_2

    .line 3199
    :cond_2
    move v1, v3

    .line 3204
    :goto_2
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v5

    if-eq p1, v5, :cond_3

    .line 3205
    nop

    .line 3206
    invoke-virtual {v2, p1, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    move v1, v4

    .line 3209
    :cond_3
    if-eqz v1, :cond_4

    .line 3210
    nop

    .line 3211
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    goto :goto_3

    .line 3209
    :cond_4
    move v4, v0

    .line 3213
    :goto_3
    if-eqz v4, :cond_5

    .line 3214
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateSmsMmsConvoListVersionCounter()V

    .line 3216
    :cond_5
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getVersionCounter()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    .line 3217
    return-void
.end method


# virtual methods
.method public convoListing(Lcom/android/bluetooth/map/BluetoothMapAppParams;Z)Lcom/android/bluetooth/map/BluetoothMapConvoListing;
    .locals 23

    .line 2720
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const-string v8, "conversation end"

    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    const-string v9, "BluetoothMapContent"

    if-eqz v1, :cond_0

    .line 2721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convoListing:  messageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    :cond_0
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapConvoListing;

    invoke-direct {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;-><init>()V

    .line 2727
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 2728
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 2729
    :cond_1
    const-wide/16 v1, 0xe1

    invoke-virtual {v7, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setConvoParameterMask(J)V

    .line 2730
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v1, :cond_2

    .line 2731
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convoListing(): appParameterMask is zero or not present, changing to default: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2732
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getConvoParameterMask()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2731
    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2753
    :cond_2
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v12, 0x0

    invoke-direct {v11, v0, v12}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 2754
    invoke-direct {v0, v11}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2755
    nop

    .line 2756
    nop

    .line 2758
    if-eqz p2, :cond_3

    .line 2759
    const/4 v1, 0x0

    goto :goto_0

    .line 2761
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v1

    .line 2764
    :goto_0
    nop

    .line 2765
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v2

    not-int v2, v2

    and-int/lit8 v2, v2, 0x1f

    .line 2766
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v4

    add-int v14, v3, v4

    .line 2770
    :try_start_0
    invoke-direct {v0, v11, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const-string v15, "Found "

    const/4 v6, 0x1

    if-nez v3, :cond_5

    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    move v13, v6

    goto/16 :goto_8

    .line 2972
    :catchall_0
    move-exception v0

    move-object/from16 v16, v12

    goto/16 :goto_16

    .line 2771
    :cond_5
    :goto_1
    :try_start_2
    const-string v3, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 2772
    const-string v4, " LIMIT "

    if-nez p2, :cond_6

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_6

    .line 2775
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2777
    :cond_6
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v12, "date DESC"

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2778
    if-nez p2, :cond_8

    and-int/lit8 v2, v2, -0x4

    or-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_8

    .line 2781
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_8

    .line 2783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " OFFSET "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2784
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v1, :cond_7

    .line 2785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMS Limit => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 2789
    :cond_8
    move v12, v1

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x78

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2790
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xc

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 2791
    const-string v4, "1=1 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2792
    invoke-direct {v0, v1, v2, v11, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->setConvoWhereFilterSmsMms(Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2793
    nop

    .line 2794
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 2795
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 2796
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object/from16 v21, v4

    goto :goto_3

    .line 2794
    :cond_9
    const/16 v21, 0x0

    .line 2798
    :goto_3
    sget-object v2, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "simple"

    const-string v13, "true"

    .line 2799
    invoke-virtual {v2, v4, v13}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 2800
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v18

    .line 2801
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2802
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v2, :cond_a

    .line 2803
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Query using selection: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - sortOrder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2804
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2803
    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    :cond_a
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v19, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

    .line 2808
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 2809
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2808
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 2810
    if-eqz v13, :cond_11

    .line 2812
    :try_start_5
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_b

    .line 2813
    :try_start_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sms/mms conversations."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    .line 2972
    :catchall_1
    move-exception v0

    move-object/from16 v16, v13

    goto/16 :goto_15

    .line 2815
    :cond_b
    :goto_4
    nop

    .line 2816
    const/4 v1, -0x1

    :try_start_7
    invoke-interface {v13, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2817
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-nez v1, :cond_e

    .line 2818
    const/4 v1, 0x0

    .line 2820
    :cond_c
    :try_start_8
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2821
    invoke-direct {v0, v13, v11, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-result-object v2

    .line 2822
    invoke-virtual {v10, v2}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2823
    add-int/2addr v1, v6

    .line 2824
    if-nez p2, :cond_c

    if-lt v1, v14, :cond_c

    .line 2828
    :cond_d
    move/from16 v19, v12

    move-object/from16 v18, v13

    move v13, v6

    goto :goto_7

    .line 2830
    :cond_e
    :try_start_9
    new-instance v17, Lcom/android/bluetooth/map/SmsMmsContacts;

    invoke-direct/range {v17 .. v17}, Lcom/android/bluetooth/map/SmsMmsContacts;-><init>()V

    .line 2831
    :goto_5
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2832
    nop

    .line 2833
    invoke-direct {v0, v13, v11, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-result-object v5

    .line 2834
    sget v1, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    .line 2835
    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2840
    nop

    .line 2841
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterRecipient()Ljava/lang/String;

    move-result-object v18
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 2840
    move-object/from16 v1, p0

    move-object v2, v5

    move-object/from16 v3, v17

    move/from16 v19, v12

    move-object v12, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v13

    move v13, v6

    move-object/from16 v6, p1

    :try_start_a
    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/map/BluetoothMapContent;->addSmsMmsContacts(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Lcom/android/bluetooth/map/SmsMmsContacts;Ljava/lang/String;Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2842
    invoke-virtual {v10, v12}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 2843
    if-nez p2, :cond_f

    if-gtz v14, :cond_f

    .line 2844
    goto :goto_7

    .line 2847
    :cond_f
    move v6, v13

    move-object/from16 v13, v18

    move/from16 v12, v19

    goto :goto_5

    .line 2972
    :catchall_2
    move-exception v0

    goto :goto_6

    .line 2831
    :cond_10
    move/from16 v19, v12

    move-object/from16 v18, v13

    move v13, v6

    goto :goto_7

    .line 2972
    :catchall_3
    move-exception v0

    move-object/from16 v18, v13

    :goto_6
    move-object/from16 v16, v18

    goto/16 :goto_15

    .line 2810
    :cond_11
    move/from16 v19, v12

    move-object/from16 v18, v13

    move v13, v6

    .line 2852
    :goto_7
    move-object/from16 v12, v18

    move/from16 v1, v19

    :goto_8
    :try_start_b
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-nez v2, :cond_13

    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    if-eqz v2, :cond_12

    goto :goto_9

    :cond_12
    const/4 v2, 0x0

    goto/16 :goto_e

    .line 2853
    :cond_13
    :goto_9
    nop

    .line 2854
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2855
    iput v3, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto :goto_a

    .line 2856
    :cond_14
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2857
    iput v4, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2859
    :cond_15
    :goto_a
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v2, :cond_16

    .line 2860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgType: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Conversation"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2864
    invoke-direct {v0, v7, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->appendConvoListQueryParameters(Lcom/android/bluetooth/map/BluetoothMapAppParams;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v18

    .line 2865
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_17

    .line 2866
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "URI with parameters: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2869
    :cond_17
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v19, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONVERSATION_PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-string v22, "last_thread_activity DESC, thread_id ASC"

    .line 2870
    move-object/from16 v17, v2

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 2876
    if-eqz v2, :cond_1d

    .line 2877
    nop

    .line 2880
    :try_start_c
    invoke-virtual {v11, v2}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailImConvoColumns(Landroid/database/Cursor;)V

    .line 2881
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    .line 2882
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_18

    .line 2883
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " EMAIL/IM conversations. isValid = "

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    :cond_18
    const/4 v6, 0x0

    :goto_b
    if-eqz v5, :cond_1d

    if-nez p2, :cond_19

    if-ge v6, v14, :cond_1d

    .line 2887
    :cond_19
    iget v15, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    move/from16 v18, v5

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 2889
    add-int/lit8 v6, v6, 0x1

    .line 2890
    invoke-direct {v0, v2, v11, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->createConvoElement(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    move-result-object v15

    .line 2891
    invoke-virtual {v10, v15}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->add(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;)V

    .line 2894
    :goto_c
    iget v15, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    move/from16 v19, v14

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 2895
    sget-boolean v15, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v15, :cond_1a

    .line 2896
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  threadId = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " newThreadId = "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2901
    :cond_1a
    cmp-long v3, v13, v4

    if-nez v3, :cond_1c

    .line 2902
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-nez v18, :cond_1b

    move/from16 v5, v18

    goto :goto_d

    :cond_1b
    move/from16 v14, v19

    const/4 v3, 0x2

    const/4 v13, 0x1

    goto :goto_c

    .line 2901
    :cond_1c
    move/from16 v5, v18

    .line 2903
    :goto_d
    move/from16 v14, v19

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v13, 0x1

    goto :goto_b

    .line 2907
    :cond_1d
    :goto_e
    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v3, :cond_1e

    .line 2908
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done adding conversations - list size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 2913
    :cond_1e
    if-eqz p2, :cond_22

    .line 2914
    nop

    .line 2972
    if-eqz v2, :cond_1f

    .line 2973
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2975
    :cond_1f
    if-eqz v12, :cond_20

    .line 2976
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2978
    :cond_20
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v0, :cond_21

    .line 2979
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    :cond_21
    return-object v10

    .line 2919
    :cond_22
    :try_start_d
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->sort()V

    .line 2920
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v3

    invoke-virtual {v10, v3, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->segment(II)V

    .line 2921
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapConvoListing;->getList()Ljava/util/List;

    move-result-object v1

    .line 2922
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 2923
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v4, :cond_23

    .line 2924
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "List Size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    :cond_23
    nop

    .line 2927
    new-instance v4, Lcom/android/bluetooth/map/SmsMmsContacts;

    invoke-direct {v4}, Lcom/android/bluetooth/map/SmsMmsContacts;-><init>()V

    .line 2928
    const/4 v13, 0x0

    :goto_f
    if-ge v13, v3, :cond_2d

    .line 2929
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 2930
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v6

    .line 2931
    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapContent$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v6

    aget v6, v14, v6

    const/4 v14, 0x1

    if-eq v6, v14, :cond_26

    const/4 v15, 0x2

    if-eq v6, v15, :cond_27

    const/4 v15, 0x3

    if-eq v6, v15, :cond_26

    const/4 v14, 0x4

    if-eq v6, v14, :cond_25

    const/4 v14, 0x5

    if-eq v6, v14, :cond_24

    .line 2953
    move v14, v15

    const/4 v6, 0x2

    const/4 v15, 0x0

    goto :goto_13

    .line 2949
    :cond_24
    nop

    .line 2950
    iput v15, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2951
    const/4 v6, 0x2

    goto :goto_10

    .line 2945
    :cond_25
    nop

    .line 2946
    const/4 v6, 0x2

    iput v6, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2947
    nop

    .line 2957
    :goto_10
    move-object v15, v2

    const/4 v14, 0x3

    goto :goto_13

    .line 2931
    :cond_26
    const/4 v6, 0x2

    goto :goto_11

    :cond_27
    move v6, v15

    .line 2935
    :goto_11
    nop

    .line 2936
    if-eqz v12, :cond_28

    .line 2937
    invoke-direct {v0, v5, v12, v7, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->populateSmsMmsConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/SmsMmsContacts;)V

    .line 2939
    :cond_28
    sget-boolean v14, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v14, :cond_29

    .line 2940
    const/4 v14, 0x3

    iput v14, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    goto :goto_12

    .line 2939
    :cond_29
    const/4 v14, 0x3

    .line 2957
    :goto_12
    const/4 v15, 0x0

    :goto_13
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v17, :cond_2a

    .line 2958
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Working on cursor of type "

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v11, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    :cond_2a
    if-eqz v15, :cond_2b

    .line 2962
    invoke-direct {v0, v5, v15, v7, v11}, Lcom/android/bluetooth/map/BluetoothMapContent;->populateImEmailConvoElement(Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    goto :goto_14

    .line 2965
    :cond_2b
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v5, :cond_2c

    .line 2966
    const-string v5, "tmpCursor is Null - something is wrong - or the message is of type SMS/MMS"

    invoke-static {v9, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 2928
    :cond_2c
    :goto_14
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .line 2972
    :cond_2d
    if-eqz v2, :cond_2e

    .line 2973
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2975
    :cond_2e
    if-eqz v12, :cond_2f

    .line 2976
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2978
    :cond_2f
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v0, :cond_30

    .line 2979
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    :cond_30
    return-object v10

    .line 2972
    :catchall_4
    move-exception v0

    move-object/from16 v16, v12

    move-object v12, v2

    goto :goto_16

    :catchall_5
    move-exception v0

    move-object/from16 v16, v12

    :goto_15
    const/4 v12, 0x0

    goto :goto_16

    :catchall_6
    move-exception v0

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_16
    if-eqz v12, :cond_31

    .line 2973
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2975
    :cond_31
    if-eqz v16, :cond_32

    .line 2976
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2978
    :cond_32
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v1, :cond_33

    .line 2979
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    :cond_33
    throw v0
.end method

.method public getEmailMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 4063
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    const-string v4, "BluetoothMapContent"

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    .line 4064
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TYPE_MESSAGE (GET): Attachment = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4065
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", Charset = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4066
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", FractionRequest = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4067
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4064
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4072
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v3

    if-eqz v3, :cond_1b

    .line 4076
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;

    invoke-direct {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;-><init>()V

    .line 4077
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Message"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 4078
    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_ID = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v12

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 4081
    if-eqz v13, :cond_19

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v5, :cond_19

    .line 4083
    nop

    .line 4084
    nop

    .line 4087
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result v5

    .line 4088
    const/4 v14, -0x1

    if-eq v5, v14, :cond_3

    .line 4090
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v6, :cond_2

    .line 4091
    if-nez v5, :cond_1

    const-string v5, "FIRST"

    goto :goto_0

    :cond_1
    const-string v5, "NEXT"

    .line 4092
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getEmailMessage - FractionRequest "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - send compete message"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4096
    :cond_2
    const-string v5, "reception_state"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "complete"

    .line 4098
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 4100
    const-string v5, "getEmailMessage - receptionState not COMPLETE -  Not Implemented!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4105
    :cond_3
    const-string v5, "flag_read"

    .line 4106
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4105
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4107
    const/4 v15, 0x1

    const/4 v11, 0x0

    if-eqz v5, :cond_4

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4108
    invoke-virtual {v3, v15}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setStatus(Z)V

    goto :goto_1

    .line 4110
    :cond_4
    invoke-virtual {v3, v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setStatus(Z)V

    .line 4114
    :goto_1
    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 4115
    iget-object v5, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setVersionString(Ljava/lang/String;)V

    .line 4117
    const-string v5, "folder_id"

    .line 4118
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4117
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 4119
    move-object/from16 v7, p4

    invoke-virtual {v7, v5, v6}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v5

    .line 4120
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setCompleteFolder(Ljava/lang/String;)V

    .line 4123
    const-string v5, "to_list"

    .line 4124
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4123
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4125
    invoke-static {v5}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v10

    .line 4126
    array-length v5, v10

    if-eqz v5, :cond_8

    .line 4127
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v5, :cond_5

    .line 4128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recipient count= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v10

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    :cond_5
    move v9, v11

    .line 4131
    :goto_2
    array-length v5, v10

    if-ge v9, v5, :cond_7

    .line 4132
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_6

    .line 4133
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recipient = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v10, v9

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    :cond_6
    new-array v8, v15, [Ljava/lang/String;

    .line 4136
    aget-object v5, v10, v9

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v11

    .line 4137
    aget-object v5, v10, v9

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v7

    .line 4138
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v5, v3

    move-object v6, v7

    move-object/from16 v19, v8

    move-object/from16 v8, v16

    move/from16 v16, v9

    move-object/from16 v9, v19

    move-object/from16 v19, v10

    move-object/from16 v10, v17

    move v14, v11

    move-object/from16 v11, v18

    invoke-virtual/range {v5 .. v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 4139
    add-int/lit8 v9, v16, 0x1

    .line 4140
    move v11, v14

    move-object/from16 v10, v19

    const/4 v14, -0x1

    goto :goto_2

    .line 4131
    :cond_7
    move v14, v11

    goto :goto_3

    .line 4126
    :cond_8
    move v14, v11

    .line 4144
    :goto_3
    const-string v5, "from_list"

    .line 4145
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 4144
    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4146
    invoke-static {v5}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;

    move-result-object v11

    .line 4147
    array-length v5, v11

    if-eqz v5, :cond_b

    .line 4148
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v5, :cond_9

    .line 4149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Originator count= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v11

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4151
    :cond_9
    move v10, v14

    .line 4152
    :goto_4
    array-length v5, v11

    if-ge v10, v5, :cond_b

    .line 4153
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_a

    .line 4154
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Originator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v11, v10

    invoke-virtual {v6}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4156
    :cond_a
    new-array v9, v15, [Ljava/lang/String;

    .line 4157
    aget-object v5, v11, v10

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v14

    .line 4158
    aget-object v5, v11, v10

    invoke-virtual {v5}, Landroid/text/util/Rfc822Token;->getName()Ljava/lang/String;

    move-result-object v7

    .line 4159
    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    move-object v5, v3

    move-object v6, v7

    move/from16 v19, v10

    move-object/from16 v10, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v18

    invoke-virtual/range {v5 .. v11}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 4160
    add-int/lit8 v10, v19, 0x1

    .line 4161
    move-object/from16 v11, v16

    goto :goto_4

    .line 4164
    :cond_b
    if-eqz v13, :cond_c

    .line 4165
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4169
    :cond_c
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    const-string v6, ""

    if-nez v5, :cond_d

    .line 4170
    :try_start_3
    const-string v5, "/NO_ATTACHMENTS"

    goto :goto_5

    :cond_d
    move-object v5, v6

    .line 4171
    :goto_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 4174
    nop

    .line 4176
    const/4 v2, 0x0

    :try_start_4
    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4177
    :try_start_5
    new-instance v5, Ljava/io/FileInputStream;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 4178
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4179
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 4180
    :cond_e
    :goto_6
    invoke-virtual {v5, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_f

    .line 4182
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2, v14, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4183
    sget-boolean v8, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v8, :cond_e

    .line 4184
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Email part = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v2, v14, v6}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 4189
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->setEmailBody(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4198
    nop

    .line 4199
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 4202
    goto :goto_7

    .line 4201
    :catch_0
    move-exception v0

    .line 4204
    :goto_7
    if-eqz v1, :cond_13

    .line 4205
    :try_start_8
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto/16 :goto_11

    .line 4197
    :catchall_0
    move-exception v0

    move-object v3, v0

    move-object v2, v5

    goto/16 :goto_13

    .line 4194
    :catch_1
    move-exception v0

    move-object v2, v5

    goto :goto_8

    .line 4192
    :catch_2
    move-exception v0

    move-object v2, v5

    goto :goto_b

    .line 4190
    :catch_3
    move-exception v0

    move-object v2, v5

    goto :goto_e

    .line 4194
    :catch_4
    move-exception v0

    goto :goto_8

    .line 4192
    :catch_5
    move-exception v0

    goto :goto_b

    .line 4190
    :catch_6
    move-exception v0

    goto :goto_e

    .line 4197
    :catchall_1
    move-exception v0

    move-object v3, v0

    move-object v1, v2

    goto :goto_13

    .line 4194
    :catch_7
    move-exception v0

    move-object v1, v2

    .line 4195
    :goto_8
    :try_start_9
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 4198
    if-eqz v2, :cond_10

    .line 4199
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_9

    .line 4201
    :catch_8
    move-exception v0

    goto :goto_a

    .line 4202
    :cond_10
    :goto_9
    nop

    .line 4204
    :goto_a
    if-eqz v1, :cond_13

    .line 4205
    :try_start_b
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_d
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_11

    .line 4192
    :catch_9
    move-exception v0

    move-object v1, v2

    .line 4193
    :goto_b
    :try_start_c
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 4198
    if-eqz v2, :cond_11

    .line 4199
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_c

    .line 4201
    :catch_a
    move-exception v0

    goto :goto_d

    .line 4202
    :cond_11
    :goto_c
    nop

    .line 4204
    :goto_d
    if-eqz v1, :cond_13

    .line 4205
    :try_start_e
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_11

    .line 4190
    :catch_b
    move-exception v0

    move-object v1, v2

    .line 4191
    :goto_e
    :try_start_f
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 4198
    if-eqz v2, :cond_12

    .line 4199
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_f

    .line 4201
    :catch_c
    move-exception v0

    goto :goto_10

    .line 4202
    :cond_12
    :goto_f
    nop

    .line 4204
    :goto_10
    if-eqz v1, :cond_13

    .line 4205
    :try_start_11
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto :goto_11

    .line 4207
    :catch_d
    move-exception v0

    .line 4209
    goto :goto_12

    .line 4208
    :cond_13
    :goto_11
    nop

    .line 4210
    :goto_12
    :try_start_12
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageEmail;->encode()[B

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 4213
    if-eqz v13, :cond_14

    .line 4214
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4210
    :cond_14
    return-object v0

    .line 4197
    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 4198
    :goto_13
    if-eqz v2, :cond_15

    .line 4199
    :try_start_13
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    goto :goto_14

    .line 4201
    :catch_e
    move-exception v0

    goto :goto_15

    .line 4202
    :cond_15
    :goto_14
    nop

    .line 4204
    :goto_15
    if-eqz v1, :cond_16

    .line 4205
    :try_start_14
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_f
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto :goto_16

    .line 4207
    :catch_f
    move-exception v0

    goto :goto_17

    .line 4208
    :cond_16
    :goto_16
    nop

    .line 4209
    :goto_17
    :try_start_15
    throw v3

    .line 4164
    :catchall_3
    move-exception v0

    if-eqz v13, :cond_17

    .line 4165
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4167
    :cond_17
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    .line 4213
    :catchall_4
    move-exception v0

    if-eqz v13, :cond_18

    .line 4214
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4216
    :cond_18
    throw v0

    .line 4213
    :cond_19
    if-eqz v13, :cond_1a

    .line 4214
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 4217
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EMAIL handle not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4073
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EMAIL charset not UTF-8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIMMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 4240
    move-object/from16 v0, p0

    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v1

    if-eqz v1, :cond_c

    .line 4245
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    .line 4246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Message"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 4247
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_ID = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p1

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 4249
    nop

    .line 4251
    if-eqz v9, :cond_a

    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 4252
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 4253
    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setVersionString(Ljava/lang/String;)V

    .line 4256
    const-string v2, "flag_read"

    .line 4257
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4258
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 4259
    invoke-virtual {v1, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V

    goto :goto_0

    .line 4261
    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V

    .line 4264
    :goto_0
    const-string v2, "thread_id"

    .line 4265
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v5, v2

    .line 4266
    const-string v2, "folder_id"

    .line 4267
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 4268
    move-object/from16 v2, p4

    invoke-virtual {v2, v7, v8}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderById(J)Lcom/android/bluetooth/map/BluetoothMapFolderElement;

    move-result-object v2

    .line 4269
    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setCompleteFolder(Ljava/lang/String;)V

    .line 4270
    const-string v2, "subject"

    .line 4271
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4270
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setSubject(Ljava/lang/String;)V

    .line 4272
    const-string v2, "_id"

    .line 4273
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4272
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setMessageId(Ljava/lang/String;)V

    .line 4274
    const-string v2, "date"

    .line 4275
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 4274
    invoke-virtual {v1, v11, v12}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setDate(J)V

    .line 4276
    const-string v2, "attachment_size"

    .line 4277
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 4276
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setTextOnly(Z)V

    .line 4280
    invoke-virtual/range {p3 .. p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setIncludeAttachments(Z)V

    .line 4290
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addMimePart()Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;

    move-result-object v2

    .line 4291
    const-string v11, "body"

    .line 4292
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "UTF-8"

    .line 4293
    invoke-virtual {v11, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v11

    iput-object v11, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mData:[B

    .line 4294
    const-string v11, "utf-8"

    iput-object v11, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mCharsetName:Ljava/lang/String;

    .line 4295
    const-string v11, "0"

    iput-object v11, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentId:Ljava/lang/String;

    .line 4296
    const-string v11, "text/plain"

    iput-object v11, v2, Lcom/android/bluetooth/map/BluetoothMapbMessageMime$MimePart;->mContentType:Ljava/lang/String;

    .line 4297
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->updateCharset()V

    .line 4300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "ConvoContact"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 4301
    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v13, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_CONTACT_PROJECTION:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "convo_id = "

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4305
    if-eqz v11, :cond_5

    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4306
    const-string v2, "name"

    .line 4307
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 4306
    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 4308
    new-array v12, v4, [Ljava/lang/String;

    .line 4309
    const-string v2, "x_bt_uid"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v3

    .line 4311
    const-string v2, "nickname"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 4313
    new-array v13, v4, [Ljava/lang/String;

    .line 4314
    new-array v14, v4, [Ljava/lang/String;

    .line 4315
    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mAccount:Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAccountItem;->getUciFull()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v14, v3

    .line 4316
    const-string v0, "x_bt_uci"

    .line 4317
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 4316
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v13, v3

    .line 4318
    const-wide/16 v2, 0x2

    cmp-long v0, v7, v2

    if-eqz v0, :cond_4

    const-wide/16 v2, 0x4

    cmp-long v0, v7, v2

    if-nez v0, :cond_3

    goto :goto_3

    .line 4324
    :cond_3
    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v6

    move-object v4, v5

    move-object v5, v0

    move-object v6, v7

    move-object v7, v12

    move-object v8, v13

    invoke-virtual/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addOriginator(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 4325
    invoke-virtual {v1, v10, v14}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addRecipient([Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    .line 4320
    :cond_4
    :goto_3
    const/4 v0, 0x0

    const/4 v7, 0x0

    move-object v2, v1

    move-object v3, v6

    move-object v4, v5

    move-object v5, v0

    move-object v6, v7

    move-object v7, v12

    move-object v8, v13

    invoke-virtual/range {v2 .. v8}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addRecipient(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 4321
    invoke-virtual {v1, v10, v14}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->addOriginator([Ljava/lang/String;[Ljava/lang/String;)V

    .line 4329
    :cond_5
    :goto_4
    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encode()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4332
    if-eqz v9, :cond_6

    .line 4333
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4335
    :cond_6
    if-eqz v11, :cond_7

    .line 4336
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 4329
    :cond_7
    return-object v0

    .line 4332
    :catchall_0
    move-exception v0

    move-object v10, v11

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_5
    if-eqz v9, :cond_8

    .line 4333
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4335
    :cond_8
    if-eqz v10, :cond_9

    .line 4336
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 4338
    :cond_9
    throw v0

    .line 4332
    :cond_a
    if-eqz v9, :cond_b

    .line 4333
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 4335
    :cond_b
    nop

    .line 4340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IM handle not found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4241
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "IM charset native not allowed for IM - must be utf-8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getImEmailConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    .line 4370
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 3595
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getMsgTypeFromHandle(Ljava/lang/String;)Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v0

    .line 3596
    iput-object p4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    .line 3597
    invoke-static {p1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->getCpHandle(Ljava/lang/String;)J

    move-result-wide v1

    .line 3598
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFractionRequest()I

    move-result p1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_4

    .line 3602
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapContent$1;->$SwitchMap$com$android$bluetooth$map$BluetoothMapUtils$TYPE:[I

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, p4, :cond_3

    const/4 p4, 0x2

    if-eq p1, p4, :cond_3

    const/4 p4, 0x3

    if-eq p1, p4, :cond_2

    const/4 p4, 0x4

    if-eq p1, p4, :cond_1

    const/4 p4, 0x5

    if-ne p1, p4, :cond_0

    .line 3611
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getIMMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B

    move-result-object p1

    return-object p1

    .line 3613
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid message handle."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3609
    :cond_1
    invoke-virtual {p0, v1, v2, p2, p3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getEmailMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapFolderElement;)[B

    move-result-object p1

    return-object p1

    .line 3607
    :cond_2
    invoke-virtual {p0, v1, v2, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->getMmsMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B

    move-result-object p1

    return-object p1

    .line 3605
    :cond_3
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result p1

    invoke-virtual {p0, v1, v2, p1}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMessage(JI)[B

    move-result-object p1

    return-object p1

    .line 3599
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "FRACTION_REQUEST_NEXT does not make sence as we always return the full message."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMmsMessage(JLcom/android/bluetooth/map/BluetoothMapAppParams;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 4002
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getCharset()I

    move-result v0

    if-eqz v0, :cond_7

    .line 4007
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;-><init>()V

    .line 4008
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4010
    if-eqz v1, :cond_5

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4011
    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 4012
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setVersionString(Ljava/lang/String;)V

    .line 4015
    const-string v2, "read"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4016
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 4017
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V

    goto :goto_0

    .line 4019
    :cond_0
    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setStatus(Z)V

    .line 4022
    :goto_0
    const-string v2, "msg_box"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 4023
    const-string v5, "thread_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 4024
    invoke-direct {p0, v2, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setFolder(Ljava/lang/String;)V

    .line 4025
    const-string v2, "sub"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setSubject(Ljava/lang/String;)V

    .line 4026
    const-string v2, "m_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setMessageId(Ljava/lang/String;)V

    .line 4027
    const-string v2, "ct_t"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setContentType(Ljava/lang/String;)V

    .line 4028
    const-string v2, "date"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-virtual {v0, v5, v6}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setDate(J)V

    .line 4029
    const-string v2, "text_only"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setTextOnly(Z)V

    .line 4030
    invoke-virtual {p3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getAttachment()I

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    move v3, v4

    :goto_2
    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->setIncludeAttachments(Z)V

    .line 4035
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractMmsParts(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V

    .line 4038
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->extractMmsAddresses(JLcom/android/bluetooth/map/BluetoothMapbMessageMime;)V

    .line 4041
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encode()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4044
    if-eqz v1, :cond_3

    .line 4045
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4041
    :cond_3
    return-object p1

    .line 4044
    :catchall_0
    move-exception p1

    if-eqz v1, :cond_4

    .line 4045
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4047
    :cond_4
    throw p1

    .line 4044
    :cond_5
    if-eqz v1, :cond_6

    .line 4045
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 4049
    :cond_6
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageMime;->encode()[B

    move-result-object p1

    return-object p1

    .line 4003
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MMS charset native not allowed for MMS - must be utf-8"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getRemoteFeatureMask()I
    .locals 1

    .line 4358
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    return v0
.end method

.method public getSmsMessage(JI)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 3694
    nop

    .line 3696
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;

    invoke-direct {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;-><init>()V

    .line 3697
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    .line 3698
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 3700
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 3701
    if-eqz p1, :cond_b

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 3706
    if-eqz p1, :cond_9

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 3707
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p2, :cond_0

    .line 3708
    const-string p2, "BluetoothMapContent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c.count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p2

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 3712
    sget-object p2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    goto :goto_0

    .line 3715
    :cond_1
    sget-object p2, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setType(Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;)V

    .line 3717
    :goto_0
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMessageVersion:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setVersionString(Ljava/lang/String;)V

    .line 3718
    const-string p2, "read"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 3719
    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    .line 3720
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    goto :goto_1

    .line 3722
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setStatus(Z)V

    .line 3725
    :goto_1
    const-string p2, "type"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    .line 3726
    const-string v3, "thread_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 3727
    invoke-direct {p0, p2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getFolderName(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setFolder(Ljava/lang/String;)V

    .line 3729
    const-string v4, "body"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3731
    const-string v5, "address"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3732
    if-nez v5, :cond_3

    const/4 v6, 0x3

    if-ne p2, v6, :cond_3

    .line 3734
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->getCanonicalAddressSms(Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v5

    .line 3736
    :cond_3
    const-string v3, "date"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 3737
    if-ne p2, v2, :cond_4

    .line 3738
    invoke-direct {p0, v0, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    goto :goto_2

    .line 3740
    :cond_4
    invoke-direct {p0, v0, v5, v1}, Lcom/android/bluetooth/map/BluetoothMapContent;->setVCardFromPhoneNumber(Lcom/android/bluetooth/map/BluetoothMapbMessage;Ljava/lang/String;Z)Ljava/lang/String;

    .line 3742
    :goto_2
    if-nez p3, :cond_6

    .line 3743
    if-ne p2, v2, :cond_5

    .line 3744
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    .line 3745
    invoke-static {p2, v4, v5, v6, v7}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getDeliverPdus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)Ljava/util/ArrayList;

    move-result-object p2

    .line 3744
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 3747
    :cond_5
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mContext:Landroid/content/Context;

    .line 3748
    invoke-static {p2, v4, v5}, Lcom/android/bluetooth/map/BluetoothMapSmsPdu;->getSubmitPdus(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 3747
    invoke-virtual {v0, p2}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBodyPdus(Ljava/util/ArrayList;)V

    goto :goto_3

    .line 3751
    :cond_6
    invoke-virtual {v0, v4}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->setSmsBody(Ljava/lang/String;)V

    .line 3753
    :goto_3
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3756
    if-eqz p1, :cond_7

    .line 3757
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3753
    :cond_7
    return-object p2

    .line 3756
    :catchall_0
    move-exception p2

    if-eqz p1, :cond_8

    .line 3757
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3759
    :cond_8
    throw p2

    .line 3756
    :cond_9
    if-eqz p1, :cond_a

    .line 3757
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 3761
    :cond_a
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapbMessageSms;->encode()[B

    move-result-object p1

    return-object p1

    .line 3702
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SMS handle not found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method getSmsMmsConvoList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;"
        }
    .end annotation

    .line 4362
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public getSubIdByThread(J)J
    .locals 7

    .line 4406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSubIdByThread]: threadId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapContent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    nop

    .line 4408
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapContent;->MMSSMS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 4409
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContent;->SIMID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4410
    const-wide/16 v0, -0x1

    if-eqz p1, :cond_2

    .line 4412
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToLast()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4413
    const-string p2, "transport_type"

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 4414
    const-string v2, "sms"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "sub_id"

    if-eqz v2, :cond_0

    .line 4415
    :try_start_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    .line 4416
    :cond_0
    const-string v2, "mms"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 4417
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4421
    :cond_1
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4422
    goto :goto_1

    .line 4421
    :catchall_0
    move-exception p2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4422
    throw p2

    .line 4424
    :cond_2
    :goto_1
    return-wide v0
.end method

.method public getThreadIdByNumber(Ljava/lang/String;)J
    .locals 10

    .line 4385
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_0

    .line 4386
    return-wide v1

    .line 4388
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v0, :cond_1

    .line 4389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[getThreadId]: number = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BluetoothMapContent"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    :cond_1
    nop

    .line 4392
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapContent;->MAP_CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->THREADID_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v7, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 4393
    if-eqz p1, :cond_3

    .line 4395
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4396
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v0

    .line 4399
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4400
    goto :goto_0

    .line 4399
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 4400
    throw v0

    .line 4402
    :cond_3
    :goto_0
    return-wide v1
.end method

.method public msgListing(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListing;
    .locals 31

    .line 2239
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    const-string v4, "BluetoothMapContent"

    if-eqz v3, :cond_0

    .line 2240
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgListing: messageType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :cond_0
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapMessageListing;

    invoke-direct {v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;-><init>()V

    .line 2247
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    .line 2248
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 2249
    :cond_1
    const-wide v5, 0xffffffffL

    invoke-virtual {v2, v5, v6}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setParameterMask(J)V

    .line 2250
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_2

    .line 2251
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgListing(): appParameterMask is zero or not present, changing to all enabled by default: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2252
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getParameterMask()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2251
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    :cond_2
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_3

    .line 2256
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "folderElement hasSmsMmsContent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " folderElement.hasEmailContent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2257
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " folderElement.hasImContent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2258
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2256
    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_3
    new-instance v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 2263
    invoke-direct {v0, v5}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2264
    nop

    .line 2265
    nop

    .line 2266
    nop

    .line 2267
    nop

    .line 2268
    nop

    .line 2269
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    .line 2270
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v7

    .line 2271
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    const-string v9, " LIMIT "

    if-lez v8, :cond_4

    .line 2272
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 2271
    :cond_4
    const-string v8, ""

    .line 2275
    :goto_0
    :try_start_0
    invoke-direct {v0, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const-string v11, "Found "

    const-string v12, " where: "

    const-string v13, "date DESC"

    const-string v14, "msgType: "

    const-string v15, " OFFSET "

    if-eqz v10, :cond_e

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2276
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v10

    const/16 v6, 0x1d

    if-eq v10, v6, :cond_5

    .line 2279
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v6

    const/16 v10, 0x1e

    if-ne v6, v10, :cond_7

    .line 2285
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2286
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v6, :cond_6

    .line 2287
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS Limit => "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2289
    :cond_6
    const/4 v7, 0x0

    .line 2291
    :cond_7
    const/4 v6, 0x0

    iput v6, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2292
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterPriority()I

    move-result v6

    const/4 v10, 0x1

    if-eq v6, v10, :cond_d

    .line 2293
    invoke-direct {v0, v1, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v6

    .line 2294
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v10, :cond_8

    .line 2295
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v23, v7

    iget v7, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2294
    :cond_8
    move/from16 v23, v7

    .line 2297
    :goto_1
    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v18, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v19, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const/16 v21, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v17, v7

    move-object/from16 v20, v6

    invoke-virtual/range {v17 .. v22}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 2299
    if-eqz v6, :cond_c

    .line 2300
    nop

    .line 2302
    :try_start_2
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v7, :cond_9

    .line 2303
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " sms messages."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    :cond_9
    invoke-virtual {v5, v6}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setSmsColumns(Landroid/database/Cursor;)V

    .line 2306
    :cond_a
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2307
    invoke-direct {v0, v6, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2308
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v7, :cond_b

    .line 2309
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 2311
    :cond_b
    invoke-direct {v0, v6, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v7

    .line 2312
    invoke-virtual {v3, v7}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_2

    .line 2319
    :cond_c
    move/from16 v7, v23

    goto :goto_3

    .line 2292
    :cond_d
    move/from16 v23, v7

    const/4 v6, 0x0

    goto :goto_3

    .line 2319
    :cond_e
    const/4 v6, 0x0

    :goto_3
    invoke-direct {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v10

    if-eqz v10, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v10

    if-eqz v10, :cond_15

    .line 2320
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v10

    move/from16 v17, v7

    const/16 v7, 0x17

    if-ne v10, v7, :cond_10

    .line 2326
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2327
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v7, :cond_f

    .line 2328
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MMS Limit => "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :cond_f
    const/16 v17, 0x0

    .line 2332
    :cond_10
    const/4 v7, 0x1

    iput v7, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2333
    invoke-direct {v0, v1, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    .line 2334
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AND "

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/bluetooth/map/BluetoothMapContent;->INTERESTED_MESSAGE_TYPE_CLAUSE:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2335
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_14

    .line 2336
    sget-boolean v10, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v10, :cond_11

    .line 2337
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-object/from16 v24, v6

    :try_start_3
    iget v6, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2336
    :cond_11
    move-object/from16 v24, v6

    .line 2339
    :goto_4
    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v19, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v20, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const/16 v22, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    invoke-virtual/range {v18 .. v23}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2341
    if-eqz v6, :cond_16

    .line 2342
    nop

    .line 2344
    :try_start_4
    invoke-virtual {v5, v6}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setMmsColumns(Landroid/database/Cursor;)V

    .line 2345
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v7, :cond_12

    .line 2346
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mms messages."

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_12
    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 2349
    invoke-direct {v0, v6, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->matchAddresses(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 2350
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v7, :cond_13

    .line 2351
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 2353
    :cond_13
    invoke-direct {v0, v6, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v7

    .line 2354
    invoke-virtual {v3, v7}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_5

    .line 2495
    :catchall_0
    move-exception v0

    goto/16 :goto_14

    .line 2335
    :cond_14
    move-object/from16 v24, v6

    const/4 v6, 0x0

    goto :goto_6

    .line 2319
    :cond_15
    move-object/from16 v24, v6

    move/from16 v17, v7

    .line 2361
    const/4 v6, 0x0

    :cond_16
    :goto_6
    invoke-direct {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    const-string v10, "Message"

    move-object/from16 v18, v8

    if-eqz v7, :cond_1d

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 2362
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v7

    const/16 v8, 0x1b

    if-ne v7, v8, :cond_18

    .line 2368
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2369
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v7, :cond_17

    .line 2370
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v20, v6

    :try_start_6
    const-string v6, "Email Limit => "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2369
    :cond_17
    move-object/from16 v20, v6

    .line 2372
    :goto_7
    const/4 v6, 0x0

    goto :goto_8

    .line 2362
    :cond_18
    move-object/from16 v20, v6

    move/from16 v6, v17

    move-object/from16 v8, v18

    .line 2374
    :goto_8
    const/4 v7, 0x2

    iput v7, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2375
    invoke-direct {v0, v1, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    .line 2377
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1c

    .line 2378
    sget-boolean v17, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v17, :cond_19

    .line 2379
    move/from16 v17, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v14

    iget v14, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 2378
    :cond_19
    move/from16 v17, v6

    move-object/from16 v21, v14

    .line 2381
    :goto_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 2382
    iget-object v6, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v27, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/16 v29, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 2383
    move-object/from16 v25, v6

    move-object/from16 v28, v7

    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2386
    if-eqz v6, :cond_1e

    .line 2387
    nop

    .line 2389
    :try_start_7
    invoke-virtual {v5, v6}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailMessageColumns(Landroid/database/Cursor;)V

    .line 2390
    nop

    .line 2391
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v7, :cond_1a

    .line 2392
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " email messages."

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    :cond_1a
    :goto_a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 2395
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v7, :cond_1b

    .line 2396
    invoke-static {v6}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 2398
    :cond_1b
    invoke-direct {v0, v6, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v7

    .line 2399
    invoke-virtual {v3, v7}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_a

    .line 2377
    :cond_1c
    move/from16 v17, v6

    move-object/from16 v21, v14

    const/4 v6, 0x0

    goto :goto_b

    .line 2495
    :catchall_1
    move-exception v0

    goto/16 :goto_12

    .line 2361
    :cond_1d
    move-object/from16 v20, v6

    move-object/from16 v21, v14

    .line 2406
    move-object/from16 v8, v18

    const/4 v6, 0x0

    :cond_1e
    :goto_b
    invoke-direct {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v7

    if-eqz v7, :cond_25

    .line 2407
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getFilterMessageType()I

    move-result v7

    const/16 v14, 0xf

    if-ne v7, v14, :cond_20

    .line 2413
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getStartOffset()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2414
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v7, :cond_1f

    .line 2415
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IM Limit => "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    :cond_1f
    const/16 v17, 0x0

    .line 2419
    :cond_20
    const/4 v7, 0x3

    iput v7, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2420
    invoke-direct {v0, v1, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v1

    .line 2421
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v7, :cond_21

    .line 2422
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v9, v21

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2425
    :cond_21
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v26

    .line 2426
    iget-object v7, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v27, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/16 v29, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v25, v7

    move-object/from16 v28, v1

    invoke-virtual/range {v25 .. v30}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 2429
    if-eqz v1, :cond_24

    .line 2430
    nop

    .line 2432
    :try_start_8
    invoke-virtual {v5, v1}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setImMessageColumns(Landroid/database/Cursor;)V

    .line 2433
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v7, :cond_22

    .line 2434
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " im messages."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2436
    :cond_22
    :goto_c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 2437
    sget-boolean v7, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v7, :cond_23

    .line 2438
    invoke-static {v1}, Lcom/android/bluetooth/map/BluetoothMapUtils;->printCursor(Landroid/database/Cursor;)V

    .line 2440
    :cond_23
    invoke-direct {v0, v1, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->element(Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    move-result-object v7

    .line 2441
    invoke-virtual {v3, v7}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->add(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;)V

    goto :goto_c

    .line 2447
    :cond_24
    move/from16 v7, v17

    goto :goto_d

    :cond_25
    move/from16 v7, v17

    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->sort()V

    .line 2448
    invoke-virtual/range {p2 .. p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->getMaxListCount()I

    move-result v8

    invoke-virtual {v3, v8, v7}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->segment(II)V

    .line 2449
    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapMessageListing;->getList()Ljava/util/List;

    move-result-object v7

    .line 2450
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 2451
    nop

    .line 2452
    const/4 v9, 0x0

    const/16 v16, 0x0

    :goto_e
    if-ge v9, v8, :cond_2d

    .line 2453
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;

    .line 2457
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getType()Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    move-result-object v11

    .line 2458
    if-eqz v24, :cond_28

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_GSM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v12, v11}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_27

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->SMS_CDMA:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v12, v11}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    goto :goto_f

    :cond_26
    const/4 v12, 0x0

    goto :goto_10

    .line 2460
    :cond_27
    :goto_f
    nop

    .line 2461
    const/4 v12, 0x0

    iput v12, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v15, v24

    const/4 v11, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x2

    goto :goto_11

    .line 2458
    :cond_28
    const/4 v12, 0x0

    .line 2462
    :goto_10
    if-eqz v20, :cond_29

    sget-object v13, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->MMS:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v13, v11}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_29

    .line 2463
    nop

    .line 2464
    const/4 v13, 0x1

    iput v13, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object/from16 v15, v20

    const/4 v11, 0x3

    const/4 v14, 0x2

    goto :goto_11

    .line 2462
    :cond_29
    const/4 v13, 0x1

    .line 2465
    if-eqz v6, :cond_2a

    sget-object v14, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->EMAIL:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v14, v11}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2a

    .line 2466
    nop

    .line 2467
    const/4 v14, 0x2

    iput v14, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object v15, v6

    const/4 v11, 0x3

    goto :goto_11

    .line 2465
    :cond_2a
    const/4 v14, 0x2

    .line 2468
    if-eqz v1, :cond_2b

    sget-object v15, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->IM:Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;

    invoke-virtual {v15, v11}, Lcom/android/bluetooth/map/BluetoothMapUtils$TYPE;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2b

    .line 2469
    nop

    .line 2470
    const/4 v11, 0x3

    iput v11, v5, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    move-object v15, v1

    goto :goto_11

    .line 2468
    :cond_2b
    const/4 v11, 0x3

    .line 2472
    move-object/from16 v15, v16

    :goto_11
    if-eqz v15, :cond_2c

    .line 2473
    invoke-virtual {v10}, Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;->getCursorIndex()I

    move-result v11

    invoke-interface {v15, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 2474
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSenderAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2475
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSenderName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2476
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRecipientAddressing(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2477
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setRecipientName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2478
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSubject(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2479
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSize(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2480
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setText(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2481
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setPriority(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2482
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSent(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2483
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setProtected(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2484
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setReceptionStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2485
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setAttachment(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2487
    iget v11, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    const/16 v12, 0xa

    if-le v11, v12, :cond_2c

    .line 2488
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setDeliveryStatus(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2489
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setThreadId(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V

    .line 2490
    invoke-direct {v0, v10, v15, v5, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setThreadName(Lcom/android/bluetooth/map/BluetoothMapMessageListingElement;Landroid/database/Cursor;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 2452
    :cond_2c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v16, v15

    goto/16 :goto_e

    .line 2495
    :cond_2d
    if-eqz v6, :cond_2e

    .line 2496
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2498
    :cond_2e
    if-eqz v24, :cond_2f

    .line 2499
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2501
    :cond_2f
    if-eqz v20, :cond_30

    .line 2502
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2504
    :cond_30
    if-eqz v1, :cond_31

    .line 2505
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2510
    :cond_31
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v0, :cond_32

    .line 2511
    const-string v0, "messagelisting end"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2513
    :cond_32
    return-object v3

    .line 2495
    :catchall_2
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_15

    :catchall_3
    move-exception v0

    goto :goto_13

    :catchall_4
    move-exception v0

    move-object/from16 v20, v6

    :goto_12
    const/4 v6, 0x0

    :goto_13
    const/16 v16, 0x0

    goto :goto_15

    :catchall_5
    move-exception v0

    move-object/from16 v24, v6

    :goto_14
    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    goto :goto_15

    :catchall_6
    move-exception v0

    const/4 v6, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x0

    const/16 v24, 0x0

    :goto_15
    if-eqz v6, :cond_33

    .line 2496
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2498
    :cond_33
    if-eqz v24, :cond_34

    .line 2499
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 2501
    :cond_34
    if-eqz v20, :cond_35

    .line 2502
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2504
    :cond_35
    if-eqz v16, :cond_36

    .line 2505
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2507
    :cond_36
    throw v0
.end method

.method public msgListingHasUnread(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z
    .locals 18

    .line 2617
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-boolean v3, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    const-string v4, "BluetoothMapContent"

    if-eqz v3, :cond_0

    .line 2618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msgListingHasUnread: folder = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :cond_0
    nop

    .line 2623
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v5}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 2624
    invoke-direct {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2626
    invoke-direct {v0, v3, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v5

    const-string v6, " AND read=0 "

    const/4 v7, 0x0

    if-eqz v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2627
    iput v7, v3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2628
    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2629
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2630
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2631
    iget-object v9, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v10, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "date DESC"

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2634
    if-eqz v5, :cond_2

    .line 2635
    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2638
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_1

    .line 2639
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2641
    :cond_1
    throw v1

    .line 2634
    :cond_2
    move v8, v7

    .line 2638
    :goto_0
    if-eqz v5, :cond_4

    .line 2639
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 2644
    :cond_3
    move v8, v7

    :cond_4
    :goto_1
    invoke-direct {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v5

    const/4 v9, 0x1

    if-eqz v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2645
    iput v9, v3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2646
    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2647
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2648
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2649
    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v11, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v12, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "date DESC"

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2652
    if-eqz v5, :cond_6

    .line 2653
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v8, v6

    goto :goto_2

    .line 2656
    :catchall_1
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_5

    .line 2657
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2659
    :cond_5
    throw v1

    .line 2656
    :cond_6
    :goto_2
    if-eqz v5, :cond_7

    .line 2657
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2663
    :cond_7
    invoke-direct {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v5

    const-string v6, "Message"

    const-string v10, " AND flag_read=0 "

    if-eqz v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getFolderId()J

    move-result-wide v11

    const-wide/16 v13, -0x1

    cmp-long v5, v11, v13

    if-eqz v5, :cond_a

    .line 2664
    const/4 v5, 0x2

    iput v5, v3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2665
    invoke-direct {v0, v1, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterFolderType(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v5

    .line 2666
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_a

    .line 2667
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2668
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2669
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 2670
    iget-object v12, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "date DESC"

    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 2673
    if-eqz v5, :cond_9

    .line 2674
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/2addr v8, v11

    goto :goto_3

    .line 2677
    :catchall_2
    move-exception v0

    move-object v1, v0

    if-eqz v5, :cond_8

    .line 2678
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2680
    :cond_8
    throw v1

    .line 2677
    :cond_9
    :goto_3
    if-eqz v5, :cond_a

    .line 2678
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 2684
    :cond_a
    invoke-direct {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {p1 .. p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2685
    const/4 v5, 0x3

    iput v5, v3, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2686
    invoke-direct {v0, v1, v3, v2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v1

    .line 2687
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 2688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2689
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0, v2, v3}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilterPeriod(Lcom/android/bluetooth/map/BluetoothMapAppParams;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2690
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 2691
    iget-object v10, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v12, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x0

    const-string v15, "date DESC"

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2695
    if-eqz v1, :cond_c

    .line 2696
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    add-int/2addr v8, v0

    goto :goto_4

    .line 2699
    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_b

    .line 2700
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2702
    :cond_b
    throw v2

    .line 2699
    :cond_c
    :goto_4
    if-eqz v1, :cond_d

    .line 2700
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2706
    :cond_d
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v0, :cond_e

    .line 2707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msgListingHasUnread: numUnread = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    :cond_e
    if-lez v8, :cond_f

    move v7, v9

    :cond_f
    return v7
.end method

.method public msgListingSize(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapAppParams;)I
    .locals 11

    .line 2523
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    const-string v1, "BluetoothMapContent"

    if-eqz v0, :cond_0

    .line 2524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msgListingSize: folder = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    :cond_0
    nop

    .line 2529
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 2530
    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapContent;->setFilterInfo(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;)V

    .line 2532
    invoke-direct {p0, v0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->smsSelected(Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2533
    iput v3, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2534
    invoke-direct {p0, p1, v0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    .line 2535
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2538
    if-eqz v2, :cond_2

    .line 2539
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2542
    :catchall_0
    move-exception p1

    if-eqz v2, :cond_1

    .line 2543
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2545
    :cond_1
    throw p1

    .line 2542
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 2543
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2548
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->mmsSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasSmsMmsContent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2549
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2550
    invoke-direct {p0, p1, v0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v7

    .line 2551
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "date DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2554
    if-eqz v2, :cond_5

    .line 2555
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/2addr v3, v4

    goto :goto_1

    .line 2558
    :catchall_1
    move-exception p1

    if-eqz v2, :cond_4

    .line 2559
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2561
    :cond_4
    throw p1

    .line 2558
    :cond_5
    :goto_1
    if-eqz v2, :cond_6

    .line 2559
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2564
    :cond_6
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->emailSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    const-string v4, "Message"

    if-eqz v2, :cond_9

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasEmailContent()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2565
    const/4 v2, 0x2

    iput v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2566
    invoke-direct {p0, p1, v0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v8

    .line 2567
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 2568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2569
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "date DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2572
    if-eqz v2, :cond_8

    .line 2573
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    add-int/2addr v3, v5

    goto :goto_2

    .line 2576
    :catchall_2
    move-exception p1

    if-eqz v2, :cond_7

    .line 2577
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2579
    :cond_7
    throw p1

    .line 2576
    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    .line 2577
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2583
    :cond_9
    invoke-direct {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->imSelected(Lcom/android/bluetooth/map/BluetoothMapAppParams;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {p1}, Lcom/android/bluetooth/map/BluetoothMapFolderElement;->hasImContent()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2584
    const/4 v2, 0x3

    iput v2, v0, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mMsgType:I

    .line 2585
    invoke-direct {p0, p1, v0, p2}, Lcom/android/bluetooth/map/BluetoothMapContent;->setWhereFilter(Lcom/android/bluetooth/map/BluetoothMapFolderElement;Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;Lcom/android/bluetooth/map/BluetoothMapAppParams;)Ljava/lang/String;

    move-result-object v8

    .line 2586
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 2587
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2588
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/bluetooth/mapapi/BluetoothMapContract;->BT_INSTANT_MESSAGE_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "date DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 2592
    if-eqz p1, :cond_b

    .line 2593
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    add-int/2addr v3, p2

    goto :goto_3

    .line 2596
    :catchall_3
    move-exception p2

    if-eqz p1, :cond_a

    .line 2597
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2599
    :cond_a
    throw p2

    .line 2596
    :cond_b
    :goto_3
    if-eqz p1, :cond_c

    .line 2597
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 2603
    :cond_c
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz p1, :cond_d

    .line 2604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "msgListingSize: size = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    :cond_d
    return v3
.end method

.method refreshImEmailConvoVersions()Z
    .locals 19

    .line 3080
    move-object/from16 v0, p0

    .line 3081
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;-><init>(Lcom/android/bluetooth/map/BluetoothMapContent;Lcom/android/bluetooth/map/BluetoothMapContent$1;)V

    .line 3083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mBaseUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Conversation"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3085
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v2, :cond_0

    .line 3086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI with parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothMapContent"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    :cond_0
    iget-object v3, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/bluetooth/map/BluetoothMapContent;->CONVO_VERSION_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "last_thread_activity DESC, thread_id ASC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 3092
    if-eqz v2, :cond_f

    .line 3093
    nop

    .line 3096
    :try_start_0
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->setEmailImConvoColumns(Landroid/database/Cursor;)V

    .line 3097
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    .line 3098
    sget-boolean v5, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v5, :cond_1

    .line 3099
    const-string v5, "BluetoothMapContent"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Found "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " EMAIL/IM conversations. isValid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3102
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3103
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3104
    nop

    .line 3105
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v6}, Ljava/util/HashMap;-><init>(I)V

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 3107
    :goto_0
    const/4 v9, 0x1

    if-eqz v4, :cond_c

    .line 3108
    iget v10, v1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 3110
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 3111
    if-nez v12, :cond_2

    .line 3113
    new-instance v12, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v12}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    .line 3114
    const-wide/16 v13, 0x2

    invoke-virtual {v12, v13, v14, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 3115
    nop

    .line 3116
    const-wide/16 v13, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    move v6, v9

    .line 3118
    :cond_2
    iget v13, v1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColName:I

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 3119
    iget v14, v1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColSummary:I

    invoke-interface {v2, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 3120
    iget v15, v1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColLastActivity:I

    move/from16 v16, v4

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 3121
    iget v15, v1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColRead:I

    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    if-ne v15, v9, :cond_3

    move v15, v9

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    .line 3123
    :goto_1
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v17

    cmp-long v17, v3, v17

    if-eqz v17, :cond_4

    .line 3124
    nop

    .line 3125
    invoke-virtual {v12, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    move v8, v9

    .line 3128
    :cond_4
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v3

    if-eq v15, v3, :cond_5

    .line 3129
    nop

    .line 3130
    const/4 v3, 0x0

    invoke-virtual {v12, v15, v3}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    move v8, v9

    goto :goto_2

    .line 3128
    :cond_5
    const/4 v3, 0x0

    .line 3133
    :goto_2
    if-eqz v13, :cond_6

    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 3134
    nop

    .line 3135
    invoke-virtual {v12, v13}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setName(Ljava/lang/String;)V

    move v8, v9

    .line 3138
    :cond_6
    if-eqz v14, :cond_7

    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getFullSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 3139
    nop

    .line 3140
    invoke-virtual {v12, v14}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSummary(Ljava/lang/String;)V

    move v8, v9

    move/from16 v4, v16

    goto :goto_3

    .line 3145
    :cond_7
    move/from16 v4, v16

    :goto_3
    iget v13, v1, Lcom/android/bluetooth/map/BluetoothMapContent$FilterInfo;->mConvoColConvoId:I

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 3146
    sget-boolean v15, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz v15, :cond_8

    .line 3147
    const-string v15, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  threadId = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " newThreadId = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3149
    :cond_8
    cmp-long v3, v13, v10

    if-nez v3, :cond_a

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_9

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    const/4 v9, 0x1

    goto :goto_3

    .line 3151
    :cond_a
    :goto_4
    if-eqz v8, :cond_b

    .line 3152
    nop

    .line 3153
    invoke-virtual {v12}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    const/4 v6, 0x1

    .line 3155
    :cond_b
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v3, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3156
    goto/16 :goto_0

    .line 3158
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getImEmailConvoList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_d

    .line 3159
    const/4 v3, 0x1

    goto :goto_5

    .line 3158
    :cond_d
    move v3, v6

    .line 3161
    :goto_5
    invoke-virtual {v0, v7}, Lcom/android/bluetooth/map/BluetoothMapContent;->setImEmailConvoList(Ljava/util/HashMap;)V

    .line 3162
    monitor-exit v5

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3165
    :catchall_1
    move-exception v0

    if-eqz v2, :cond_e

    .line 3166
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3168
    :cond_e
    throw v0

    .line 3092
    :cond_f
    const/4 v3, 0x0

    .line 3165
    :goto_6
    if-eqz v2, :cond_10

    .line 3166
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3170
    :cond_10
    if-eqz v3, :cond_11

    .line 3171
    iget-object v0, v0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateImEmailConvoListVersionCounter()V

    .line 3173
    :cond_11
    return v3
.end method

.method refreshSmsMmsConvoVersions()Z
    .locals 13

    .line 2993
    nop

    .line 2994
    nop

    .line 2995
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2996
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_PROJECTION:[Ljava/lang/String;

    .line 2997
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2999
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3001
    :try_start_0
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMapContent;->D:Z

    if-eqz v2, :cond_0

    .line 3002
    const-string v2, "BluetoothMapContent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sms/mms conversations."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_0
    nop

    .line 3005
    const/4 v2, -0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3006
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3007
    :try_start_1
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 3008
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    move v3, v1

    .line 3010
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    .line 3013
    nop

    .line 3014
    sget v5, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_ID:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 3015
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    .line 3016
    if-nez v7, :cond_1

    .line 3018
    new-instance v7, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;

    invoke-direct {v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;-><init>()V

    .line 3019
    const-wide/16 v8, 0x1

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setConvoId(JJ)V

    .line 3020
    nop

    .line 3021
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setVersionCounter(J)V

    move v3, v6

    .line 3026
    :cond_1
    sget v8, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_DATE:I

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3027
    sget v10, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_READ:I

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v6, :cond_2

    move v10, v6

    goto :goto_1

    :cond_2
    move v10, v1

    .line 3029
    :goto_1
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getLastActivity()J

    move-result-wide v11

    cmp-long v11, v8, v11

    if-eqz v11, :cond_3

    .line 3030
    nop

    .line 3031
    invoke-virtual {v7, v8, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setLastActivity(J)V

    move v8, v6

    goto :goto_2

    .line 3029
    :cond_3
    move v8, v1

    .line 3034
    :goto_2
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getReadBool()Z

    move-result v9

    if-eq v10, v9, :cond_4

    .line 3035
    nop

    .line 3036
    invoke-virtual {v7, v10, v1}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setRead(ZZ)V

    move v8, v6

    .line 3039
    :cond_4
    sget v9, Lcom/android/bluetooth/map/BluetoothMapContent;->MMS_SMS_THREAD_COL_RECIPIENT_IDS:I

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 3040
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->getSmsMmsContacts()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 3044
    nop

    .line 3045
    invoke-virtual {v7, v9}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->setSmsMmsContacts(Ljava/lang/String;)V

    move v3, v6

    .line 3048
    :cond_5
    if-eqz v8, :cond_6

    .line 3049
    nop

    .line 3050
    invoke-virtual {v7}, Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;->incrementVersionCounter()V

    move v3, v6

    .line 3052
    :cond_6
    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3053
    goto :goto_0

    .line 3055
    :cond_7
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapContent;->getSmsMmsConvoList()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-eqz v1, :cond_8

    .line 3056
    move v1, v6

    goto :goto_3

    .line 3055
    :cond_8
    move v1, v3

    .line 3058
    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/bluetooth/map/BluetoothMapContent;->setSmsMmsConvoList(Ljava/util/HashMap;)V

    .line 3059
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3061
    if-eqz v1, :cond_a

    .line 3062
    :try_start_2
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->updateSmsMmsConvoListVersionCounter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    .line 3059
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3066
    :catchall_1
    move-exception v1

    if-eqz v0, :cond_9

    .line 3067
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3069
    :cond_9
    throw v1

    .line 3066
    :cond_a
    :goto_4
    if-eqz v0, :cond_b

    .line 3067
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 3070
    :cond_b
    return v1
.end method

.method setImEmailConvoList(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    .line 4374
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setImEmailConvoList(Ljava/util/HashMap;)V

    .line 4375
    return-void
.end method

.method public setRemoteFeatureMask(I)V
    .locals 2

    .line 4344
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    .line 4345
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    const-string v0, "BluetoothMapContent"

    if-eqz p1, :cond_0

    .line 4346
    const-string p1, "setRemoteFeatureMask"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4348
    :cond_0
    iget p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mRemoteFeatureMask:I

    const/16 v1, 0x200

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_2

    .line 4350
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapContent;->V:Z

    if-eqz p1, :cond_1

    .line 4351
    const-string p1, "setRemoteFeatureMask MAP_MESSAGE_LISTING_FORMAT_V11"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    :cond_1
    const/16 p1, 0xb

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMsgListingVersion:I

    .line 4355
    :cond_2
    return-void
.end method

.method setSmsMmsConvoList(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/android/bluetooth/map/BluetoothMapConvoListingElement;",
            ">;)V"
        }
    .end annotation

    .line 4366
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapContent;->mMasInstance:Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->setSmsMmsConvoList(Ljava/util/HashMap;)V

    .line 4367
    return-void
.end method
