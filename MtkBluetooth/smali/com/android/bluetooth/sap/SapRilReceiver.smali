.class public Lcom/android/bluetooth/sap/SapRilReceiver;
.super Ljava/lang/Object;
.source "SapRilReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;,
        Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final RIL_MAX_COMMAND_BYTES:I = 0x2000

.field private static final SERVICE_NAME_RIL_BT:Ljava/lang/String; = "slot1"

.field private static final SOCKET_OPEN_RETRY_MILLIS:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "SapRilReceiver"

.field public static final VERBOSE:Z = true


# instance fields
.field public buffer:[B

.field mSapCallback:Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;

.field volatile mSapProxy:Landroid/hardware/radio/V1_0/ISap;

.field final mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

.field final mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;

.field mSapProxyLock:Ljava/lang/Object;

.field private mSapServerMsgHandler:Landroid/os/Handler;

.field private mSapServiceHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 4

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    .line 28
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyLock:Ljava/lang/Object;

    .line 29
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 32
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    .line 33
    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServiceHandler:Landroid/os/Handler;

    .line 36
    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->buffer:[B

    .line 258
    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    .line 259
    iput-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServiceHandler:Landroid/os/Handler;

    .line 260
    new-instance p1, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;-><init>(Lcom/android/bluetooth/sap/SapRilReceiver;)V

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapCallback:Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;

    .line 261
    new-instance p1, Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;-><init>(Lcom/android/bluetooth/sap/SapRilReceiver;)V

    iput-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;

    .line 262
    iget-object p1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyLock:Ljava/lang/Object;

    monitor-enter p1

    .line 263
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->getSapProxy()Landroid/hardware/radio/V1_0/ISap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    .line 264
    monitor-exit p1

    .line 265
    return-void

    .line 264
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method static synthetic access$000(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/sap/SapRilReceiver;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/sap/SapRilReceiver;ILcom/android/bluetooth/sap/SapMessage;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/sap/SapRilReceiver;->removeOngoingReqAndSendMessage(ILcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/sap/SapRilReceiver;Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendSapMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    return-void
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/List;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    .line 201
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [B

    .line 202
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 203
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2

    .line 202
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_0
    return-object v1
.end method

.method private static readMessage(Ljava/io/InputStream;[B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    nop

    .line 297
    const/4 v0, 0x0

    const/4 v1, 0x4

    move v2, v0

    .line 299
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 301
    const/4 v4, -0x1

    const-string v5, "SapRilReceiver"

    if-gez v3, :cond_0

    .line 302
    const-string p0, "Hit EOS reading message length"

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return v4

    .line 306
    :cond_0
    add-int/2addr v2, v3

    .line 307
    sub-int/2addr v1, v3

    .line 308
    if-gtz v1, :cond_3

    .line 310
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int v3, v1, v2

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message length found to be: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    nop

    .line 318
    move v1, v3

    .line 320
    :cond_1
    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 322
    if-gez v2, :cond_2

    .line 323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Hit EOS reading message.  messageLength="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " remaining="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return v4

    .line 329
    :cond_2
    add-int/2addr v0, v2

    .line 330
    sub-int/2addr v1, v2

    .line 331
    if-gtz v1, :cond_1

    .line 333
    return v3

    .line 308
    :cond_3
    goto :goto_0
.end method

.method private removeOngoingReqAndSendMessage(ILcom/android/bluetooth/sap/SapMessage;)V
    .locals 3

    .line 60
    sget-object v0, Lcom/android/bluetooth/sap/SapMessage;->sOngoingRequests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeOngoingReqAndSendMessage: token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reqType "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    if-nez v0, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgTypeName(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    const-string v0, "SapRilReceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0, p2}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendSapMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 66
    return-void
.end method

.method private sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 351
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 352
    return-void
.end method

.method private sendRilIndMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 369
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 370
    return-void
.end method

.method private sendSapMessage(Lcom/android/bluetooth/sap/SapMessage;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Lcom/android/bluetooth/sap/SapMessage;->getMsgType()I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendClientMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendRilIndMessage(Lcom/android/bluetooth/sap/SapMessage;)V

    .line 57
    :goto_0
    return-void
.end method

.method private sendShutdownMessage()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 359
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 361
    :cond_0
    return-void
.end method


# virtual methods
.method public getSapProxy()Landroid/hardware/radio/V1_0/ISap;
    .locals 6

    .line 213
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 219
    :cond_0
    :try_start_1
    const-string v1, "slot1"

    invoke-static {v1}, Landroid/hardware/radio/V1_0/ISap;->getService(Ljava/lang/String;)Landroid/hardware/radio/V1_0/ISap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    .line 220
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    if-eqz v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 222
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v3

    .line 221
    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/radio/V1_0/ISap;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 223
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapCallback:Lcom/android/bluetooth/sap/SapRilReceiver$SapCallback;

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/ISap;->setCallback(Landroid/hardware/radio/V1_0/ISapCallback;)V

    goto :goto_0

    .line 225
    :cond_1
    const-string v1, "SapRilReceiver"

    const-string v2, "getSapProxy: mSapProxy == null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :goto_0
    goto :goto_1

    .line 227
    :catch_0
    move-exception v1

    .line 228
    const/4 v2, 0x0

    :try_start_2
    iput-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    .line 229
    const-string v2, "SapRilReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSapProxy: exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    if-nez v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 237
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 236
    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0xbb8

    .line 235
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 239
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    monitor-exit v0

    return-object v1

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getSapProxyLock()Ljava/lang/Object;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method notifyShutdown()V
    .locals 2

    .line 272
    const-string v0, "SapRilReceiver"

    const-string v1, "notifyShutdown()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    if-eqz v1, :cond_0

    .line 277
    invoke-direct {p0}, Lcom/android/bluetooth/sap/SapRilReceiver;->sendShutdownMessage()V

    .line 279
    :cond_0
    monitor-exit v0

    .line 280
    return-void

    .line 279
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetSapProxy()V
    .locals 5

    .line 244
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    const-string v1, "SapRilReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetSapProxy :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    iget-object v2, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxyDeathRecipient:Lcom/android/bluetooth/sap/SapRilReceiver$SapProxyDeathRecipient;

    invoke-interface {v1, v2}, Landroid/hardware/radio/V1_0/ISap;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    :cond_0
    goto :goto_0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    :try_start_2
    const-string v2, "SapRilReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetSapProxy: exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapProxy:Landroid/hardware/radio/V1_0/ISap;

    .line 254
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method sendRilConnectMessage()V
    .locals 2

    .line 340
    iget-object v0, p0, Lcom/android/bluetooth/sap/SapRilReceiver;->mSapServerMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 341
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 343
    :cond_0
    return-void
.end method
