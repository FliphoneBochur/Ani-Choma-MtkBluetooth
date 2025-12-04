.class public Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;
.super Ljava/lang/Object;
.source "BluetoothPbapVcardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;,
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;,
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;,
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;,
        Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;
    }
.end annotation


# static fields
.field private static final CALLLOG_PROJECTION:[Ljava/lang/String;

.field static final CALLLOG_SORT_ORDER:Ljava/lang/String; = "_id DESC"

.field private static final CALLS_ID_COLUMN_INDEX:I = 0x3

.field private static final CALLS_NAME_COLUMN_INDEX:I = 0x1

.field private static final CALLS_NUMBER_COLUMN_INDEX:I = 0x0

.field private static final CALLS_NUMBER_PRESENTATION_COLUMN_INDEX:I = 0x2

.field static final CONTACTS_ID_COLUMN_INDEX:I = 0x0

.field static final CONTACTS_NAME_COLUMN_INDEX:I = 0x1

.field private static final ID_COLUMN_INDEX:I = 0x0

.field private static final NEED_SEND_BODY:I = -0x1

.field static final PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

.field static final PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final PHONE_NUMBER_COLUMN_INDEX:I = 0x3

.field static final SORT_ORDER_PHONE_NUMBER:Ljava/lang/String; = "data1 ASC"

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapVcardManager"

.field private static final V:Z

.field private static final isBuildTypeUser:Z

.field static sLastFetchedTimeStamp:J


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSearchCallLogOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->USER_MODE:Z

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->isBuildTypeUser:Z

    .line 76
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->isBuildTypeUser:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    .line 86
    const-string v0, "contact_id"

    const-string v1, "display_name"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 91
    const-string v0, "_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    .line 532
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CALLLOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mSearchCallLogOn:Z

    .line 113
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->sLastFetchedTimeStamp:J

    .line 116
    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 71
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    return v0
.end method

.method private static appendDistinctNameIdList(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 1439
    const-string v0, "contact_id"

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1440
    const-string v1, "_id"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1441
    const-string v2, "display_name"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1442
    const/4 v3, -0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1443
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1444
    nop

    .line 1445
    if-eq v0, v3, :cond_0

    move v4, v0

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1446
    if-eq v2, v3, :cond_1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_1
    move-object v6, p1

    .line 1447
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1448
    move-object v6, p1

    .line 1451
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1452
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1453
    invoke-virtual {p0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1455
    :cond_3
    goto :goto_0

    .line 1456
    :cond_4
    sget-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz p1, :cond_5

    .line 1457
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1458
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "appendDistinctNameIdList result: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothPbapVcardManager"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    goto :goto_3

    .line 1461
    :cond_5
    return-void
.end method

.method private composeCallLogsAndSendSelectedVCards(Ljavax/obex/Operation;Ljava/lang/String;ZIILjava/lang/String;Z[B[BLjava/lang/String;Z)I
    .locals 17

    .line 1023
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    .line 1024
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v4, :cond_0

    .line 1025
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    .line 1024
    :cond_0
    const-wide/16 v4, 0x0

    .line 1028
    :goto_0
    nop

    .line 1029
    nop

    .line 1032
    const/4 v6, 0x0

    :try_start_0
    new-instance v7, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;

    if-eqz p7, :cond_1

    move-object v8, v6

    goto :goto_1

    :cond_1
    move-object/from16 v8, p8

    :goto_1
    invoke-direct {v7, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;-><init>([B)V

    .line 1033
    new-instance v8, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;

    move-object/from16 v9, p9

    invoke-direct {v8, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;-><init>([B)V

    .line 1034
    new-instance v9, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v10, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1035
    :try_start_1
    new-instance v10, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v11, p6

    invoke-direct {v10, v0, v1, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1036
    :try_start_2
    sget-object v11, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v12, "_id DESC"

    move-object/from16 v13, p2

    invoke-virtual {v9, v11, v13, v6, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->init(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v0, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 1037
    invoke-virtual {v10, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    move/from16 v0, p5

    .line 1041
    :goto_2
    invoke-virtual {v9}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->isAfterLast()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v12, -0x1

    const-string v13, "BluetoothPbapVcardManager"

    if-nez v6, :cond_c

    .line 1042
    :try_start_3
    sget-boolean v6, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v6, :cond_3

    .line 1043
    check-cast v1, Ljavax/obex/ServerOperation;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 1044
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 1045
    goto/16 :goto_4

    .line 1047
    :cond_3
    invoke-virtual {v9, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->createOneEntry(Z)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1048
    const-string v14, "Failed to read a contact. Error reason: "

    const-string v15, "Vcard Entry:"

    if-eqz p11, :cond_8

    .line 1049
    move-object/from16 v11, p10

    :try_start_4
    invoke-static {v8, v6, v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->access$100(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    .line 1050
    const-string v6, "Checking vcard selector for call log"

    invoke-static {v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    nop

    .line 1052
    add-int/lit8 v0, v0, -0x1

    .line 1053
    goto :goto_2

    .line 1055
    :cond_4
    if-ne v3, v12, :cond_b

    .line 1056
    if-nez v6, :cond_5

    .line 1057
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-virtual {v9}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1059
    nop

    .line 1089
    nop

    .line 1090
    invoke-virtual {v9}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 1092
    nop

    .line 1093
    invoke-virtual {v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 1059
    const/16 v0, 0xd0

    return v0

    .line 1060
    :cond_5
    :try_start_5
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 1061
    const-string v6, "Call Log may have been deleted during operation"

    invoke-static {v13, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    goto :goto_2

    .line 1064
    :cond_6
    invoke-virtual {v7, v6, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->apply(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    .line 1066
    sget-boolean v12, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v12, :cond_7

    .line 1067
    invoke-static {v13, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_7
    invoke-virtual {v10, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z

    goto :goto_3

    .line 1073
    :cond_8
    move-object/from16 v11, p10

    if-nez v6, :cond_9

    .line 1074
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    invoke-virtual {v9}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1074
    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1076
    nop

    .line 1089
    nop

    .line 1090
    invoke-virtual {v9}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 1092
    nop

    .line 1093
    invoke-virtual {v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 1076
    const/16 v0, 0xd0

    return v0

    .line 1078
    :cond_9
    :try_start_6
    sget-boolean v12, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v12, :cond_a

    .line 1079
    invoke-static {v13, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_a
    invoke-virtual {v10, v6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1084
    :cond_b
    :goto_3
    goto/16 :goto_2

    .line 1085
    :cond_c
    :goto_4
    if-eq v3, v12, :cond_d

    if-eqz p11, :cond_d

    .line 1086
    nop

    .line 1089
    nop

    .line 1090
    invoke-virtual {v9}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 1092
    nop

    .line 1093
    invoke-virtual {v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 1086
    return v0

    .line 1089
    :cond_d
    nop

    .line 1090
    invoke-virtual {v9}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 1092
    nop

    .line 1093
    invoke-virtual {v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 1097
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v0, :cond_e

    .line 1098
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total vcard composing and sending out takes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_e
    const/16 v0, 0xa0

    return v0

    .line 1038
    :cond_f
    :goto_5
    nop

    .line 1089
    nop

    .line 1090
    invoke-virtual {v9}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 1092
    nop

    .line 1093
    invoke-virtual {v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 1038
    const/16 v0, 0xd0

    return v0

    .line 1089
    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v10, v6

    :goto_6
    move-object v6, v9

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v10, v6

    :goto_7
    if-eqz v6, :cond_10

    .line 1090
    invoke-virtual {v6}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->terminate()V

    .line 1092
    :cond_10
    if-eqz v10, :cond_11

    .line 1093
    invoke-virtual {v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 1095
    :cond_11
    throw v0
.end method

.method private composeContactsAndSendSelectedVCards(Ljavax/obex/Operation;Landroid/database/Cursor;ZLjava/lang/String;IIZ[B[BLjava/lang/String;)I
    .locals 16

    .line 852
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p5

    const-string v4, "BluetoothPbapVcardManager"

    .line 853
    sget-boolean v5, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v5, :cond_0

    .line 854
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    goto :goto_0

    .line 853
    :cond_0
    const-wide/16 v5, 0x0

    .line 857
    :goto_0
    nop

    .line 858
    new-instance v7, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;

    const/4 v8, 0x0

    if-eqz p7, :cond_1

    move-object v9, v8

    goto :goto_1

    :cond_1
    move-object/from16 v9, p8

    :goto_1
    invoke-direct {v7, v9}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;-><init>([B)V

    .line 859
    new-instance v9, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;

    move-object/from16 v10, p9

    invoke-direct {v9, v10}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;-><init>([B)V

    .line 861
    nop

    .line 866
    if-eqz v2, :cond_2

    .line 867
    const/high16 v10, -0x40000000    # -2.0f

    goto :goto_2

    .line 869
    :cond_2
    const v10, -0x3fffffff    # -2.0000002f

    .line 871
    :goto_2
    :try_start_0
    invoke-virtual {v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->isPhotoEnabled()Z

    move-result v11

    if-nez v11, :cond_3

    .line 872
    const/high16 v11, 0x800000

    or-int/2addr v10, v11

    .line 877
    :cond_3
    iget-object v11, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v11, v10, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 882
    :try_start_1
    new-instance v11, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$3;

    invoke-direct {v11, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$3;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-virtual {v10, v11}, Lcom/android/vcard/VCardComposer;->setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V

    .line 893
    new-instance v11, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    move-object/from16 v12, p4

    invoke-direct {v11, v0, v1, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 894
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "contactIdCursor size: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    new-instance v12, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;

    invoke-direct {v12, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;)V

    move-object/from16 v8, p2

    invoke-virtual {v10, v8, v12}, Lcom/android/vcard/VCardComposer;->initWithCallback(Landroid/database/Cursor;Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;)Z

    move-result v8

    const/16 v12, 0xd0

    if-eqz v8, :cond_13

    iget-object v8, v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 896
    invoke-virtual {v11, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_6

    :cond_4
    move/from16 v8, p6

    .line 900
    :goto_3
    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v13

    const/4 v14, -0x1

    if-nez v13, :cond_e

    .line 901
    sget-boolean v13, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz v13, :cond_5

    .line 902
    move-object v0, v1

    check-cast v0, Ljavax/obex/ServerOperation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 903
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 904
    goto/16 :goto_5

    .line 906
    :cond_5
    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v13

    .line 907
    if-nez v13, :cond_7

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to read a contact. Error reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 908
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 910
    nop

    .line 947
    if-eqz v10, :cond_6

    .line 948
    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 950
    :cond_6
    nop

    .line 951
    invoke-virtual {v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 910
    return v12

    .line 911
    :cond_7
    :try_start_3
    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 912
    const-string v13, "Contact may have been deleted during operation"

    invoke-static {v4, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    move-object/from16 v12, p10

    goto :goto_4

    .line 915
    :cond_8
    sget-boolean v15, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v15, :cond_9

    .line 916
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Checking selected bits in the vcard composer"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_9
    move-object/from16 v12, p10

    invoke-static {v9, v13, v12}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->access$100(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_a

    .line 920
    const-string v13, "vcard selector check fail"

    invoke-static {v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    nop

    .line 922
    add-int/lit8 v8, v8, -0x1

    .line 923
    const/16 v12, 0xd0

    goto :goto_3

    .line 926
    :cond_a
    const-string v15, "vcard selector check pass"

    invoke-static {v4, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    if-ne v3, v14, :cond_d

    .line 929
    invoke-virtual {v7, v13, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->apply(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    .line 930
    invoke-virtual {v0, v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->stripTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 931
    invoke-direct {v0, v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->modifyNamePosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 932
    sget-boolean v14, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v14, :cond_b

    .line 933
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "vCard after cleanup: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_b
    invoke-virtual {v11, v13}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z

    move-result v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v13, :cond_d

    .line 938
    nop

    .line 947
    if-eqz v10, :cond_c

    .line 948
    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 950
    :cond_c
    nop

    .line 951
    invoke-virtual {v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 938
    const/16 v0, 0xd0

    return v0

    .line 941
    :cond_d
    nop

    .line 900
    :goto_4
    const/16 v12, 0xd0

    goto/16 :goto_3

    .line 943
    :cond_e
    :goto_5
    if-eq v3, v14, :cond_10

    .line 944
    nop

    .line 947
    if-eqz v10, :cond_f

    .line 948
    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 950
    :cond_f
    nop

    .line 951
    invoke-virtual {v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 944
    return v8

    .line 947
    :cond_10
    if-eqz v10, :cond_11

    .line 948
    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 950
    :cond_11
    nop

    .line 951
    invoke-virtual {v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 955
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v0, :cond_12

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Total vcard composing and sending out takes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_12
    const/16 v0, 0xa0

    return v0

    .line 897
    :cond_13
    :goto_6
    nop

    .line 947
    if-eqz v10, :cond_14

    .line 948
    invoke-virtual {v10}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 950
    :cond_14
    nop

    .line 951
    invoke-virtual {v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 897
    const/16 v0, 0xd0

    return v0

    .line 947
    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v11, v8

    :goto_7
    move-object v8, v10

    goto :goto_8

    :catchall_2
    move-exception v0

    move-object v11, v8

    :goto_8
    if-eqz v8, :cond_15

    .line 948
    invoke-virtual {v8}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 950
    :cond_15
    if-eqz v11, :cond_16

    .line 951
    invoke-virtual {v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 953
    :cond_16
    throw v0
.end method

.method private composeContactsAndSendVCards(Ljavax/obex/Operation;Landroid/database/Cursor;ZLjava/lang/String;Z[B)I
    .locals 6

    .line 750
    const-string v0, "BluetoothPbapVcardManager"

    .line 751
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v1, :cond_0

    .line 752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    goto :goto_0

    .line 751
    :cond_0
    const-wide/16 v1, 0x0

    .line 755
    :goto_0
    nop

    .line 756
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;

    const/4 v4, 0x0

    if-eqz p5, :cond_1

    move-object p6, v4

    :cond_1
    invoke-direct {v3, p6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;-><init>([B)V

    .line 758
    nop

    .line 762
    if-eqz p3, :cond_2

    .line 763
    nop

    .line 764
    nop

    .line 765
    const/high16 p5, -0x28000000

    goto :goto_1

    .line 767
    :cond_2
    const p5, -0x3fffffff    # -2.0000002f

    .line 769
    :goto_1
    :try_start_0
    invoke-virtual {v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->isPhotoEnabled()Z

    move-result p6

    if-nez p6, :cond_3

    .line 770
    const/high16 p6, 0x800000

    or-int/2addr p5, p6

    .line 775
    :cond_3
    iget-object p6, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {p6, p5, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;

    move-result-object p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 781
    :try_start_1
    new-instance p6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;

    invoke-direct {p6, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-virtual {p5, p6}, Lcom/android/vcard/VCardComposer;->setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V

    .line 794
    new-instance p6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;

    invoke-direct {p6, p0, p1, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;Ljavax/obex/Operation;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 795
    :try_start_2
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contactIdCursor size: "

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    new-instance p4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;

    invoke-direct {p4, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;)V

    invoke-virtual {p5, p2, p4}, Lcom/android/vcard/VCardComposer;->initWithCallback(Landroid/database/Cursor;Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;)Z

    move-result p2

    const/16 p4, 0xd0

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 797
    invoke-virtual {p6, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onInit(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_4

    goto/16 :goto_4

    .line 801
    :cond_4
    :goto_2
    invoke-virtual {p5}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result p2

    if-nez p2, :cond_d

    .line 802
    sget-boolean p2, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    if-eqz p2, :cond_5

    .line 803
    check-cast p1, Ljavax/obex/ServerOperation;

    const/4 p2, 0x1

    iput-boolean p2, p1, Ljavax/obex/ServerOperation;->isAborted:Z

    .line 804
    const/4 p1, 0x0

    sput-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->sIsAborted:Z

    .line 805
    goto/16 :goto_3

    .line 807
    :cond_5
    invoke-virtual {p5}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object p2

    .line 808
    if-nez p2, :cond_7

    .line 809
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to read a contact. Error reason: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-virtual {p5}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 809
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 811
    nop

    .line 833
    if-eqz p5, :cond_6

    .line 834
    invoke-virtual {p5}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 836
    :cond_6
    nop

    .line 837
    invoke-virtual {p6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 811
    return p4

    .line 812
    :cond_7
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 813
    const-string p2, "Contact may have been deleted during operation"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    goto :goto_2

    .line 816
    :cond_8
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v4, :cond_9

    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vCard from composer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_9
    invoke-virtual {v3, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$VCardFilter;->apply(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 821
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->stripTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 822
    invoke-direct {p0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->modifyNamePosition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 823
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v4, :cond_a

    .line 824
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vCard after cleanup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_a
    invoke-virtual {p6, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onEntryCreated(Ljava/lang/String;)Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_c

    .line 829
    nop

    .line 833
    if-eqz p5, :cond_b

    .line 834
    invoke-virtual {p5}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 836
    :cond_b
    nop

    .line 837
    invoke-virtual {p6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 829
    return p4

    .line 831
    :cond_c
    goto/16 :goto_2

    .line 833
    :cond_d
    :goto_3
    if-eqz p5, :cond_e

    .line 834
    invoke-virtual {p5}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 836
    :cond_e
    nop

    .line 837
    invoke-virtual {p6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 841
    sget-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz p1, :cond_f

    .line 842
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Total vcard composing and sending out takes "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    sub-long/2addr p2, v1

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_f
    const/16 p1, 0xa0

    return p1

    .line 798
    :cond_10
    :goto_4
    nop

    .line 833
    if-eqz p5, :cond_11

    .line 834
    invoke-virtual {p5}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 836
    :cond_11
    nop

    .line 837
    invoke-virtual {p6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 798
    return p4

    .line 833
    :catchall_0
    move-exception p1

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object p6, v4

    :goto_5
    move-object v4, p5

    goto :goto_6

    :catchall_2
    move-exception p1

    move-object p6, v4

    :goto_6
    if-eqz v4, :cond_12

    .line 834
    invoke-virtual {v4}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 836
    :cond_12
    if-eqz p6, :cond_13

    .line 837
    invoke-virtual {p6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$HandlerForStringBuffer;->onTerminate()V

    .line 839
    :cond_13
    throw p1
.end method

.method private static getDistinctContactIdSize(Landroid/database/Cursor;)I
    .locals 9

    .line 1414
    const-string v0, "contact_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1415
    const-string v1, "_id"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1416
    nop

    .line 1417
    nop

    .line 1418
    const/4 v2, -0x1

    invoke-interface {p0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    .line 1419
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1420
    nop

    .line 1421
    if-eq v0, v2, :cond_0

    move v6, v0

    goto :goto_1

    :cond_0
    move v6, v1

    :goto_1
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 1422
    cmp-long v8, v3, v6

    if-eqz v8, :cond_1

    .line 1423
    add-int/lit8 v5, v5, 0x1

    .line 1424
    move-wide v3, v6

    .line 1426
    :cond_1
    goto :goto_0

    .line 1427
    :cond_2
    sget-boolean p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz p0, :cond_3

    .line 1428
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDistinctContactIdSize result: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothPbapVcardManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    :cond_3
    return v5
.end method

.method private getOwnerPhoneNumberVcardFromProfile(Z[B)Ljava/lang/String;
    .locals 1

    .line 127
    if-eqz p1, :cond_0

    .line 128
    const/high16 p1, -0x40000000    # -2.0f

    goto :goto_0

    .line 130
    :cond_0
    const p1, -0x3fffffff    # -2.0000002f

    .line 133
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->includePhotosInVcard()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createProfileVCard(Landroid/content/Context;I[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getPhoneLookupFilterUri()Landroid/net/Uri;
    .locals 1

    .line 1406
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private modifyNamePosition(Ljava/lang/String;)Ljava/lang/String;
    .locals 16

    .line 965
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 966
    nop

    .line 967
    nop

    .line 968
    nop

    .line 970
    const-string v1, ""

    const/4 v2, 0x0

    move-object v4, v1

    move v3, v2

    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_5

    .line 971
    aget-object v5, v0, v3

    const-string v6, "VERSION:3.0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "3.0"

    const-string v7, "2.1"

    if-eqz v5, :cond_0

    .line 972
    move-object v4, v6

    goto :goto_1

    .line 973
    :cond_0
    aget-object v5, v0, v3

    const-string v8, "VERSION:2.1"

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 974
    move-object v4, v7

    .line 976
    :cond_1
    :goto_1
    const/4 v5, 0x4

    const/4 v8, 0x3

    const-string v9, ";;"

    const/4 v10, 0x2

    const/4 v11, 0x5

    const/4 v12, 0x1

    const-string v13, ";"

    if-ne v4, v6, :cond_2

    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 977
    const-string v14, "N:[\\u4E00-\\u9FA5]+?;[\\u4E00-\\u9FA5]+?;[\\u4E00-\\u9FA5]+?;;"

    invoke-virtual {v6, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 978
    aget-object v4, v0, v3

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 979
    array-length v6, v4

    if-ne v6, v11, :cond_5

    .line 980
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 981
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v4, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v4, v12

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 982
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v5

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 983
    aput-object v4, v0, v3

    goto/16 :goto_2

    .line 986
    :cond_2
    const/4 v6, 0x6

    if-ne v4, v7, :cond_3

    aget-object v14, v0, v3

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    .line 987
    const-string v15, "N;CHARSET=UTF-8;ENCODING=QUOTED-PRINTABLE:[^;]+?;[^;]+?;[^;]+?;;"

    invoke-virtual {v14, v15}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 988
    aget-object v4, v0, v3

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 989
    array-length v7, v4

    const/4 v14, 0x7

    if-ne v7, v14, :cond_5

    .line 990
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v14, v4, v2

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v12, v4, v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v4, v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 991
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v4, v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v4, v8

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 992
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v4, v11

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v6

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 993
    aput-object v4, v0, v3

    goto :goto_2

    .line 996
    :cond_3
    if-ne v4, v7, :cond_4

    aget-object v7, v0, v3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 997
    const-string v14, "N;CHARSET=UTF-8:[\\u4E00-\\u9FA5]+?;[\\u4E00-\\u9FA5]+?;[\\u4E00-\\u9FA5]+?;;"

    invoke-virtual {v7, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 999
    aget-object v4, v0, v3

    invoke-virtual {v4, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1000
    array-length v7, v4

    if-ne v7, v6, :cond_5

    .line 1001
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v4, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1002
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v4, v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v4, v10

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1003
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v4, v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v4, v11

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1004
    aput-object v4, v0, v3

    goto :goto_2

    .line 970
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1010
    :cond_5
    :goto_2
    move-object v3, v1

    :goto_3
    array-length v4, v0

    if-ge v2, v4, :cond_7

    .line 1011
    aget-object v4, v0, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1012
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1010
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1015
    :cond_7
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vcard with name changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapVcardManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_8
    return-object v3
.end method


# virtual methods
.method final composeAndSendPhonebookOneVcard(Ljavax/obex/Operation;IZLjava/lang/String;IZ[B)I
    .locals 11

    .line 653
    move-object v1, p0

    move v0, p2

    const-string v2, "BluetoothPbapVcardManager"

    const/4 v3, 0x1

    if-ge v0, v3, :cond_0

    .line 654
    const-string v0, "Internal error: offset is not correct."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/16 v0, 0xd0

    return v0

    .line 657
    :cond_0
    iget-object v4, v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    .line 659
    nop

    .line 660
    new-instance v4, Landroid/database/MatrixCursor;

    const-string v5, "contact_id"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 664
    nop

    .line 666
    move/from16 v7, p5

    if-ne v7, v3, :cond_1

    .line 667
    :try_start_0
    const-string v3, "display_name"

    move-object v10, v3

    goto :goto_0

    .line 666
    :cond_1
    move-object v10, v5

    .line 669
    :goto_0
    iget-object v5, v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 673
    if-eqz v2, :cond_2

    .line 674
    invoke-static {v2, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;->filterByOffset(Landroid/database/Cursor;I)Landroid/database/Cursor;

    move-result-object v0

    .line 675
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 676
    move-object v3, v0

    goto :goto_1

    .line 673
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 670
    :catch_0
    move-exception v0

    .line 671
    :try_start_1
    const-string v0, "CursorWindowAllocationException while composing phonebook one vcard"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 679
    :cond_2
    move-object v3, v4

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move-object v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeContactsAndSendVCards(Ljavax/obex/Operation;Landroid/database/Cursor;ZLjava/lang/String;Z[B)I

    move-result v0

    return v0

    .line 678
    :goto_2
    throw v0
.end method

.method final composeAndSendPhonebookVcards(Ljavax/obex/Operation;IIZLjava/lang/String;IIZ[B[BLjava/lang/String;ZZ)I
    .locals 12

    .line 609
    move-object v1, p0

    move v0, p2

    move v2, p3

    const-string v3, "BluetoothPbapVcardManager"

    const/4 v4, 0x1

    if-lt v0, v4, :cond_6

    if-le v0, v2, :cond_0

    goto/16 :goto_3

    .line 614
    :cond_0
    iget-object v4, v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v6

    .line 615
    nop

    .line 616
    new-instance v4, Landroid/database/MatrixCursor;

    const-string v5, "contact_id"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 620
    nop

    .line 621
    const/4 v11, 0x0

    if-eqz p13, :cond_1

    .line 622
    const-string v5, "starred = 1"

    move-object v8, v5

    goto :goto_0

    .line 621
    :cond_1
    move-object v8, v11

    .line 626
    :goto_0
    :try_start_0
    iget-object v5, v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v7, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "contact_id"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 628
    if-eqz v11, :cond_2

    .line 629
    nop

    .line 630
    invoke-static {v11, p2, p3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$ContactCursorFilter;->filterByRange(Landroid/database/Cursor;II)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 635
    :cond_2
    if-eqz v11, :cond_3

    .line 636
    goto :goto_1

    .line 635
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 632
    :catch_0
    move-exception v0

    .line 633
    :try_start_1
    const-string v0, "CursorWindowAllocationException while composing phonebook vcards"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 635
    if-eqz v11, :cond_3

    .line 636
    :goto_1
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 640
    :cond_3
    move-object v3, v4

    if-eqz p12, :cond_4

    .line 641
    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v1 .. v11}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeContactsAndSendSelectedVCards(Ljavax/obex/Operation;Landroid/database/Cursor;ZLjava/lang/String;IIZ[B[BLjava/lang/String;)I

    move-result v0

    return v0

    .line 645
    :cond_4
    move-object v1, p0

    move-object v2, p1

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeContactsAndSendVCards(Ljavax/obex/Operation;Landroid/database/Cursor;ZLjava/lang/String;Z[B)I

    move-result v0

    return v0

    .line 635
    :goto_2
    if-eqz v11, :cond_5

    .line 636
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 638
    :cond_5
    throw v0

    .line 610
    :cond_6
    :goto_3
    const-string v0, "internal error: startPoint or endPoint is not correct."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/16 v0, 0xd0

    return v0
.end method

.method final composeAndSendSelectedCallLogVcards(ILjavax/obex/Operation;IIZIIZ[B[BLjava/lang/String;Z)I
    .locals 26

    .line 541
    move/from16 v1, p3

    move/from16 v2, p4

    const/4 v0, 0x1

    const-string v3, "BluetoothPbapVcardManager"

    if-lt v1, v0, :cond_a

    if-le v1, v2, :cond_0

    goto/16 :goto_8

    .line 545
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v10

    .line 547
    sget-object v5, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 548
    const/4 v11, 0x0

    .line 549
    nop

    .line 550
    nop

    .line 553
    const-wide/16 v12, 0x0

    move-object/from16 v14, p0

    :try_start_0
    iget-object v4, v14, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->CALLLOG_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id DESC"

    move-object v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 555
    if-eqz v11, :cond_3

    .line 556
    add-int/lit8 v0, v1, -0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 557
    const/4 v0, 0x0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :try_start_1
    sget-boolean v6, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v6, :cond_1

    .line 559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call Log query startPointId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :cond_1
    if-ne v1, v2, :cond_2

    .line 562
    move-wide v12, v4

    goto :goto_0

    .line 564
    :cond_2
    add-int/lit8 v6, v2, -0x1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 565
    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-wide v12, v6

    .line 567
    :goto_0
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v0, :cond_4

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call log query endPointId = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 571
    :catch_0
    move-exception v0

    goto :goto_3

    .line 555
    :cond_3
    move-wide v4, v12

    .line 574
    :cond_4
    :goto_1
    if-eqz v11, :cond_5

    .line 575
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 576
    goto :goto_4

    .line 574
    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 571
    :catch_1
    move-exception v0

    move-wide v4, v12

    .line 572
    :goto_3
    :try_start_2
    const-string v0, "CursorWindowAllocationException while composing calllog vcards"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 574
    if-eqz v11, :cond_5

    .line 575
    goto :goto_2

    .line 581
    :cond_5
    :goto_4
    if-ne v1, v2, :cond_6

    .line 582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 586
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id>="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 591
    :goto_5
    if-nez v10, :cond_7

    .line 592
    goto :goto_6

    .line 594
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 597
    :goto_6
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v1, :cond_8

    .line 598
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call log query selection is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_8
    const/16 v20, 0x0

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-object/from16 v16, v0

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v21, p8

    move-object/from16 v22, p9

    move-object/from16 v23, p10

    move-object/from16 v24, p11

    move/from16 v25, p12

    invoke-direct/range {v14 .. v25}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->composeCallLogsAndSendSelectedVCards(Ljavax/obex/Operation;Ljava/lang/String;ZIILjava/lang/String;Z[B[BLjava/lang/String;Z)I

    move-result v0

    return v0

    .line 574
    :goto_7
    if-eqz v11, :cond_9

    .line 575
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 578
    :cond_9
    throw v0

    .line 542
    :cond_a
    :goto_8
    const-string v0, "internal error: startPoint or endPoint is not correct."

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/16 v0, 0xd0

    return v0
.end method

.method getCallHistoryPrimaryFolderVersion(I)[B
    .locals 10

    .line 500
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 501
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v0

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND date >= "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->sLastFetchedTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAST_FETCHED_TIME_STAMP is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->sLastFetchedTimeStamp:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "BluetoothPbapVcardManager"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    nop

    .line 506
    nop

    .line 507
    nop

    .line 508
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 510
    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v7

    .line 511
    :goto_0
    if-eqz v9, :cond_0

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 512
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 514
    :catch_0
    move-exception v2

    goto :goto_2

    .line 517
    :cond_0
    if-eqz v9, :cond_1

    .line 518
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 519
    goto :goto_3

    .line 517
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 514
    :catch_1
    move-exception v0

    move-wide v0, v7

    .line 515
    :goto_2
    :try_start_2
    const-string v2, "exception while fetching callHistory pvc"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 517
    if-eqz v9, :cond_1

    .line 518
    goto :goto_1

    .line 523
    :cond_1
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->sLastFetchedTimeStamp:J

    .line 524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCallHistoryPrimaryFolderVersion count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/16 p1, 0x10

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 526
    invoke-virtual {p1, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "primaryVersionCounter is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 529
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    .line 517
    :goto_4
    if-eqz v9, :cond_2

    .line 518
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 521
    :cond_2
    throw p1
.end method

.method public final getCallHistorySize(I)I
    .locals 7

    .line 210
    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 211
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object v3

    .line 212
    nop

    .line 213
    nop

    .line 215
    const/4 p1, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "date DESC"

    .line 216
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 217
    if-eqz v6, :cond_0

    .line 218
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result p1
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    if-eqz v6, :cond_1

    .line 224
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 225
    goto :goto_1

    .line 223
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 220
    :catch_0
    move-exception v0

    .line 221
    :try_start_1
    const-string v0, "BluetoothPbapVcardManager"

    const-string v1, "CursorWindowAllocationException while getting CallHistory size"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    if-eqz v6, :cond_1

    .line 224
    goto :goto_0

    .line 228
    :cond_1
    :goto_1
    return p1

    .line 223
    :goto_2
    if-eqz v6, :cond_2

    .line 224
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 227
    :cond_2
    throw p1
.end method

.method public final getContactNamesByNumber(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 453
    const-string v0, "BluetoothPbapVcardManager"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 456
    nop

    .line 457
    nop

    .line 458
    nop

    .line 460
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    .line 462
    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    move-object v6, v3

    move-object v7, v4

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getPhoneLookupFilterUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 465
    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONE_LOOKUP_PROJECTION:[Ljava/lang/String;

    move-object v6, v3

    move-object v7, v4

    .line 469
    :goto_0
    const/4 v3, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "contact_id"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 471
    if-eqz v3, :cond_1

    .line 472
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v5, 0x104000e

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->appendDistinctNameIdList(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 474
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v4, :cond_1

    .line 475
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "got name "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " by number "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    goto :goto_1

    .line 483
    :cond_1
    if-eqz v3, :cond_2

    .line 484
    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 485
    goto :goto_3

    .line 483
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 480
    :catch_0
    move-exception p1

    .line 481
    :try_start_1
    const-string p1, "CursorWindowAllocationException while getting contact names"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 483
    if-eqz v3, :cond_2

    .line 484
    goto :goto_2

    .line 488
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 489
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p1, :cond_4

    .line 490
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 491
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 492
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 489
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 496
    :cond_4
    return-object v1

    .line 483
    :goto_5
    if-eqz v3, :cond_5

    .line 484
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 487
    :cond_5
    throw p1
.end method

.method public final getContactsSize(I)I
    .locals 8

    .line 181
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    .line 182
    nop

    .line 183
    nop

    .line 184
    const/4 v0, 0x0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_0

    .line 185
    const-string v1, "starred = 1"

    move-object v4, v1

    goto :goto_0

    .line 184
    :cond_0
    move-object v4, v0

    .line 188
    :goto_0
    const/4 v7, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "contact_id"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "contact_id"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-nez v0, :cond_2

    .line 192
    nop

    .line 202
    if-eqz v0, :cond_1

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 192
    :cond_1
    return v7

    .line 194
    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getDistinctContactIdSize(Landroid/database/Cursor;)I

    move-result v1
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 196
    add-int/lit8 v1, v1, 0x1

    .line 198
    :cond_3
    nop

    .line 202
    if-eqz v0, :cond_4

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_4
    return v1

    .line 202
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 199
    :catch_0
    move-exception p1

    .line 200
    :try_start_2
    const-string p1, "BluetoothPbapVcardManager"

    const-string v1, "CursorWindowAllocationException while getting Contacts size"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    if-eqz v0, :cond_5

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_5
    return v7

    .line 202
    :goto_1
    if-eqz v0, :cond_6

    .line 203
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_6
    throw p1
.end method

.method public final getOwnerPhoneNumberVcard(Z[B)Ljava/lang/String;
    .locals 3

    .line 142
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->useProfileForOwnerVcard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getOwnerPhoneNumberVcardFromProfile(Z[B)Ljava/lang/String;

    move-result-object p2

    .line 144
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    return-object p2

    .line 150
    :cond_0
    new-instance p2, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;

    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneNum()Ljava/lang/String;

    move-result-object v1

    .line 153
    const/4 v2, 0x2

    invoke-virtual {p2, v2, v0, v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapCallLogComposer;->composeVCardForPhoneOwnNumber(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 155
    return-object p1
.end method

.method public final getPhonebookNameList(I)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    nop

    .line 311
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->useProfileForOwnerVcard()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->getProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 311
    :cond_0
    move-object v1, v2

    .line 314
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 315
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 317
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v4

    .line 321
    nop

    .line 323
    nop

    .line 325
    const/4 v1, 0x1

    const-string v9, "BluetoothPbapVcardManager"

    if-ne p1, v1, :cond_3

    .line 326
    :try_start_0
    const-string p1, "display_name"
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, p1

    goto :goto_1

    .line 325
    :cond_3
    const-string p1, "contact_id"

    move-object v8, p1

    .line 328
    :goto_1
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 329
    if-eqz v2, :cond_4

    .line 330
    iget-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v1, 0x104000e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->appendDistinctNameIdList(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/Cursor;)V
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    :cond_4
    if-eqz v2, :cond_5

    .line 339
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 340
    goto :goto_3

    .line 338
    :catchall_0
    move-exception p1

    goto :goto_4

    .line 335
    :catch_0
    move-exception p1

    .line 336
    :try_start_2
    const-string v1, "Exception while getting phonebook name list"

    invoke-static {v9, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    if-eqz v2, :cond_5

    .line 339
    goto :goto_2

    .line 333
    :catch_1
    move-exception p1

    .line 334
    const-string p1, "CursorWindowAllocationException while getting phonebook name list"

    invoke-static {v9, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    if-eqz v2, :cond_5

    .line 339
    goto :goto_2

    .line 343
    :cond_5
    :goto_3
    return-object v0

    .line 338
    :goto_4
    if-eqz v2, :cond_6

    .line 339
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 342
    :cond_6
    throw p1
.end method

.method public final getPhonebookSize(I)I
    .locals 3

    .line 160
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 166
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getCallHistorySize(I)I

    move-result v0

    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->getContactsSize(I)I

    move-result v0

    .line 164
    nop

    .line 169
    :goto_0
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v1, :cond_1

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhonebookSize size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BluetoothPbapVcardManager"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_1
    return v0
.end method

.method final getSelectedPhonebookNameList(IZII[BLjava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZII[B",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 349
    const-string p3, "BluetoothPbapVcardManager"

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 350
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;

    invoke-direct {v0, p5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;-><init>([B)V

    .line 351
    nop

    .line 354
    if-eqz p2, :cond_0

    .line 355
    const/high16 p2, -0x40000000    # -2.0f

    goto :goto_0

    .line 357
    :cond_0
    const p2, -0x3fffffff    # -2.0000002f

    .line 360
    :goto_0
    iget-object p5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {p5, p2, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;

    move-result-object p2

    .line 361
    new-instance p5, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;

    invoke-direct {p5, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;)V

    invoke-virtual {p2, p5}, Lcom/android/vcard/VCardComposer;->setPhoneNumberTranslationCallback(Lcom/android/vcard/VCardPhoneNumberTranslationCallback;)V

    .line 373
    nop

    .line 374
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->useProfileForOwnerVcard()Z

    move-result p5

    if-eqz p5, :cond_1

    .line 375
    iget-object p5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->getProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p5

    goto :goto_1

    .line 374
    :cond_1
    move-object p5, v1

    .line 377
    :goto_1
    if-eqz p5, :cond_2

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    .line 378
    :cond_2
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getLocalPhoneName()Ljava/lang/String;

    move-result-object p5

    .line 380
    :cond_3
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object p5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-static {p5}, Lcom/android/bluetooth/util/DevicePolicyUtils;->getEnterprisePhoneUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    .line 384
    nop

    .line 386
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->PHONES_CONTACTS_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "contact_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p5
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 389
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 390
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    .line 391
    const v4, 0x104000e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-static {v2, v3, p5}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->appendDistinctNameIdList(Ljava/util/ArrayList;Ljava/lang/String;Landroid/database/Cursor;)V

    .line 393
    if-eqz p5, :cond_f

    .line 394
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;

    invoke-direct {v3, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$EnterpriseRawContactEntitlesInfoCallback;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$1;)V

    invoke-virtual {p2, p5, v3}, Lcom/android/vcard/VCardComposer;->initWithCallback(Landroid/database/Cursor;Lcom/android/vcard/VCardComposer$RawContactEntitlesInfoCallback;)Z

    move-result v1
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_5

    .line 396
    nop

    .line 444
    if-eqz p5, :cond_4

    .line 445
    invoke-interface {p5}, Landroid/database/Cursor;->close()V

    .line 396
    :cond_4
    return-object p4

    .line 399
    :cond_5
    const/4 v1, 0x0

    .line 400
    :try_start_2
    invoke-interface {p5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 401
    :goto_2
    invoke-virtual {p2}, Lcom/android/vcard/VCardComposer;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_c

    .line 402
    invoke-virtual {p2}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object v3

    .line 403
    if-nez v3, :cond_7

    .line 404
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Failed to read a contact. Error reason: "

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    invoke-virtual {p2}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 404
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 406
    nop

    .line 444
    if-eqz p5, :cond_6

    .line 445
    invoke-interface {p5}, Landroid/database/Cursor;->close()V

    .line 406
    :cond_6
    return-object p4

    .line 407
    :cond_7
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 408
    const-string v3, "Contact may have been deleted during operation"

    invoke-static {p3, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    goto :goto_2

    .line 411
    :cond_8
    sget-boolean v5, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v5, :cond_9

    .line 412
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking selected bits in the vcard composer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_9
    invoke-static {v0, v3, p6}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->access$100(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 416
    const-string v3, "vcard selector check fail"

    invoke-static {p3, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    nop

    .line 418
    nop

    .line 419
    goto :goto_2

    .line 421
    :cond_a
    invoke-static {v0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;->access$200(Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager$PropertySelector;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 423
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 425
    :cond_b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    add-int/lit8 v1, v1, 0x1

    .line 428
    goto :goto_2

    .line 429
    :cond_c
    if-nez p1, :cond_d

    .line 430
    sget-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz p1, :cond_f

    .line 431
    const-string p1, "getPhonebookNameList, order by index"

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 434
    :cond_d
    const/4 p2, 0x1

    if-ne p1, p2, :cond_f

    .line 435
    sget-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz p1, :cond_e

    .line 436
    const-string p1, "getPhonebookNameList, order by alpha"

    invoke-static {p3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_e
    invoke-static {p4}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_3
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 444
    :cond_f
    :goto_3
    if-eqz p5, :cond_10

    .line 445
    invoke-interface {p5}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 444
    :catchall_0
    move-exception p1

    move-object v1, p5

    goto :goto_6

    .line 441
    :catch_0
    move-exception p1

    move-object v1, p5

    goto :goto_4

    .line 444
    :catchall_1
    move-exception p1

    goto :goto_6

    .line 441
    :catch_1
    move-exception p1

    .line 442
    :goto_4
    :try_start_4
    const-string p1, "CursorWindowAllocationException while getting Phonebook name list"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 444
    if-eqz v1, :cond_10

    .line 445
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 449
    :cond_10
    :goto_5
    return-object p4

    .line 444
    :goto_6
    if-eqz v1, :cond_11

    .line 445
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 448
    :cond_11
    throw p1
.end method

.method public final loadCallHistoryList(ILjava/lang/String;Ljava/lang/String;)Landroid/util/SparseArray;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    sget-object v6, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 240
    invoke-static {p1}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;->createSelectionPara(I)Ljava/lang/String;

    move-result-object p1

    .line 241
    nop

    .line 242
    iget-boolean v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mSearchCallLogOn:Z

    const-string v1, "name"

    if-eqz v0, :cond_2

    .line 243
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 244
    if-eqz p1, :cond_0

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AND "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 249
    :goto_0
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v2, "%\'"

    if-eqz p3, :cond_1

    .line 250
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "name LIKE \'%"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_1

    .line 252
    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "number LIKE \'%"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    goto :goto_1

    .line 256
    :cond_2
    move-object v3, p1

    :goto_1
    const-string p2, "number"

    const-string p3, "presentation"

    const-string v0, "_id"

    filled-new-array {p2, v1, p3, v0}, [Ljava/lang/String;

    move-result-object p2

    .line 261
    nop

    .line 262
    nop

    .line 263
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    .line 264
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 266
    const/4 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    move-object v1, v6

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v4, 0x0

    const-string v5, "_id DESC"

    move-object v1, v6

    move-object v2, p2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 269
    const/4 p1, 0x3

    if-eqz v8, :cond_3

    .line 270
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p2

    if-nez p2, :cond_3

    .line 272
    invoke-interface {v8, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    nop

    .line 271
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_2

    .line 275
    :cond_3
    if-eqz v9, :cond_6

    .line 276
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p2

    if-nez p2, :cond_6

    .line 277
    const/4 p2, 0x1

    invoke-interface {v9, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 280
    const/4 v0, 0x2

    .line 281
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 282
    if-eq v0, p2, :cond_4

    .line 283
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0e0092

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 285
    :cond_4
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_5
    :goto_4
    invoke-interface {v9, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v1, p2

    .line 289
    invoke-virtual {p3, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 276
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 295
    :cond_6
    if-eqz v9, :cond_7

    .line 296
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_7
    if-eqz v8, :cond_9

    .line 300
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_6

    .line 295
    :catchall_0
    move-exception p1

    move-object p2, v8

    move-object v8, v9

    goto :goto_7

    .line 292
    :catch_0
    move-exception p1

    move-object p1, v8

    move-object v8, v9

    goto :goto_5

    .line 295
    :catchall_1
    move-exception p1

    move-object p2, v8

    goto :goto_7

    .line 292
    :catch_1
    move-exception p1

    move-object p1, v8

    .line 293
    :goto_5
    :try_start_2
    const-string p2, "BluetoothPbapVcardManager"

    const-string v0, "CursorWindowAllocationException while loading CallHistory"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 295
    if-eqz v8, :cond_8

    .line 296
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_8
    if-eqz p1, :cond_9

    .line 300
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 304
    :cond_9
    :goto_6
    return-object p3

    .line 295
    :catchall_2
    move-exception p2

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    :goto_7
    if-eqz v8, :cond_a

    .line 296
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 299
    :cond_a
    if-eqz p2, :cond_b

    .line 300
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 303
    :cond_b
    throw p1
.end method

.method public stripTelephoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 1105
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1106
    nop

    .line 1107
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    const-string v3, "BluetoothPbapVcardManager"

    const-string v4, ""

    if-ge v1, v2, :cond_2

    .line 1108
    aget-object v2, p1, v1

    const-string v5, "TEL"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1109
    aget-object v2, p1, v1

    const/4 v5, 0x2

    const-string v6, ":"

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1110
    const/4 v5, 0x1

    aget-object v7, v2, v5

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    .line 1112
    aget-object v8, v2, v5

    const-string v9, "-"

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1113
    const-string v9, "("

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1114
    const-string v9, ")"

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1115
    const-string v9, " "

    invoke-virtual {v8, v9, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    .line 1116
    aget-object v4, v2, v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v7, :cond_1

    .line 1117
    sget-boolean v4, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz v4, :cond_0

    .line 1118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Fixing vCard TEL to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v5

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v5

    .line 1121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 1107
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1126
    :cond_2
    nop

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_4

    .line 1127
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 1126
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1131
    :cond_4
    sget-boolean p1, Lcom/android/bluetooth/pbap/BluetoothPbapVcardManager;->V:Z

    if-eqz p1, :cond_5

    .line 1132
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vCard with stripped telephone no.: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    :cond_5
    return-object v4
.end method
