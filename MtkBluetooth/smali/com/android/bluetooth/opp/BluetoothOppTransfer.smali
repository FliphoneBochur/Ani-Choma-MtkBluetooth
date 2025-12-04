.class public Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.super Ljava/lang/Object;
.source "BluetoothOppTransfer.java"

# interfaces
.implements Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;,
        Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;,
        Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;
    }
.end annotation


# static fields
.field private static final CONNECT_RETRY_TIME:I = 0x64

.field private static final CONNECT_WAIT_TIMEOUT:I = 0xafc8

.field private static final D:Z = true

.field private static final SOCKET_ERROR_RETRY:I = 0xd

.field private static final SOCKET_LINK_KEY_ERROR:Ljava/lang/String; = "Invalid exchange"

.field private static final TAG:Ljava/lang/String; = "BtOppTransfer"

.field private static final TRANSPORT_CONNECTED:I = 0xb

.field private static final TRANSPORT_ERROR:I = 0xa

.field private static final V:Z


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

.field private mBluetoothReceiver:Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;

.field private mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

.field private mConnectThreadMutex:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

.field private mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

.field private mTimestamp:J

.field private mTransport:Ljavax/obex/ObexTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    sget-boolean v0, Lcom/android/bluetooth/opp/Constants;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppBatch;)V
    .locals 1

    .line 196
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;-><init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/bluetooth/opp/BluetoothOppBatch;Lcom/android/bluetooth/opp/BluetoothOppObexSession;)V
    .locals 0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    .line 186
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    .line 187
    iput-object p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    .line 189
    invoke-virtual {p2, p0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->registerListern(Lcom/android/bluetooth/opp/BluetoothOppBatch$BluetoothOppBatchListener;)V

    .line 190
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 191
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThreadMutex:Ljava/lang/Object;

    .line 193
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->cleanUp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markShareTimeout(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 66
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljava/lang/Object;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThreadMutex:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startObexSession()V

    return-void
.end method

.method private cleanUp()V
    .locals 3

    .line 1071
    monitor-enter p0

    .line 1073
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBluetoothReceiver:Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBluetoothReceiver:Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1075
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBluetoothReceiver:Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :cond_0
    goto :goto_0

    .line 1081
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1077
    :catch_0
    move-exception v0

    .line 1078
    :try_start_1
    const-string v1, "BtOppTransfer"

    const-string v2, "Exception:unregisterReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1081
    :goto_0
    monitor-exit p0

    .line 1082
    return-void

    .line 1081
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private markBatchFailed(I)V
    .locals 7

    .line 401
    monitor-enter p0

    .line 403
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    goto :goto_0

    .line 409
    :catchall_0
    move-exception p1

    goto/16 :goto_3

    .line 404
    :catch_0
    move-exception v0

    .line 405
    :try_start_1
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_0

    .line 406
    const-string v0, "BtOppTransfer"

    const-string v1, "Interrupted waiting for markBatchFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    const-string v0, "BtOppTransfer"

    const-string v1, "Mark all ShareInfo in the batch as failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 415
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_1

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current share has status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BtOppTransfer"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 421
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_3

    .line 423
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 427
    :cond_3
    nop

    .line 428
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    if-nez v0, :cond_4

    .line 429
    return-void

    .line 431
    :cond_4
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    .line 432
    :goto_1
    if-eqz v0, :cond_9

    .line 433
    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_8

    .line 434
    iput p1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 436
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 437
    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v5, :cond_6

    .line 440
    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 441
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v3

    .line 442
    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 443
    iget-object v5, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 444
    iget-object v5, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    const-string v6, "hint"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-wide v5, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "total_bytes"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 446
    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    const-string v5, "mimetype"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_5
    goto :goto_2

    .line 449
    :cond_6
    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ge v5, v3, :cond_7

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    if-eqz v3, :cond_7

    .line 450
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v5, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 453
    :cond_7
    :goto_2
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 454
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v3, v2, v0}, Lcom/android/bluetooth/opp/Constants;->sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 457
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    goto/16 :goto_1

    .line 459
    :cond_9
    return-void

    .line 409
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private markBatchFailedEx(I)V
    .locals 6

    .line 465
    monitor-enter p0

    .line 466
    :try_start_0
    const-string v0, "BtOppTransfer"

    const-string v1, "markBatchFailedEx"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    const-string v0, "BtOppTransfer"

    const-string v1, "Mark all ShareInfo in the batch as failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v0, :cond_2

    .line 473
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current share has status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppTransfer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 477
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 479
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 481
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 485
    :cond_2
    nop

    .line 486
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    if-nez v0, :cond_3

    .line 487
    return-void

    .line 489
    :cond_3
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    .line 490
    :goto_0
    if-eqz v0, :cond_8

    .line 491
    iget v1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_7

    .line 492
    iput p1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 494
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 495
    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "status"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 497
    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v4, :cond_5

    .line 498
    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 499
    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v2

    .line 500
    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 501
    iget-object v4, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 502
    iget-object v4, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    const-string v5, "hint"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-wide v4, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "total_bytes"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 504
    iget-object v2, v2, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    const-string v4, "mimetype"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :cond_4
    goto :goto_1

    .line 507
    :cond_5
    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ge v4, v2, :cond_6

    iget-object v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 508
    new-instance v2, Ljava/io/File;

    iget-object v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 511
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 512
    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v2, v1, v0}, Lcom/android/bluetooth/opp/Constants;->sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 515
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 517
    :cond_8
    return-void

    .line 467
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V
    .locals 3

    .line 975
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    const-string v1, "BtOppTransfer"

    if-eqz v0, :cond_0

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "markConnectionFailed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    :cond_0
    if-eqz p1, :cond_1

    .line 980
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 982
    :catch_0
    move-exception p1

    .line 983
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz p1, :cond_2

    .line 984
    const-string p1, "Error when close socket"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 986
    :cond_1
    :goto_0
    nop

    .line 987
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 988
    return-void
.end method

.method private markShareTimeout(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 394
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 395
    nop

    .line 396
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 395
    const-string v2, "confirm"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 397
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    return-void
.end method

.method private processCurrentShare()V
    .locals 2

    .line 756
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_0

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCurrentShare"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppTransfer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    invoke-interface {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->addShare(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    .line 760
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 761
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->confirmStatusChanged()V

    .line 763
    :cond_1
    return-void
.end method

.method private registerConnectionreceiver()V
    .locals 3

    .line 736
    monitor-enter p0

    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBluetoothReceiver:Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;

    if-nez v0, :cond_0

    .line 739
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBluetoothReceiver:Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;

    .line 740
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 741
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 742
    const-string v1, "android.bluetooth.device.action.SDP_RECORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBluetoothReceiver:Lcom/android/bluetooth/opp/BluetoothOppTransfer$OppConnectionReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 744
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_0

    .line 745
    const-string v0, "BtOppTransfer"

    const-string v1, "Registered mBluetoothReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    :cond_0
    goto :goto_0

    .line 751
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 748
    :catch_0
    move-exception v0

    .line 749
    :try_start_1
    const-string v1, "BtOppTransfer"

    const-string v2, "mBluetoothReceiver Registered already "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 751
    :goto_0
    monitor-exit p0

    .line 752
    return-void

    .line 751
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private startConnectSession()V
    .locals 7

    .line 787
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 788
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 790
    const-string v0, "BtOppTransfer"

    const-string v1, "SDP failed, start rfcomm connect directly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 795
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget-object v3, v1, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;ZZI)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 796
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->start()V

    .line 798
    :cond_0
    return-void
.end method

.method private startObexSession()V
    .locals 5

    .line 690
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 692
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 693
    const-string v2, "Unexpected error happened !"

    const-string v3, "BtOppTransfer"

    if-nez v0, :cond_0

    .line 697
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    return-void

    .line 700
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_1

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start session for info "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " for batch "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v4, v4, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v0, :cond_3

    .line 705
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_2

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create Client session with transport "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_2
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexClientSession;-><init>(Landroid/content/Context;Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    goto :goto_0

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-ne v0, v1, :cond_5

    .line 715
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    if-nez v0, :cond_4

    .line 717
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/16 v0, 0x1eb

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V

    .line 719
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 720
    return-void

    .line 722
    :cond_4
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_5

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Transfer has Server session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/opp/BluetoothOppManager;->getBatchSize()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->start(Landroid/os/Handler;I)V

    .line 728
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    .line 729
    return-void
.end method

.method private tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    .locals 3

    .line 993
    if-nez p1, :cond_0

    .line 994
    const-string p1, "BtOppTransfer"

    const-string v0, "Share is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return-void

    .line 997
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 998
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 999
    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "direction"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1000
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1001
    return-void
.end method


# virtual methods
.method public confirmStatusChanged()V
    .locals 3

    .line 771
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;

    const-string v1, "Server Unblock thread"

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$1;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljava/lang/String;)V

    .line 780
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v1, :cond_0

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmStatusChanged to unblock mSession"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtOppTransfer"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 784
    return-void
.end method

.method public getBatchId()I
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    return v0
.end method

.method public interrupt(I)V
    .locals 7

    .line 607
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BtOppTransfer"

    const-string v1, "interrupt"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    if-eqz v0, :cond_3

    .line 609
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current share has status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtOppTransfer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothShare;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 611
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 613
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 615
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget-object v1, v1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 619
    :cond_3
    nop

    .line 620
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    if-nez v0, :cond_4

    .line 621
    return-void

    .line 623
    :cond_4
    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    .line 624
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 625
    iget v2, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_8

    .line 626
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/android/bluetooth/opp/BluetoothShare;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 627
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 629
    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    if-nez v5, :cond_6

    .line 630
    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    .line 631
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->getSendFileInfo(Landroid/net/Uri;)Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;

    move-result-object v3

    .line 632
    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/bluetooth/opp/BluetoothOppUtility;->closeSendFileInfo(Landroid/net/Uri;)V

    .line 633
    iget-object v5, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 634
    iget-object v5, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mFileName:Ljava/lang/String;

    const-string v6, "hint"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-wide v5, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mLength:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "total_bytes"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 636
    iget-object v3, v3, Lcom/android/bluetooth/opp/BluetoothOppSendFileInfo;->mMimetype:Ljava/lang/String;

    const-string v5, "mimetype"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    :cond_5
    goto :goto_1

    .line 639
    :cond_6
    iget v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    if-ge v5, v3, :cond_7

    iget-object v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 640
    new-instance v3, Ljava/io/File;

    iget-object v5, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 643
    :cond_7
    :goto_1
    iput p1, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    .line 644
    iget v3, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "status"

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 645
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v2, v4, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 646
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    invoke-static {v1, v2, v0}, Lcom/android/bluetooth/opp/Constants;->sendIntentIfCompleted(Landroid/content/Context;Landroid/net/Uri;I)V

    .line 649
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 652
    :cond_9
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->cleanUp()V

    .line 653
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThreadMutex:Ljava/lang/Object;

    monitor-enter p1

    .line 654
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_d

    .line 656
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->interrupt()V

    .line 657
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_a

    .line 658
    const-string v0, "BtOppTransfer"

    const-string v2, "waiting for connect thread to terminate"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->join()V

    .line 661
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_b

    .line 662
    const-string v0, "BtOppTransfer"

    const-string v2, "thread terminated!"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 668
    :cond_b
    goto :goto_2

    .line 664
    :catch_0
    move-exception v0

    .line 665
    :try_start_2
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_c

    .line 666
    const-string v0, "BtOppTransfer"

    const-string v2, "Interrupted waiting for connect thread to join"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    :cond_c
    :goto_2
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    goto :goto_3

    .line 671
    :cond_d
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_e

    const-string v0, "BtOppTransfer"

    const-string v2, "mConnectThread is null"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_e
    :goto_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 674
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    if-eqz p1, :cond_10

    .line 675
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz p1, :cond_f

    const-string p1, "BtOppTransfer"

    const-string v0, "mSession forceInterupt"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_f
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    invoke-interface {p1}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->forceInterupt()V

    .line 679
    :cond_10
    monitor-enter p0

    .line 680
    :try_start_3
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz p1, :cond_11

    .line 681
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    .line 682
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->interrupt()V

    .line 683
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 685
    :cond_11
    monitor-exit p0

    .line 686
    return-void

    .line 685
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    .line 673
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public onBatchCanceled()V
    .locals 2

    .line 1062
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_0

    .line 1063
    const-string v0, "BtOppTransfer"

    const-string v1, "Transfer on Batch canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->stop()V

    .line 1067
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x2

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 1068
    return-void
.end method

.method public onShareAdded(I)V
    .locals 1

    .line 1016
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object p1

    .line 1018
    if-nez p1, :cond_0

    .line 1019
    return-void

    .line 1021
    :cond_0
    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mDirection:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 1022
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    invoke-virtual {p1}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 1026
    if-eqz p1, :cond_3

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget p1, p1, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mConfirm:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 1031
    :cond_1
    sget-boolean p1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz p1, :cond_2

    .line 1032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transfer continue session for info "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from batch "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtOppTransfer"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V

    .line 1036
    invoke-virtual {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->confirmStatusChanged()V

    .line 1039
    :cond_3
    return-void
.end method

.method public onShareDeleted(I)V
    .locals 0

    .line 1055
    return-void
.end method

.method public start()V
    .locals 3

    .line 545
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const-string v1, "BtOppTransfer"

    if-nez v0, :cond_0

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start transfer when Bluetooth is disabled for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/16 v0, 0x1eb

    invoke-direct {p0, v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailedEx(I)V

    .line 548
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    const/4 v1, 0x3

    iput v1, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 549
    return-void

    .line 551
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->registerConnectionreceiver()V

    .line 552
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_3

    .line 553
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create handler thread for batch "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v2, v2, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v1, 0xa

    const-string v2, "BtOpp Transfer Handler"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 556
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 557
    new-instance v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    .line 559
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v0, :cond_2

    .line 561
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startConnectSession()V

    goto :goto_0

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;

    iget v0, v0, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 567
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startObexSession()V

    .line 571
    :cond_3
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 577
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "BtOppTransfer"

    const-string v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    if-eqz v0, :cond_2

    .line 579
    sget-boolean v0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v0, :cond_1

    const-string v0, "BtOppTransfer"

    const-string v1, "Stop mSession"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    invoke-interface {v0}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    .line 583
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->cleanUp()V

    .line 584
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThreadMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 587
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->interrupt()V

    .line 588
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v1, :cond_3

    const-string v1, "BtOppTransfer"

    const-string v3, "waiting for connect thread to terminate"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 592
    goto :goto_0

    .line 590
    :catch_0
    move-exception v1

    .line 591
    :try_start_2
    sget-boolean v1, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->V:Z

    if-eqz v1, :cond_4

    const-string v1, "BtOppTransfer"

    const-string v3, "Interrupted waiting for connect thread to join"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_4
    :goto_0
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 595
    :cond_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 597
    monitor-enter p0

    .line 598
    :try_start_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_6

    .line 599
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 600
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 601
    iput-object v2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mHandlerThread:Landroid/os/HandlerThread;

    .line 603
    :cond_6
    monitor-exit p0

    .line 604
    return-void

    .line 603
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 595
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
