.class Lcom/android/bluetooth/opp/BluetoothOppNotification;
.super Ljava/lang/Object;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;,
        Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;
    }
.end annotation


# static fields
.field static final CONFIRM:Ljava/lang/String; = "(confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

.field private static final NOTIFICATION_ID_INBOUND_COMPLETE:I = -0xf4246

.field private static final NOTIFICATION_ID_OUTBOUND_COMPLETE:I = -0xf4245

.field public static final NOTIFICATION_ID_PROGRESS:I = -0xf4244

.field private static final NOTIFY:I = 0x0

.field static final NOT_THROUGH_HANDOVER:Ljava/lang/String; = "(confirm != \'5\')"

.field private static final OPP_NOTIFICATION_CHANNEL:Ljava/lang/String; = "opp_notification_channel"

.field static final STATUS:Ljava/lang/String; = "(status == \'192\')"

.field private static final TAG:Ljava/lang/String; = "BluetoothOppNotification"

.field private static final V:Z

.field static final VISIBLE:Ljava/lang/String; = "(visibility IS NULL OR visibility == \'0\')"

.field static final WHERE_COMPLETED:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\')"

.field private static final WHERE_COMPLETED_INBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 1)"

.field private static final WHERE_COMPLETED_OUTBOUND:Ljava/lang/String; = "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 0)"

.field static final WHERE_CONFIRM_PENDING:Ljava/lang/String; = "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

.field static final WHERE_HANDOVER_PENDDING:Ljava/lang/String; = "(status == \'190\' AND confirm == \'5\')"

.field static final WHERE_RUNNING:Ljava/lang/String; = "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInboundNum:I

.field private mNotificationChannel:Landroid/app/NotificationChannel;

.field public mNotificationMgr:Landroid/app/NotificationManager;

.field private mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mOutboundNum:I

.field private mPendingUpdate:I

.field private mUpdateCompleteNotification:Z

.field private mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    .line 122
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContentResolver:Landroid/content/ContentResolver;

    .line 126
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundNum:I

    .line 127
    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundNum:I

    .line 200
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    .line 158
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 159
    nop

    .line 160
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    .line 161
    new-instance p1, Landroid/app/NotificationChannel;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 162
    const v1, 0x7f0e0066

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "opp_notification_channel"

    const/4 v2, 0x4

    invoke-direct {p1, v1, v0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationChannel:Landroid/app/NotificationChannel;

    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 166
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    .line 168
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContentResolver:Landroid/content/ContentResolver;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I
    .locals 0

    .line 60
    iget p0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/opp/BluetoothOppNotification;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateNotificationThread:Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 60
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateActiveNotification()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateCompletedNotification()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->updateIncomingFileConfirmNotification()V

    return-void
.end method

.method private updateActiveNotification()V
    .locals 27

    .line 254
    move-object/from16 v1, p0

    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    const-string v2, "BluetoothOppNotification"

    if-eqz v0, :cond_0

    const-string v0, "updateActiveNotification ++"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    const/4 v3, 0x0

    .line 258
    :try_start_0
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "(status == \'192\') AND (visibility IS NULL OR visibility == \'0\') AND (confirm == \'1\' OR confirm == \'2\' OR confirm == \'5\')"

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLite exception occur : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_0
    if-nez v3, :cond_1

    .line 264
    return-void

    .line 269
    :cond_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v0, :cond_2

    .line 270
    iput-boolean v4, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    goto :goto_1

    .line 272
    :cond_2
    iput-boolean v5, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    .line 274
    :goto_1
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_3

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mUpdateCompleteNotification = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mUpdateCompleteNotification:Z

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_3
    const-string v0, "timestamp"

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 280
    const-string v6, "direction"

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 281
    const-string v7, "_id"

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 282
    const-string v8, "total_bytes"

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 283
    const-string v9, "current_bytes"

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 284
    const-string v10, "_data"

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 285
    const-string v11, "hint"

    invoke-interface {v3, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 286
    const-string v12, "confirm"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 287
    const-string v13, "destination"

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    .line 289
    iget-object v14, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 290
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_2
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    const-string v15, "mDirection ERROR!"

    if-nez v14, :cond_c

    .line 291
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 292
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 293
    move/from16 v17, v0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 294
    move/from16 v18, v6

    move/from16 v19, v7

    invoke-interface {v3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 295
    move-wide/from16 v20, v6

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 296
    move/from16 v22, v8

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 298
    move/from16 v23, v9

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 299
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 300
    if-nez v24, :cond_4

    .line 301
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 303
    :cond_4
    if-nez v24, :cond_5

    .line 304
    move/from16 v25, v10

    iget-object v10, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move/from16 v26, v11

    const v11, 0x7f0e0094

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    goto :goto_3

    .line 303
    :cond_5
    move/from16 v25, v10

    move/from16 v26, v11

    .line 307
    :goto_3
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    .line 310
    iget-object v11, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto/16 :goto_6

    .line 314
    :cond_6
    new-instance v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    invoke-direct {v11}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;-><init>()V

    .line 315
    iput-wide v4, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    .line 316
    iput v0, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    .line 317
    iput v14, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    .line 318
    iget v0, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v0, :cond_7

    .line 319
    iget-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f0e005f

    const/4 v5, 0x1

    new-array v14, v5, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v24, v14, v16

    invoke-virtual {v0, v4, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    goto :goto_4

    .line 320
    :cond_7
    const/4 v5, 0x1

    const/16 v16, 0x0

    iget v0, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-ne v0, v5, :cond_8

    .line 321
    iget-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f0e005e

    new-array v15, v5, [Ljava/lang/Object;

    aput-object v24, v15, v16

    .line 322
    invoke-virtual {v0, v4, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    goto :goto_4

    .line 324
    :cond_8
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_9

    .line 325
    invoke-static {v2, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    :cond_9
    :goto_4
    iput-wide v6, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    .line 329
    move-wide/from16 v4, v20

    iput-wide v4, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    .line 330
    const/4 v0, 0x5

    if-ne v8, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    .line 332
    iput-object v9, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    .line 333
    iget-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_b

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ID="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "; batchID="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; totoalCurrent"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "; totalTotal="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v11, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_b
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move/from16 v0, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v22

    move/from16 v9, v23

    move/from16 v10, v25

    move/from16 v11, v26

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto/16 :goto_2

    .line 341
    :cond_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 344
    iget-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;

    .line 345
    iget-boolean v4, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->handoverInitiated:Z

    const-wide/16 v5, -0x1

    if-eqz v4, :cond_f

    .line 346
    nop

    .line 347
    iget-wide v7, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    cmp-long v4, v7, v5

    if-nez v4, :cond_d

    .line 348
    const/high16 v4, -0x40800000    # -1.0f

    goto :goto_8

    .line 350
    :cond_d
    iget-wide v4, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    long-to-float v4, v4

    iget-wide v5, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    long-to-float v5, v5

    div-float/2addr v4, v5

    .line 354
    :goto_8
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.nfc.handover.intent.action.TRANSFER_PROGRESS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 355
    iget v6, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const-string v7, "android.nfc.handover.intent.extra.TRANSFER_DIRECTION"

    const/4 v8, 0x1

    if-ne v6, v8, :cond_e

    .line 356
    const/4 v6, 0x0

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_9

    .line 359
    :cond_e
    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    :goto_9
    iget v6, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    const-string v7, "android.nfc.handover.intent.extra.TRANSFER_ID"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 363
    const-string v6, "android.nfc.handover.intent.extra.TRANSFER_PROGRESS"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 364
    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->destination:Ljava/lang/String;

    const-string v4, "android.nfc.handover.intent.extra.ADDRESS"

    invoke-virtual {v5, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 365
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.NFC_HANDOVER_STATUS"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 366
    goto :goto_7

    .line 370
    :cond_f
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v7, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const-string v8, "opp_notification_channel"

    invoke-direct {v4, v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 371
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 372
    iget-object v7, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106001c

    iget-object v9, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 374
    invoke-virtual {v9}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v9

    .line 373
    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    .line 372
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 375
    iget-object v7, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->description:Ljava/lang/String;

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 376
    iget-wide v7, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    iget-wide v9, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    .line 377
    invoke-static {v7, v8, v9, v10}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->formatProgressText(JJ)Ljava/lang/String;

    move-result-object v7

    .line 376
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 378
    iget-wide v7, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    const/16 v8, 0x64

    if-eqz v7, :cond_12

    .line 379
    sget-boolean v7, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    const-wide/16 v9, 0x64

    if-eqz v7, :cond_10

    .line 380
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mCurrentBytes: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " mTotalBytes: "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " ("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    mul-long/2addr v11, v9

    move-object v13, v15

    iget-wide v14, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    div-long/2addr v11, v14

    long-to-int v11, v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " %)"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 379
    :cond_10
    move-object v13, v15

    .line 384
    :goto_a
    iget-wide v11, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalCurrent:J

    mul-long/2addr v11, v9

    iget-wide v9, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    div-long/2addr v11, v9

    long-to-int v7, v11

    iget-wide v9, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    cmp-long v5, v9, v5

    if-nez v5, :cond_11

    const/4 v5, 0x1

    goto :goto_b

    :cond_11
    const/4 v5, 0x0

    :goto_b
    invoke-virtual {v4, v8, v7, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    goto :goto_d

    .line 387
    :cond_12
    move-object v13, v15

    iget-wide v9, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->totalTotal:J

    cmp-long v5, v9, v5

    if-nez v5, :cond_13

    const/4 v5, 0x1

    goto :goto_c

    :cond_13
    const/4 v5, 0x0

    :goto_c
    invoke-virtual {v4, v8, v8, v5}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 389
    :goto_d
    iget-wide v5, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->timeStamp:J

    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 390
    iget v5, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    if-nez v5, :cond_14

    .line 391
    const v5, 0x1080088

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_e

    .line 392
    :cond_14
    iget v5, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->direction:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_15

    .line 393
    const v5, 0x1080081

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_e

    .line 395
    :cond_15
    sget-boolean v5, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v5, :cond_16

    .line 396
    invoke-static {v2, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_16
    :goto_e
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 400
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 402
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.btopp.intent.action.LIST"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    const-class v7, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "com.android.bluetooth"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 404
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationItem;->id:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    .line 406
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    invoke-static {v3, v7, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 407
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v6, -0xf4244

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 408
    move-object v15, v13

    goto/16 :goto_7

    .line 409
    :cond_17
    return-void
.end method

.method private updateCompletedNotification()V
    .locals 27

    .line 412
    move-object/from16 v1, p0

    const-string v2, "SQLite exception occur : "

    const-string v3, "BluetoothOppNotification"

    .line 413
    nop

    .line 414
    nop

    .line 417
    nop

    .line 418
    nop

    .line 421
    nop

    .line 423
    :try_start_0
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 0)"

    const/4 v8, 0x0

    const-string v9, "timestamp DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    move-object v4, v0

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move-object v4, v0

    .line 430
    :goto_0
    if-nez v4, :cond_0

    .line 431
    return-void

    .line 433
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_1

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Completed counter = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1
    const-string v0, "timestamp"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 439
    const-string v0, "status"

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 441
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v11

    if-nez v11, :cond_4

    .line 442
    invoke-interface {v4}, Landroid/database/Cursor;->isFirst()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 444
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 446
    :cond_2
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 448
    invoke-static {v11}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 449
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 451
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 441
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 454
    :cond_4
    sget-boolean v11, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    const-string v12, "  fail-"

    if-eqz v11, :cond_5

    .line 455
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "outbound: succ-"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 459
    add-int v11, v0, v10

    .line 461
    const-string v15, "opp_notification_channel"

    const-string v13, "android.btopp.intent.action.HIDE_COMPLETE"

    const-string v14, "com.android.bluetooth"

    const/4 v7, 0x1

    if-lez v11, :cond_7

    .line 462
    move-object/from16 v17, v4

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v18, v12

    new-array v12, v7, [Ljava/lang/Object;

    .line 464
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v16, 0x0

    aput-object v19, v12, v16

    .line 463
    const v7, 0x7f0c0001

    invoke-virtual {v4, v7, v10, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 465
    iget-object v7, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const/4 v10, 0x2

    new-array v12, v10, [Ljava/lang/Object;

    .line 467
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v16

    const/4 v10, 0x1

    aput-object v4, v12, v10

    .line 466
    const/high16 v4, 0x7f0c0000

    invoke-virtual {v7, v4, v0, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 468
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.btopp.intent.action.OPEN_OUTBOUND"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v7, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    .line 469
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 468
    invoke-virtual {v4, v14, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 470
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v10, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    .line 471
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 470
    invoke-virtual {v7, v14, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 472
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-direct {v10, v12, v15}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 474
    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v10

    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v20, v15

    const v15, 0x7f0e0068

    .line 475
    invoke-virtual {v12, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v10

    .line 476
    invoke-virtual {v10, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v10, 0x1080089

    .line 477
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v10, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 478
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 482
    invoke-virtual {v12}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v12

    .line 479
    const v15, 0x106001c

    invoke-virtual {v10, v15, v12}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v10

    .line 478
    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v10, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 484
    const/4 v12, 0x0

    invoke-static {v10, v12, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 483
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 486
    invoke-static {v4, v12, v7, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 485
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 487
    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 488
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 491
    iget v4, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundNum:I

    if-eq v4, v11, :cond_6

    .line 492
    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v7, -0xf4245

    invoke-virtual {v4, v7, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 493
    iput v11, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundNum:I

    .line 496
    :cond_6
    goto :goto_3

    .line 497
    :cond_7
    move-object/from16 v17, v4

    move-object/from16 v18, v12

    move-object/from16 v20, v15

    iget-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_8

    .line 498
    const v4, -0xf4245

    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 499
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mOutboundNum:I

    .line 500
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_8

    .line 501
    const-string v0, "outbound notification was removed."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    :cond_8
    :goto_3
    :try_start_1
    iget-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v22, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/16 v23, 0x0

    const-string v24, "status >= \'200\' AND (visibility IS NULL OR visibility == \'0\') AND (confirm != \'5\') AND (direction == 1)"

    const/16 v25, 0x0

    const-string v26, "timestamp DESC"

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v26}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 512
    goto :goto_4

    .line 510
    :catch_1
    move-exception v0

    .line 511
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v4, v17

    .line 514
    :goto_4
    if-nez v4, :cond_9

    .line 515
    return-void

    .line 518
    :cond_9
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_c

    .line 519
    invoke-interface {v4}, Landroid/database/Cursor;->isFirst()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 521
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    move-wide v8, v7

    .line 523
    :cond_a
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 525
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 526
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 528
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 518
    :goto_6
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_5

    .line 531
    :cond_c
    sget-boolean v5, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v5, :cond_d

    .line 532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inbound: succ-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v18

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 536
    add-int v4, v0, v2

    .line 538
    const v5, -0xf4246

    if-lez v4, :cond_f

    .line 539
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    .line 541
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v10, 0x0

    aput-object v6, v7, v10

    .line 540
    const v6, 0x7f0c0001

    invoke-virtual {v3, v6, v2, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 542
    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 544
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    const/4 v7, 0x1

    aput-object v2, v6, v7

    .line 543
    const/high16 v2, 0x7f0c0000

    invoke-virtual {v3, v2, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 545
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.btopp.intent.action.OPEN_INBOUND"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    .line 546
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-virtual {v2, v14, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 547
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v6, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    .line 548
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 547
    invoke-virtual {v3, v14, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 549
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    move-object/from16 v10, v20

    invoke-direct {v6, v7, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 551
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v10, 0x7f0e004b

    .line 552
    invoke-virtual {v7, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 553
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const v6, 0x1080082

    .line 554
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 555
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 559
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 556
    const v10, 0x106001c

    invoke-virtual {v6, v10, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 555
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v6, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 561
    const/4 v7, 0x0

    invoke-static {v6, v7, v2, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 560
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 563
    invoke-static {v2, v7, v3, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 562
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 564
    invoke-virtual {v0, v8, v9}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 565
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 566
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 568
    iget v2, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundNum:I

    if-eq v2, v4, :cond_e

    .line 569
    iget-object v2, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v2, v5, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 570
    iput v4, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundNum:I

    .line 573
    :cond_e
    goto :goto_7

    .line 574
    :cond_f
    iget-object v0, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    if-eqz v0, :cond_10

    .line 575
    invoke-virtual {v0, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 576
    const/4 v2, 0x0

    iput v2, v1, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mInboundNum:I

    .line 577
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_10

    .line 578
    const-string v0, "inbound notification was removed."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_10
    :goto_7
    return-void
.end method

.method private updateIncomingFileConfirmNotification()V
    .locals 13

    .line 585
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    const-string v1, "BluetoothOppNotification"

    if-eqz v0, :cond_0

    const-string v0, "updateIncomingFileConfirmNotification ++"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_0
    const/4 v0, 0x0

    .line 589
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v5, "confirm == \'0\' AND (visibility IS NULL OR visibility == \'0\')"

    const/4 v6, 0x0

    const-string v7, "_id"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    goto :goto_0

    .line 591
    :catch_0
    move-exception v2

    .line 592
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SQLite exception occur : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :goto_0
    if-nez v0, :cond_1

    .line 596
    return-void

    .line 599
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 600
    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 601
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->fillRecord(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V

    .line 602
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 603
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppReceiver;

    .line 605
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 604
    const-string v5, "com.android.bluetooth"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 606
    new-instance v4, Landroid/app/Notification$Action$Builder;

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v7, 0x7f060005

    .line 607
    invoke-static {v6, v7}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v6

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v8, 0x7f0e004e

    .line 609
    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 611
    const-string v10, "android.btopp.intent.action.DECLINE"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 610
    const/4 v10, 0x0

    invoke-static {v8, v10, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-direct {v4, v6, v7, v8}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 612
    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v4

    .line 613
    new-instance v6, Landroid/app/Notification$Action$Builder;

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v8, 0x7f060004

    .line 614
    invoke-static {v7, v8}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v9, 0x7f0e0050

    .line 615
    invoke-virtual {v8, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 617
    const-string v12, "android.btopp.intent.action.ACCEPT"

    invoke-virtual {v11, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v11

    .line 616
    invoke-static {v9, v10, v11, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 617
    invoke-virtual {v6}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v6

    .line 618
    new-instance v7, Landroid/app/Notification$Builder;

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const-string v9, "opp_notification_channel"

    invoke-direct {v7, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 620
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 621
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v7

    iget-object v9, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    .line 622
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 623
    invoke-virtual {v7, v4}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 624
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 626
    const-string v9, "android.btopp.intent.action.CONFIRM"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 625
    invoke-static {v6, v10, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 629
    const-string v2, "android.btopp.intent.action.HIDE"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 628
    invoke-static {v6, v10, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 630
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x106001c

    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    .line 634
    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 631
    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    .line 630
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v6, 0x7f0e004d

    .line 635
    invoke-virtual {v4, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    .line 637
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v6, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    const v7, 0x7f0e004c

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    aput-object v12, v11, v10

    iget-object v10, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    aput-object v10, v11, v8

    .line 638
    invoke-virtual {v6, v7, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    iget-wide v6, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    .line 641
    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    const v4, 0x7f060003

    .line 642
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 643
    invoke-virtual {v2, v8}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 644
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 645
    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    const v6, -0xf4244

    invoke-virtual {v4, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 648
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 649
    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-class v4, Lcom/android/bluetooth/opp/BluetoothOppIncomingFileConfirmActivity;

    .line 650
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setDataAndNormalize(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    .line 652
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x14000000

    .line 653
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 654
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 599
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_1

    .line 657
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 658
    return-void
.end method


# virtual methods
.method cancelNotifications()V
    .locals 2

    .line 661
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_0

    .line 662
    const-string v0, "BluetoothOppNotification"

    const-string v1, "cancelNotifications "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 665
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    .line 666
    return-void
.end method

.method public updateNotification()V
    .locals 3

    .line 175
    monitor-enter p0

    .line 176
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mPendingUpdate:I

    .line 177
    if-le v0, v1, :cond_1

    .line 178
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_0

    .line 179
    const-string v0, "BluetoothOppNotification"

    const-string v1, "update too frequent, put in queue"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    monitor-exit p0

    return-void

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 184
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->V:Z

    if-eqz v0, :cond_2

    .line 185
    const-string v0, "BluetoothOppNotification"

    const-string v2, "send message"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    :cond_3
    monitor-exit p0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
