.class public Lcom/android/bluetooth/opp/BluetoothOppUtility;
.super Ljava/lang/Object;
.source "BluetoothOppUtility.java"


# static fields
.field public static final CALENDAR_AUTHORITY:Ljava/lang/String; = "com.mediatek.calendarimporter"

.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "BluetoothOppUtility"

.field private static final V:Z

.field private static sNoSdCard:Ljava/lang/Boolean;

.field private static final sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/Uri;",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sSendFilePathMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUnstartedSendUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    .line 76
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sNoSdCard:Ljava/lang/Boolean;

    .line 80
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sUnstartedSendUriList:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFilePathMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static cancelNotification(Landroid/content/Context;)V
    .locals 1

    .line 683
    nop

    .line 684
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 685
    const v0, -0xf4244

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 686
    return-void
.end method

.method static closeSendFileInfo(Landroid/net/Uri;)V
    .locals 5

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSendFileInfo: uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothOppUtility"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    if-nez p0, :cond_0

    .line 489
    return-void

    .line 491
    :cond_0
    const/4 v0, 0x0

    .line 492
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 493
    if-eqz v3, :cond_1

    .line 494
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 495
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 496
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ArrayList size = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    if-nez v3, :cond_1

    .line 498
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    if-eqz v1, :cond_2

    .line 504
    :try_start_0
    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 508
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFilePathMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 509
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFilePathMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sSendFilePathMap: size ="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFilePathMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_3
    return-void
.end method

.method static closeUnstartedSendFileInfo()V
    .locals 3

    .line 543
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sUnstartedSendUriList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 545
    :try_start_0
    const-string v1, "BluetoothOppUtility"

    const-string v2, "closeSendFileInfoForPreparing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sUnstartedSendUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 548
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 549
    goto :goto_0

    .line 550
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->removeUnstartedSendUris()V

    .line 551
    monitor-exit v0

    .line 552
    return-void

    .line 551
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static deviceHasNoSdCard()Z
    .locals 3

    .line 344
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sNoSdCard:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 345
    const-string v0, "ro.build.characteristics"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "nosdcard"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sNoSdCard:Ljava/lang/Boolean;

    .line 348
    :cond_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sNoSdCard:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method static fileExists(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 1

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 282
    const-string v0, "r"

    .line 283
    nop

    .line 285
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    const/4 p0, 0x1

    return p0

    .line 287
    :catch_0
    move-exception p0

    .line 288
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 290
    const/4 p0, 0x0

    return p0
.end method

.method public static fillRecord(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V
    .locals 3

    .line 113
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 114
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mID:I

    .line 115
    const-string v1, "status"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mStatus:I

    .line 116
    const-string v1, "direction"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDirection:I

    .line 117
    const-string v1, "total_bytes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTotalBytes:J

    .line 118
    nop

    .line 119
    const-string v1, "current_bytes"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mCurrentBytes:J

    .line 120
    const-string v1, "timestamp"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mTimeStamp:Ljava/lang/Long;

    .line 121
    const-string v1, "destination"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    .line 123
    const-string v1, "_data"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    .line 124
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 125
    nop

    .line 126
    const-string v1, "hint"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 129
    const v1, 0x7f0e0094

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    .line 132
    :cond_1
    const-string v1, "uri"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    .line 134
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 135
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    .line 141
    :goto_0
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 142
    nop

    .line 143
    const-string v1, "mimetype"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    .line 146
    :cond_3
    iget-object v1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 147
    invoke-static {p0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getDeviceName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    .line 149
    nop

    .line 150
    const-string p0, "confirm"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 151
    const/4 p1, 0x5

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    iput-boolean p0, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mHandoverInitiated:Z

    .line 154
    sget-boolean p0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz p0, :cond_5

    .line 155
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Get data from db:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothOppUtility"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_5
    return-void
.end method

.method public static formatProgressText(JJ)Ljava/lang/String;
    .locals 3

    .line 331
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0%"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 332
    sget-object v1, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->setRoundingMode(Ljava/math/RoundingMode;)V

    .line 333
    nop

    .line 334
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-lez v1, :cond_0

    .line 335
    long-to-double p2, p2

    long-to-double p0, p0

    div-double/2addr p2, p0

    goto :goto_0

    .line 334
    :cond_0
    const-wide/16 p2, 0x0

    .line 337
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static generateUri(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)Landroid/net/Uri;
    .locals 1

    .line 430
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 431
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 432
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 434
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateUri: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothOppUtility"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    return-object p0
.end method

.method static getFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 11

    .line 622
    nop

    .line 623
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    const-string v1, "BluetoothOppUtility"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFilePath::fileUri = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 625
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 626
    const-string v2, "com.android.contacts"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 627
    const-string v2, "com.mediatek.calendarimporter"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 628
    const-string v0, "getFilePath:: content, not contact or caledar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    .line 630
    nop

    .line 633
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x1

    invoke-virtual {p0, v2, p1, v10}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 636
    invoke-virtual {p0, p1, v10}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    goto :goto_0

    .line 637
    :catch_0
    move-exception p0

    .line 638
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 639
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No permission to query provider for uri: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    move-object v2, v3

    .line 642
    :goto_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_2

    .line 651
    :cond_1
    :try_start_1
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v2, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 652
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 653
    nop

    .line 658
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 653
    return-object p0

    .line 658
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 654
    :catch_1
    move-exception p0

    .line 655
    :try_start_2
    const-string p0, "Cannot find _data column"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 656
    nop

    .line 658
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 656
    return-object v3

    .line 658
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 659
    throw p0

    .line 643
    :cond_2
    :goto_2
    const-string p0, "getFilePath get file path fail"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    if-eqz v2, :cond_3

    .line 645
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 647
    :cond_3
    return-object v3

    .line 660
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p0

    const-string v0, "file"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 661
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 664
    :cond_5
    return-object v3
.end method

.method public static getFilePathFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 515
    nop

    .line 516
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFilePathMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 517
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    .line 516
    :cond_0
    const/4 p0, 0x0

    .line 519
    :goto_0
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFilePathFromUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothOppUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_1
    return-object p0
.end method

.method static getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;
    .locals 4

    .line 468
    const-string v0, "BluetoothOppUtility"

    if-nez p0, :cond_0

    .line 469
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSendFileInfo: bad URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    sget-object p0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    return-object p0

    .line 472
    :cond_0
    const/4 v1, 0x0

    .line 473
    sget-object v2, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 474
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 475
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    .line 477
    :cond_1
    if-eqz v1, :cond_2

    .line 478
    sget-boolean v2, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSendFileInfo: uri= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", info= "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", path= "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_2
    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    :goto_0
    return-object v1
.end method

.method public static getStatusDescription(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 356
    const/16 p2, 0xbe

    if-ne p1, p2, :cond_0

    .line 357
    const p1, 0x7f0e0082

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 358
    :cond_0
    const/16 p2, 0xc0

    if-ne p1, p2, :cond_1

    .line 359
    const p1, 0x7f0e0084

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 360
    :cond_1
    const/16 p2, 0xc8

    if-ne p1, p2, :cond_2

    .line 361
    const p1, 0x7f0e0085

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 362
    :cond_2
    const/16 p2, 0x196

    if-ne p1, p2, :cond_3

    .line 363
    const p1, 0x7f0e0081

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 364
    :cond_3
    const/16 p2, 0x193

    if-ne p1, p2, :cond_4

    .line 365
    const p1, 0x7f0e007e

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 366
    :cond_4
    const/16 p2, 0x1ea

    if-ne p1, p2, :cond_5

    .line 367
    const p1, 0x7f0e007b

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_3

    .line 368
    :cond_5
    const/16 p2, 0x1ec

    if-ne p1, p2, :cond_6

    .line 369
    const p1, 0x7f0e007d

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 370
    :cond_6
    const/16 p2, 0x1ed

    if-ne p1, p2, :cond_8

    .line 371
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->deviceHasNoSdCard()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 372
    const p1, 0x7f0e0080

    goto :goto_0

    .line 373
    :cond_7
    const p1, 0x7f0e007f

    .line 374
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 375
    goto :goto_3

    :cond_8
    const/16 p2, 0x1f1

    if-ne p1, p2, :cond_9

    .line 376
    const p1, 0x7f0e007c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 377
    :cond_9
    const/16 p2, 0x1ee

    if-ne p1, p2, :cond_b

    .line 378
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->deviceHasNoSdCard()Z

    move-result p1

    if-eqz p1, :cond_a

    const p1, 0x7f0e002a

    goto :goto_1

    :cond_a
    const p1, 0x7f0e0029

    .line 379
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 380
    goto :goto_3

    :cond_b
    const/16 p2, 0x190

    if-eq p1, p2, :cond_d

    const/16 p2, 0x19b

    if-eq p1, p2, :cond_d

    const/16 p2, 0x19c

    if-eq p1, p2, :cond_d

    const/16 p2, 0x1ef

    if-eq p1, p2, :cond_d

    const/16 p2, 0x1f0

    if-ne p1, p2, :cond_c

    goto :goto_2

    .line 387
    :cond_c
    const p1, 0x7f0e0086

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    .line 385
    :cond_d
    :goto_2
    const p1, 0x7f0e0083

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 389
    :goto_3
    return-object p0
.end method

.method static getTotalTaskCount()I
    .locals 5

    .line 668
    const-string v0, "BluetoothOppUtility"

    const-string v1, "getTotalTaskCount ++"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    nop

    .line 670
    sget-object v1, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 671
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 672
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    .line 673
    sget-object v4, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 674
    if-eqz v3, :cond_0

    .line 675
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    .line 677
    :cond_0
    goto :goto_0

    .line 678
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTotalTaskCount return "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return v2
.end method

.method static getUnstartedSendCount()I
    .locals 3

    .line 555
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sUnstartedSendUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 556
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v1, :cond_0

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnstartedSendCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BluetoothOppUtility"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    return v0
.end method

.method public static isBluetoothShareUri(Landroid/net/Uri;)Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static isForbiddenContent(Landroid/net/Uri;)Z
    .locals 1

    .line 577
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.bluetooth.map.MmsFileProvider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 578
    const/4 p0, 0x1

    return p0

    .line 580
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isInExternalStorageDir(Landroid/net/Uri;)Z
    .locals 2

    .line 568
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not a file URI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothOppUtility"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/4 p0, 0x0

    return p0

    .line 572
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 573
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->isSameOrSubDirectory(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static isInValidStorageDir(Landroid/net/Uri;)Z
    .locals 3

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInValidStorageDir uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothOppUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a file URI: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 p0, 0x0

    return p0

    .line 613
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/net/Uri;->getCanonicalUri()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 615
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file path = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const-string v0, "/storage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    .line 618
    return p0
.end method

.method public static isRecognizedFileType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 3

    .line 298
    nop

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RecognizedFileType() fileUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mimetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothOppUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 307
    const/high16 p1, 0x10000

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 309
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    .line 311
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "NO application to handle MIME type "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 p0, 0x0

    goto :goto_0

    .line 309
    :cond_0
    const/4 p0, 0x1

    .line 315
    :goto_0
    return p0
.end method

.method static isSameOrSubDirectory(Ljava/io/File;Ljava/io/File;)Z
    .locals 2

    .line 589
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 590
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p1

    .line 591
    nop

    .line 592
    :goto_0
    if-eqz p1, :cond_1

    .line 593
    invoke-virtual {p0, p1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    const/4 p0, 0x1

    return p0

    .line 596
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 598
    :cond_1
    return v0

    .line 599
    :catch_0
    move-exception p0

    .line 600
    const-string p1, "BluetoothOppUtility"

    const-string v1, "Error while accessing file"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    return v0
.end method

.method public static openReceivedFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/net/Uri;)V
    .locals 6

    .line 204
    const-string p3, "BluetoothOppUtility"

    if-eqz p1, :cond_b

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 209
    :cond_0
    invoke-static {p4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->isBluetoothShareUri(Landroid/net/Uri;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 210
    const-string p0, "Trying to open a file that wasn\'t transfered over Bluetooth"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 214
    :cond_1
    nop

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p1, "uri"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 217
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 219
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 220
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 219
    :cond_2
    move-object v1, v0

    .line 223
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 224
    goto :goto_1

    .line 223
    :catchall_0
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 224
    throw p0

    .line 217
    :cond_3
    move-object v1, v0

    .line 227
    :goto_1
    if-nez v1, :cond_4

    .line 228
    const-string p0, "file uri not exist"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    return-void

    .line 232
    :cond_4
    invoke-static {p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->fileExists(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result p1

    const-string v2, "content"

    const-string v3, "title"

    const/high16 v4, 0x10000000

    if-nez p1, :cond_6

    .line 233
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 234
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 235
    const p2, 0x7f0e005a

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    const p2, 0x7f0e005b

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 241
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz p1, :cond_5

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "This uri will be deleted: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p4, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 245
    return-void

    .line 248
    :cond_6
    invoke-static {p0, v1, p2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->isRecognizedFileType(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 249
    new-instance p1, Landroid/content/Intent;

    const-string p4, "android.intent.action.VIEW"

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->setDataAndTypeAndNormalize(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    const/high16 v0, 0x10000

    .line 253
    invoke-virtual {p4, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 255
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 256
    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    :try_start_1
    sget-boolean p4, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz p4, :cond_7

    .line 260
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ACTION_VIEW intent sent out: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " / "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_7
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 267
    goto :goto_2

    .line 263
    :catch_0
    move-exception p0

    .line 264
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz p1, :cond_8

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "no activity for handling ACTION_VIEW intent:  "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 268
    :cond_8
    :goto_2
    goto :goto_3

    .line 269
    :cond_9
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz p1, :cond_a

    const-string p1, "openReceivedFile:: not recognized file"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_a
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/android/bluetooth/opp/BluetoothOppBtErrorActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 272
    invoke-virtual {p1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 273
    const p2, 0x7f0e0094

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const p2, 0x7f0e0095

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 277
    :goto_3
    return-void

    .line 205
    :cond_b
    :goto_4
    const-string p0, "ERROR: Para fileName ==null, or mimetype == null"

    invoke-static {p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    return-void
.end method

.method static originalUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 3

    .line 419
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 420
    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 421
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 422
    const/4 p0, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 423
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 425
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "originalUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothOppUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_1
    return-object p0
.end method

.method static putPrepareSendingUri(Landroid/net/Uri;)V
    .locals 2

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putPrepareSendingUri: uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothOppUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sUnstartedSendUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    return-void
.end method

.method static putSendFileInfo(Landroid/net/Uri;Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;)V
    .locals 5

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putSendFileInfo: uri= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", sendFileInfo= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", path= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothOppUtility"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->SEND_FILE_INFO_ERROR:Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    if-eq p1, v0, :cond_4

    if-nez p0, :cond_0

    goto/16 :goto_1

    .line 445
    :cond_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 446
    const-string v2, "putSendFileInfo: uri="

    if-nez v0, :cond_1

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 448
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    sget-object v3, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFileMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", is a new uri, create ArrayList"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "bluetooth_content_share.html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 453
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_2

    .line 454
    const-string v3, "Clear same html files in list"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 458
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", already have, final size is "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :goto_0
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFilePathMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 463
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sSendFilePathMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_3
    return-void

    .line 442
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "putSendFileInfo: bad sendFileInfo, URI: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void
.end method

.method static putUnstartedSendUris(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 530
    const-string v0, "BluetoothOppUtility"

    const-string v1, "putPrepareSendingUris"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sUnstartedSendUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 533
    return-void
.end method

.method public static queryRecord(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;
    .locals 9

    .line 91
    const-string v0, "BluetoothOppUtility"

    new-instance v1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;

    invoke-direct {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;-><init>()V

    .line 92
    nop

    .line 94
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception v3

    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SQLite exception occur : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 98
    :goto_0
    if-eqz v3, :cond_1

    .line 99
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 100
    invoke-static {p0, v3, v1}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->fillRecord(Landroid/content/Context;Landroid/database/Cursor;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V

    .line 102
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 104
    :cond_1
    nop

    .line 105
    sget-boolean p0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz p0, :cond_2

    .line 106
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothOppManager Error: not got data from db for uri:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    move-object v1, v2

    :goto_1
    return-object v1
.end method

.method public static queryTransfersInBatch(Landroid/content/Context;Ljava/lang/Long;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    const-string v0, "BluetoothOppUtility"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timestamp == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 167
    nop

    .line 169
    const/4 p1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    const-string p0, "_data"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "_id"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception p0

    .line 174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SQLite exception occur : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p1

    .line 177
    :goto_0
    if-nez p0, :cond_0

    .line 178
    return-object p1

    .line 181
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_3

    .line 183
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 184
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 186
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 187
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 189
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz p1, :cond_2

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uri in this batch: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 194
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 195
    return-object v1
.end method

.method static removeUnstartedSendUris()V
    .locals 2

    .line 537
    const-string v0, "BluetoothOppUtility"

    const-string v1, "removePrepareSendingUris"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    sget-object v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->sUnstartedSendUriList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 540
    return-void
.end method

.method public static retryTransfer(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;)V
    .locals 3

    .line 396
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 397
    nop

    .line 399
    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFilePath:Ljava/lang/String;

    goto :goto_0

    .line 402
    :cond_0
    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileName:Ljava/lang/String;

    .line 405
    :goto_0
    const-string v2, "carrier_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileUri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mFileType:Ljava/lang/String;

    const-string v2, "mimetype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    iget-object v1, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDestAddr:Ljava/lang/String;

    const-string v2, "destination"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    nop

    .line 411
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 412
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppUtility;->V:Z

    if-eqz v0, :cond_1

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Insert contentUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "  to device: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/android/bluetooth/opp/BluetoothOppTransferInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BluetoothOppUtility"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_1
    return-void
.end method

.method public static updateVisibilityToHidden(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 3

    .line 322
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 323
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "visibility"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 325
    return-void
.end method
