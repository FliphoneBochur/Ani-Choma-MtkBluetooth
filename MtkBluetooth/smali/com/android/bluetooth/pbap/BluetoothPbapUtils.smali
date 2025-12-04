.class Lcom/android/bluetooth/pbap/BluetoothPbapUtils;
.super Ljava/lang/Object;
.source "BluetoothPbapUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;
    }
.end annotation


# static fields
.field private static final FILTER_PHOTO:I = 0x3

.field private static final QUERY_CONTACT_RETRY_INTERVAL:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "BluetoothPbapUtils"

.field private static final TYPE_ADDRESS:Ljava/lang/String; = "address"

.field private static final TYPE_EMAIL:Ljava/lang/String; = "email"

.field private static final TYPE_NAME:Ljava/lang/String; = "name"

.field private static final TYPE_PHONE:Ljava/lang/String; = "phone"

.field private static final V:Z

.field private static sContactDataset:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private static sContactSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContactsLastUpdated:J

.field static sDbIdentifier:Ljava/util/concurrent/atomic/AtomicLong;

.field static sPrimaryVersionCounter:J

.field static sSecondaryVersionCounter:J

.field private static sTotalContacts:J

.field private static sTotalFields:J

.field private static sTotalSvcFields:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->V:Z

    .line 56
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sDbIdentifier:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    .line 59
    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    .line 60
    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalContacts:J

    .line 64
    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    .line 65
    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    .line 66
    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactsLastUpdated:J

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactDataset:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactSet:Ljava/util/HashSet;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFieldUpdates(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 379
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    .line 380
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 381
    sget-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    sput-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    .line 382
    sget-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v1, p0

    sput-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    .line 383
    return v0

    .line 385
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 386
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 387
    return v0

    .line 389
    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_1

    .line 391
    :cond_3
    if-nez p1, :cond_4

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 392
    sget-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    sput-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    .line 393
    sget-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v1, p0

    sput-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    .line 394
    return v0

    .line 398
    :cond_4
    if-nez p0, :cond_5

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_5

    .line 399
    sget-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v1, v3

    sput-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    .line 400
    sget-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    int-to-long p0, p0

    add-long/2addr v1, p0

    sput-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    .line 401
    return v0

    .line 403
    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method static createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;
    .locals 2

    .line 115
    nop

    .line 117
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapConfig;->includePhotosInVcard()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->isFilterBitSet([BI)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    move p2, v1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 119
    :goto_0
    if-nez p2, :cond_3

    .line 120
    sget-boolean p2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->V:Z

    if-eqz p2, :cond_2

    .line 121
    const-string p2, "BluetoothPbapUtils"

    const-string v0, "Excluding images from VCardComposer..."

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_2
    const/high16 p2, 0x800000

    or-int/2addr p1, p2

    .line 125
    :cond_3
    new-instance p2, Lcom/android/vcard/VCardComposer;

    invoke-direct {p2, p0, p1, v1}, Lcom/android/vcard/VCardComposer;-><init>(Landroid/content/Context;IZ)V

    return-object p2
.end method

.method static createProfileVCard(Landroid/content/Context;I[B)Ljava/lang/String;
    .locals 9

    .line 142
    const-string v0, "BluetoothPbapUtils"

    .line 143
    nop

    .line 145
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->createFilteredVCardComposer(Landroid/content/Context;I[B)Lcom/android/vcard/VCardComposer;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 146
    :try_start_1
    sget-object v3, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object p1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    sget-object p2, Landroid/provider/ContactsContract$RawContactsEntity;->CONTENT_URI:Landroid/net/Uri;

    .line 148
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 146
    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/android/vcard/VCardComposer;->init(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 149
    invoke-virtual {p0}, Lcom/android/vcard/VCardComposer;->createOneEntry()Ljava/lang/String;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to create profile vcard. Error initializing composer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p0}, Lcom/android/vcard/VCardComposer;->getErrorReason()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :goto_0
    goto :goto_2

    .line 154
    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object p0, v1

    .line 155
    :goto_1
    const-string p2, "Unable to create profile vcard."

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    :goto_2
    if-eqz p0, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/vcard/VCardComposer;->terminate()V

    .line 160
    :cond_1
    return-object v1
.end method

.method private static fetchAndSetContacts(Landroid/content/Context;Landroid/os/Handler;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)I
    .locals 17

    .line 411
    move-object/from16 v1, p1

    const-string v2, "BluetoothPbapUtils"

    .line 412
    nop

    .line 414
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    .line 415
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    .line 417
    const-string v3, "query sqlite db fail"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    const/4 v0, 0x0

    .line 423
    :goto_0
    const/4 v3, -0x1

    if-nez v0, :cond_1

    .line 424
    const-string v0, "Failed to fetch contacts data from database.."

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-eqz p5, :cond_0

    .line 426
    const/4 v0, 0x4

    .line 427
    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v4, 0xfa0

    .line 426
    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 430
    :cond_0
    return v3

    .line 433
    :cond_1
    const-string v1, "contact_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 434
    const-string v4, "data1"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 435
    const-string v5, "mimetype"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    .line 437
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 438
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 439
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 440
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 442
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v16

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v13, 0x1

    sparse-switch v16, :sswitch_data_0

    :cond_2
    goto :goto_2

    :sswitch_0
    const-string v14, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    goto :goto_3

    :sswitch_1
    const-string v14, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v7

    goto :goto_3

    :sswitch_2
    const-string v14, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v6

    goto :goto_3

    :sswitch_3
    const-string v14, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v13

    goto :goto_3

    :goto_2
    const/4 v3, -0x1

    :goto_3
    if-eqz v3, :cond_6

    if-eq v3, v13, :cond_5

    if-eq v3, v7, :cond_4

    if-eq v3, v6, :cond_3

    const-wide/16 v6, 0x1

    goto :goto_4

    .line 456
    :cond_3
    const-string v3, "name"

    invoke-static {v3, v12, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->setContactFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    const-wide/16 v6, 0x1

    add-long/2addr v10, v6

    goto :goto_4

    .line 452
    :cond_4
    const-wide/16 v6, 0x1

    const-string v3, "address"

    invoke-static {v3, v12, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->setContactFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    add-long/2addr v10, v6

    .line 454
    goto :goto_4

    .line 448
    :cond_5
    const-wide/16 v6, 0x1

    const-string v3, "email"

    invoke-static {v3, v12, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->setContactFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    add-long/2addr v10, v6

    .line 450
    goto :goto_4

    .line 444
    :cond_6
    const-wide/16 v6, 0x1

    const-string v3, "phone"

    invoke-static {v3, v12, v15}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->setContactFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    add-long/2addr v10, v6

    .line 446
    nop

    .line 460
    :goto_4
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactSet:Ljava/util/HashSet;

    invoke-virtual {v3, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 461
    add-long/2addr v8, v6

    const/4 v3, -0x1

    goto :goto_1

    .line 463
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 467
    if-eqz p5, :cond_c

    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    cmp-long v0, v8, v0

    if-eqz v0, :cond_c

    .line 468
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    sget-wide v3, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalContacts:J

    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    add-long/2addr v0, v3

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    .line 470
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    cmp-long v0, v10, v0

    if-eqz v0, :cond_9

    .line 471
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalContacts:J

    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactSet:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-eqz v0, :cond_8

    .line 472
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    sget-wide v3, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalContacts:J

    sget-object v5, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactSet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    add-long/2addr v0, v3

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    goto :goto_5

    .line 474
    :cond_8
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    .line 477
    :cond_9
    :goto_5
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-ltz v0, :cond_a

    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    cmp-long v0, v0, v3

    if-gez v0, :cond_b

    .line 478
    :cond_a
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->rolloverCounters()V

    .line 481
    :cond_b
    sput-wide v8, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    .line 482
    sput-wide v10, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactsLastUpdated:J

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Contacts updated between last BT OFF and currentPbap Connect, primaryVersionCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryVersionCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 487
    :cond_c
    if-nez p5, :cond_d

    .line 488
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    .line 489
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    .line 491
    :cond_d
    :goto_6
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        -0x5d8d3afc -> :sswitch_3
        -0x4053a7f0 -> :sswitch_2
        -0x23d6087c -> :sswitch_1
        0x28c7a9f2 -> :sswitch_0
    .end sparse-switch
.end method

.method static fetchPbapParams(Landroid/content/Context;)V
    .locals 7

    .line 188
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 189
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 190
    sget-object v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sDbIdentifier:Ljava/util/concurrent/atomic/AtomicLong;

    const-string v3, "DbIdentifier"

    invoke-interface {p0, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 191
    const-string v2, "primary"

    const-wide/16 v3, 0x0

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sput-wide v5, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    .line 192
    const-string v2, "secondary"

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sput-wide v5, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    .line 193
    const-string v2, "totalContacts"

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sput-wide v5, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    .line 194
    const-string v2, "lastUpdatedTimestamp"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactsLastUpdated:J

    .line 195
    const-string v0, "totalFields"

    invoke-interface {p0, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    .line 196
    const-string v0, "totalSvcFields"

    invoke-interface {p0, v0, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    .line 197
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->V:Z

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " fetchPbapParams "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothPbapUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    return-void
.end method

.method public static getProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "display_name"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    .line 130
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 131
    nop

    .line 132
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 136
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 138
    :cond_1
    return-object v0
.end method

.method private static hasFilter([B)Z
    .locals 0

    .line 99
    if-eqz p0, :cond_0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isFilterBitSet([BI)Z
    .locals 3

    .line 103
    invoke-static {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->hasFilter([B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 104
    div-int/lit8 v0, p1, 0x8

    rsub-int/lit8 v0, v0, 0x7

    .line 105
    rem-int/lit8 p1, p1, 0x8

    .line 106
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 107
    aget-byte p0, p0, v0

    const/4 v0, 0x1

    shl-int p1, v0, p1

    and-int/2addr p0, p1

    if-lez p0, :cond_0

    move v1, v0

    :cond_0
    return v1

    .line 110
    :cond_1
    return v1
.end method

.method static loadAllContacts(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 9

    .line 203
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->V:Z

    if-eqz v0, :cond_0

    .line 204
    const-string v0, "BluetoothPbapUtils"

    const-string v1, "Loading Contacts ..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    const-string v0, "contact_id"

    const-string v1, "data1"

    const-string v2, "mimetype"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 208
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    invoke-static/range {v3 .. v8}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->fetchAndSetContacts(Landroid/content/Context;Landroid/os/Handler;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)I

    move-result p0

    int-to-long v0, p0

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalContacts:J

    .line 209
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    .line 210
    sput-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalContacts:J

    .line 211
    return-void

    .line 213
    :cond_1
    const/4 p0, 0x5

    invoke-virtual {p1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    return-void
.end method

.method static rolloverCounters()V
    .locals 5

    .line 528
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sDbIdentifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 529
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    :cond_0
    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    .line 530
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    :cond_1
    move-wide v2, v0

    :goto_0
    sput-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    .line 531
    sget-boolean v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->V:Z

    if-eqz v0, :cond_2

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DbIdentifier rolled over to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sDbIdentifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothPbapUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_2
    return-void
.end method

.method static savePbapParams(Landroid/content/Context;)V
    .locals 5

    .line 164
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 165
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sDbIdentifier:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 166
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 167
    sget-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    const-string v4, "primary"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 168
    sget-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    const-string v4, "secondary"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 169
    const-string v2, "dbIdentifier"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 170
    sget-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalContacts:J

    const-string v4, "totalContacts"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 171
    sget-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactsLastUpdated:J

    const-string v4, "lastUpdatedTimestamp"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 172
    sget-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    const-string v4, "totalFields"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 173
    sget-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    const-string v4, "totalSvcFields"

    invoke-interface {p0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 176
    sget-boolean p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->V:Z

    if-eqz p0, :cond_0

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved Primary:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Secondary:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", Database Identifier: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothPbapUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_0
    return-void
.end method

.method private static setContactFields(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 501
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactDataset:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactDataset:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;

    goto :goto_0

    .line 504
    :cond_0
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;

    invoke-direct {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;-><init>()V

    .line 507
    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v5

    goto :goto_1

    :sswitch_1
    const-string v2, "email"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v4

    goto :goto_1

    :sswitch_2
    const-string v2, "name"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v2, "address"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v3

    :goto_1
    if-eqz v1, :cond_5

    if-eq v1, v5, :cond_4

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_2

    .line 518
    :cond_2
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->access$300(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 515
    :cond_3
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->access$200(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    goto :goto_2

    .line 512
    :cond_4
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->access$100(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    goto :goto_2

    .line 509
    :cond_5
    invoke-static {v0, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->access$002(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    nop

    .line 521
    :goto_2
    sget-object p0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactDataset:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4468640c -> :sswitch_3
        0x337a8b -> :sswitch_2
        0x5c24b9c -> :sswitch_1
        0x65b3d6e -> :sswitch_0
    .end sparse-switch
.end method

.method static updateSecondaryVersionCounter(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 27

    .line 221
    move-object/from16 v6, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 224
    const-string v2, "_id"

    const-string v3, "contact_last_updated_timestamp"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v9

    .line 225
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 226
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 228
    const-string v3, "Failed to fetch data from contact database"

    const-string v7, "BluetoothPbapUtils"

    if-nez v2, :cond_0

    .line 229
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void

    .line 232
    :cond_0
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v4, :cond_2

    .line 233
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 235
    sget-wide v10, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactsLastUpdated:J

    cmp-long v5, v8, v10

    if-lez v5, :cond_1

    .line 236
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_1
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 239
    goto :goto_0

    .line 240
    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    .line 241
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 243
    sget-boolean v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->V:Z

    if-eqz v2, :cond_3

    .line 244
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updated list ="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_3
    const-string v2, "contact_id"

    const-string v5, "data1"

    const-string v10, "mimetype"

    filled-new-array {v2, v5, v10}, [Ljava/lang/String;

    move-result-object v17

    .line 248
    const-string v18, "contact_id=?"

    .line 251
    int-to-long v11, v4

    sget-wide v13, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalContacts:J

    cmp-long v2, v11, v13

    const-wide/16 v19, 0x1

    if-lez v2, :cond_5

    .line 252
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    new-array v4, v9, [Ljava/lang/String;

    aput-object v0, v4, v8

    .line 254
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-static/range {v0 .. v5}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->fetchAndSetContacts(Landroid/content/Context;Landroid/os/Handler;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)I

    .line 256
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    add-long v0, v0, v19

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    .line 257
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    add-long v0, v0, v19

    sput-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    .line 258
    sput-wide v11, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalContacts:J

    .line 259
    goto :goto_1

    :cond_4
    goto/16 :goto_a

    .line 261
    :cond_5
    cmp-long v2, v11, v13

    const-string v4, "vnd.android.cursor.item/postal-address_v2"

    const-string v15, "vnd.android.cursor.item/email_v2"

    const-string v14, "vnd.android.cursor.item/phone_v2"

    const-string v13, "vnd.android.cursor.item/name"

    if-gez v2, :cond_b

    .line 262
    sput-wide v11, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalContacts:J

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    filled-new-array {v13, v14, v15, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 266
    new-instance v2, Ljava/util/HashSet;

    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactSet:Ljava/util/HashSet;

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 267
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 268
    sget-wide v4, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v1

    int-to-long v11, v1

    add-long/2addr v4, v11

    sput-wide v4, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    .line 269
    sget-wide v4, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v1

    int-to-long v11, v1

    add-long/2addr v4, v11

    sput-wide v4, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    .line 270
    sget-boolean v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->V:Z

    if-eqz v1, :cond_6

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Deleted Contacts : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_6
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 276
    sget-object v4, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactSet:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 277
    new-array v15, v9, [Ljava/lang/String;

    aput-object v2, v15, v8

    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    sget-object v12, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/16 v16, 0x0

    .line 279
    move-object/from16 v13, v17

    move-object/from16 v14, v18

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 281
    if-nez v2, :cond_7

    .line 282
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-void

    .line 286
    :cond_7
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 287
    nop

    .line 288
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 287
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 289
    sget-wide v4, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    sub-long v4, v4, v19

    sput-wide v4, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalSvcFields:J

    .line 291
    :cond_8
    sget-wide v4, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    sub-long v4, v4, v19

    sput-wide v4, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sTotalFields:J

    goto :goto_3

    .line 293
    :cond_9
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 294
    goto :goto_2

    .line 298
    :cond_a
    goto/16 :goto_a

    .line 299
    :cond_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 300
    sget-wide v11, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    add-long v11, v11, v19

    sput-wide v11, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    .line 301
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 303
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 304
    const/16 v21, 0x0

    .line 305
    nop

    .line 307
    move-object/from16 v22, v0

    new-array v0, v9, [Ljava/lang/String;

    aput-object v1, v0, v8

    .line 308
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    sget-object v23, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/16 v24, 0x0

    .line 309
    move-object v8, v11

    move-object/from16 v11, v16

    move-object/from16 v25, v12

    move-object/from16 v12, v23

    move-object v9, v13

    move-object/from16 v13, v17

    move-object v6, v14

    move-object/from16 v14, v18

    move-object/from16 v26, v1

    move-object v1, v15

    move-object v15, v0

    move-object/from16 v16, v24

    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 311
    if-nez v0, :cond_c

    .line 312
    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 316
    :cond_c
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 317
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v13, v21

    .line 320
    :goto_5
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_12

    .line 321
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 322
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 323
    const/16 v16, -0x1

    invoke-virtual {v15}, Ljava/lang/String;->hashCode()I

    move-result v21

    move-object/from16 v24, v3

    const/4 v3, 0x2

    sparse-switch v21, :sswitch_data_0

    :cond_d
    goto :goto_6

    :sswitch_0
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x1

    goto :goto_7

    :sswitch_1
    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    move v15, v3

    goto :goto_7

    :sswitch_2
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x3

    goto :goto_7

    :sswitch_3
    invoke-virtual {v15, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    const/4 v15, 0x0

    goto :goto_7

    :goto_6
    move/from16 v15, v16

    :goto_7
    if-eqz v15, :cond_11

    move-object/from16 v16, v1

    const/4 v1, 0x1

    if-eq v15, v1, :cond_10

    if-eq v15, v3, :cond_f

    const/4 v3, 0x3

    if-eq v15, v3, :cond_e

    move-object/from16 v3, v25

    goto :goto_8

    .line 334
    :cond_e
    move-object v13, v14

    move-object/from16 v3, v25

    goto :goto_8

    .line 331
    :cond_f
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    move-object/from16 v3, v25

    goto :goto_8

    .line 328
    :cond_10
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    move-object/from16 v3, v25

    goto :goto_8

    .line 325
    :cond_11
    move-object/from16 v16, v1

    const/4 v1, 0x1

    move-object/from16 v3, v25

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    nop

    .line 335
    :goto_8
    move-object/from16 v25, v3

    move-object/from16 v1, v16

    move-object/from16 v3, v24

    goto :goto_5

    .line 338
    :cond_12
    move-object/from16 v16, v1

    move-object/from16 v24, v3

    move-object/from16 v3, v25

    const/4 v1, 0x1

    new-instance v11, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;

    invoke-direct {v11, v13, v2, v3, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;-><init>(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 339
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 341
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactDataset:Ljava/util/HashMap;

    move-object/from16 v12, v26

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;

    .line 342
    if-nez v0, :cond_13

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null contact in the updateList: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    move-object v14, v6

    move-object v13, v9

    move-object/from16 v15, v16

    move-object/from16 v0, v22

    move-object/from16 v3, v24

    const/4 v8, 0x0

    move-object/from16 v6, p1

    move v9, v1

    goto/16 :goto_4

    .line 347
    :cond_13
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->access$000(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 348
    move v0, v1

    goto :goto_9

    .line 349
    :cond_14
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->access$100(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-static {v13, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->checkFieldUpdates(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 350
    move v0, v1

    goto :goto_9

    .line 351
    :cond_15
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->access$200(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->checkFieldUpdates(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 352
    move v0, v1

    goto :goto_9

    .line 353
    :cond_16
    invoke-static {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;->access$300(Lcom/android/bluetooth/pbap/BluetoothPbapUtils$ContactData;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0, v8}, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->checkFieldUpdates(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 354
    move v0, v1

    goto :goto_9

    .line 353
    :cond_17
    const/4 v0, 0x0

    .line 357
    :goto_9
    if-eqz v0, :cond_18

    .line 358
    sget-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    add-long v2, v2, v19

    sput-wide v2, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    .line 359
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sContactDataset:Ljava/util/HashMap;

    invoke-virtual {v0, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_18
    move-object v14, v6

    move-object v13, v9

    move-object/from16 v15, v16

    move-object/from16 v0, v22

    move-object/from16 v3, v24

    const/4 v8, 0x0

    move-object/from16 v6, p1

    move v9, v1

    goto/16 :goto_4

    .line 364
    :cond_19
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primaryVersionCounter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", secondaryVersionCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sSecondaryVersionCounter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1a

    sget-wide v0, Lcom/android/bluetooth/pbap/BluetoothPbapUtils;->sPrimaryVersionCounter:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1b

    .line 370
    :cond_1a
    const/4 v0, 0x7

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 372
    :cond_1b
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5d8d3afc -> :sswitch_3
        -0x4053a7f0 -> :sswitch_2
        -0x23d6087c -> :sswitch_1
        0x28c7a9f2 -> :sswitch_0
    .end sparse-switch
.end method
