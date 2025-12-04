.class public Lcom/android/bluetooth/map/BluetoothMnsObexClient;
.super Ljava/lang/Object;
.source "BluetoothMnsObexClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;,
        Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;
    }
.end annotation


# static fields
.field public static final BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

.field private static final D:Z

.field private static final MNS_NOTIFICATION_DELAY:I = 0xa

.field private static final MNS_SDP_SEARCH_DELAY:I = 0x1770

.field public static final MSG_MNS_NOTIFICATION_REGISTRATION:I = 0x1

.field public static final MSG_MNS_SDP_SEARCH_REGISTRATION:I = 0x3

.field public static final MSG_MNS_SEND_EVENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothMnsObexClient"

.field private static final TYPE_EVENT:Ljava/lang/String; = "x-bt/MAP-event-report"

.field private static final V:Z


# instance fields
.field private mCallback:Landroid/os/Handler;

.field private mClientSession:Ljavax/obex/ClientSession;

.field private mConnected:Z

.field public mHandler:Landroid/os/Handler;

.field private mHsConnect:Ljavax/obex/HeaderSet;

.field public mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

.field private mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

.field private mRegisteredMasIds:Landroid/util/SparseBooleanArray;

.field mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mTransport:Ljavax/obex/ObexTransport;

.field private volatile mWaitingForRemote:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->D:Z

    .line 50
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    .line 73
    nop

    .line 74
    const-string v0, "00001133-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SdpMnsRecord;Landroid/os/Handler;)V
    .locals 3

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 59
    new-instance v1, Landroid/util/SparseBooleanArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRegisteredMasIds:Landroid/util/SparseBooleanArray;

    .line 61
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHsConnect:Ljavax/obex/HeaderSet;

    .line 62
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    .line 71
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    .line 79
    if-eqz p1, :cond_0

    .line 82
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 83
    new-instance p1, Landroid/os/HandlerThread;

    const-string v1, "BluetoothMnsObexClient"

    invoke-direct {p1, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 87
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 88
    new-instance v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsObexClientHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMnsObexClient;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMnsObexClient$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    .line 89
    iput-object p3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    .line 90
    iput-object p2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    .line 91
    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Obex transport is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->D:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMnsObexClient;[BI)I
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->sendEventHandler([BI)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->notifyMnsSdpSearch()V

    return-void
.end method

.method private handleSendException(Ljava/lang/String;)V
    .locals 2

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when sending event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMnsObexClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    return-void
.end method

.method private notifyMnsSdpSearch()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 429
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 430
    const/16 v1, 0x138f

    iput v1, v0, Landroid/os/Message;->what:I

    .line 431
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 433
    :cond_0
    return-void
.end method

.method private notifyUpdateWakeLock()V
    .locals 2

    .line 556
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 557
    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 558
    const/16 v1, 0x138d

    iput v1, v0, Landroid/os/Message;->what:I

    .line 559
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 561
    :cond_0
    return-void
.end method

.method private sendEventHandler([BI)I
    .locals 10

    .line 437
    nop

    .line 438
    nop

    .line 440
    nop

    .line 441
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    .line 443
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_13

    if-nez v0, :cond_0

    goto/16 :goto_19

    .line 448
    :cond_0
    new-instance v1, Ljavax/obex/HeaderSet;

    invoke-direct {v1}, Ljavax/obex/HeaderSet;-><init>()V

    .line 449
    new-instance v3, Lcom/android/bluetooth/map/BluetoothMapAppParams;

    invoke-direct {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;-><init>()V

    .line 450
    invoke-virtual {v3, p2}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->setMasInstanceId(I)V

    .line 452
    nop

    .line 453
    nop

    .line 456
    const/16 p2, 0x42

    const/16 v4, 0xa0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_0
    const-string v8, "x-bt/MAP-event-report"

    invoke-virtual {v1, p2, v8}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 457
    const/16 p2, 0x4c

    invoke-virtual {v3}, Lcom/android/bluetooth/map/BluetoothMapAppParams;->encodeParams()[B

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 459
    iget-object p2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHsConnect:Ljavax/obex/HeaderSet;

    iget-object p2, p2, Ljavax/obex/HeaderSet;->mConnectionID:[B

    if-eqz p2, :cond_1

    .line 460
    const/4 p2, 0x4

    new-array v3, p2, [B

    iput-object v3, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    .line 461
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHsConnect:Ljavax/obex/HeaderSet;

    iget-object v3, v3, Ljavax/obex/HeaderSet;->mConnectionID:[B

    iget-object v8, v1, Ljavax/obex/HeaderSet;->mConnectionID:[B

    invoke-static {v3, v7, v8, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 463
    :cond_1
    const-string p2, "BluetoothMnsObexClient"

    const-string v3, "sendEvent: no connection ID"

    invoke-static {p2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :goto_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 467
    :try_start_1
    iput-boolean v6, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 468
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 471
    :try_start_2
    sget-boolean p2, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz p2, :cond_2

    .line 472
    const-string p2, "BluetoothMnsObexClient"

    const-string v3, "Send headerset Event "

    invoke-static {p2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :cond_2
    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->put(Ljavax/obex/HeaderSet;)Ljavax/obex/Operation;

    move-result-object p2

    check-cast p2, Ljavax/obex/ClientOperation;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 480
    move v0, v7

    goto :goto_1

    .line 477
    :catch_0
    move-exception p2

    .line 478
    :try_start_3
    const-string v0, "BluetoothMnsObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when put HeaderSet "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_9
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 479
    move-object p2, v5

    move v0, v6

    .line 481
    :goto_1
    :try_start_4
    monitor-enter p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 482
    :try_start_5
    iput-boolean v7, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 483
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 484
    if-nez v0, :cond_4

    .line 486
    :try_start_6
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v1, :cond_3

    .line 487
    const-string v1, "BluetoothMnsObexClient"

    const-string v3, "Send headerset Event "

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_3
    invoke-virtual {p2}, Ljavax/obex/ClientOperation;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 493
    goto :goto_2

    .line 490
    :catch_1
    move-exception v1

    .line 491
    :try_start_7
    const-string v3, "BluetoothMnsObexClient"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error when opening OutputStream "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    move v0, v6

    .line 496
    :cond_4
    :goto_2
    if-nez v0, :cond_7

    .line 498
    invoke-virtual {p2}, Ljavax/obex/ClientOperation;->getMaxPacketSize()I

    move-result v1

    .line 500
    :goto_3
    array-length v3, p1

    if-ge v7, v3, :cond_5

    .line 501
    array-length v3, p1

    sub-int/2addr v3, v7

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 502
    invoke-virtual {v5, p1, v7, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 503
    add-int/2addr v7, v3

    goto :goto_3

    .line 506
    :cond_5
    array-length v1, p1

    if-ne v7, v1, :cond_6

    .line 507
    const-string v1, "BluetoothMnsObexClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SendEvent finished send length"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_4

    .line 509
    :cond_6
    nop

    .line 510
    :try_start_8
    invoke-virtual {p2}, Ljavax/obex/ClientOperation;->abort()V

    .line 511
    const-string p1, "BluetoothMnsObexClient"

    const-string v0, "SendEvent interrupted"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    .line 517
    :catch_2
    move-exception p1

    goto/16 :goto_a

    .line 514
    :catch_3
    move-exception p1

    goto/16 :goto_d

    .line 522
    :cond_7
    :goto_4
    move v6, v0

    :goto_5
    if-eqz v5, :cond_8

    .line 523
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    .line 525
    :catch_4
    move-exception p1

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when closing stream after send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMnsObexClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 527
    :cond_8
    :goto_6
    nop

    .line 529
    :goto_7
    if-nez v6, :cond_b

    if-eqz p2, :cond_b

    .line 530
    :try_start_a
    invoke-virtual {p2}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 531
    if-eq p1, v2, :cond_a

    .line 532
    :try_start_b
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v0, :cond_9

    .line 533
    const-string v0, "BluetoothMnsObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Put response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_9
    if-eq p1, v4, :cond_a

    .line 536
    const-string v0, "BluetoothMnsObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response error code is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto :goto_8

    .line 543
    :catch_5
    move-exception p2

    move v2, p1

    goto :goto_9

    .line 540
    :cond_a
    :goto_8
    move v2, p1

    :cond_b
    if-eqz p2, :cond_e

    .line 541
    :try_start_c
    invoke-virtual {p2}, Ljavax/obex/ClientOperation;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_12

    .line 543
    :catch_6
    move-exception p2

    .line 544
    :goto_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error when closing stream after send "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_11

    .line 483
    :catchall_0
    move-exception p1

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :try_start_e
    throw p1
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_7
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 521
    :catchall_1
    move-exception p1

    move v6, v0

    goto/16 :goto_14

    .line 517
    :catch_7
    move-exception p1

    move v6, v0

    goto :goto_a

    .line 514
    :catch_8
    move-exception p1

    move v6, v0

    goto :goto_d

    .line 468
    :catchall_2
    move-exception p1

    :try_start_f
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :try_start_10
    throw p1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_9
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 521
    :catchall_3
    move-exception p1

    move-object p2, v5

    move v6, v7

    goto/16 :goto_14

    .line 517
    :catch_9
    move-exception p1

    move-object p2, v5

    move v6, v7

    .line 518
    :goto_a
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->handleSendException(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 519
    nop

    .line 522
    if-eqz v5, :cond_c

    .line 523
    :try_start_12
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_b

    .line 525
    :catch_a
    move-exception p1

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when closing stream after send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMnsObexClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 527
    :cond_c
    :goto_b
    nop

    .line 529
    :goto_c
    nop

    .line 540
    if-eqz p2, :cond_e

    .line 541
    :try_start_13
    invoke-virtual {p2}, Ljavax/obex/ClientOperation;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_12

    .line 543
    :catch_b
    move-exception p1

    .line 544
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_10

    .line 514
    :catch_c
    move-exception p1

    move-object p2, v5

    move v6, v7

    .line 515
    :goto_d
    :try_start_14
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->handleSendException(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    .line 516
    nop

    .line 522
    if-eqz v5, :cond_d

    .line 523
    :try_start_15
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d

    goto :goto_e

    .line 525
    :catch_d
    move-exception p1

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when closing stream after send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothMnsObexClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 527
    :cond_d
    :goto_e
    nop

    .line 529
    :goto_f
    nop

    .line 540
    if-eqz p2, :cond_e

    .line 541
    :try_start_16
    invoke-virtual {p2}, Ljavax/obex/ClientOperation;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    goto :goto_12

    .line 543
    :catch_e
    move-exception p1

    .line 544
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_10
    const-string v0, "Error when closing stream after send "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_11
    const-string p2, "BluetoothMnsObexClient"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    goto :goto_13

    .line 545
    :cond_e
    :goto_12
    nop

    .line 548
    :goto_13
    return v2

    .line 521
    :catchall_4
    move-exception p1

    .line 522
    :goto_14
    if-eqz v5, :cond_f

    .line 523
    :try_start_17
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    goto :goto_15

    .line 525
    :catch_f
    move-exception v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when closing stream after send "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMnsObexClient"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 527
    :cond_f
    :goto_15
    nop

    .line 529
    :goto_16
    if-nez v6, :cond_11

    if-eqz p2, :cond_11

    .line 530
    :try_start_18
    invoke-virtual {p2}, Ljavax/obex/ClientOperation;->getResponseCode()I

    move-result v0

    .line 531
    if-eq v0, v2, :cond_11

    .line 532
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v1, :cond_10

    .line 533
    const-string v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Put response code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_10
    if-eq v0, v4, :cond_11

    .line 536
    const-string v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response error code is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_11
    if-eqz p2, :cond_12

    .line 541
    invoke-virtual {p2}, Ljavax/obex/ClientOperation;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_10

    goto :goto_17

    .line 543
    :catch_10
    move-exception p2

    .line 544
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error when closing stream after send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BluetoothMnsObexClient"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 545
    :cond_12
    :goto_17
    nop

    .line 546
    :goto_18
    throw p1

    .line 444
    :cond_13
    :goto_19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendEvent after disconnect:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMnsObexClient"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return v2
.end method


# virtual methods
.method public connect()V
    .locals 5

    .line 333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 335
    nop

    .line 338
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isValidMnsRecord()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    invoke-virtual {v2}, Landroid/bluetooth/SdpMnsRecord;->getL2capPsm()I

    move-result v2

    if-lez v2, :cond_0

    .line 340
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    invoke-virtual {v3}, Landroid/bluetooth/SdpMnsRecord;->getL2capPsm()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->createL2capSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    goto :goto_0

    .line 342
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isValidMnsRecord()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    invoke-virtual {v2}, Landroid/bluetooth/SdpMnsRecord;->getRfcommChannelNumber()I

    move-result v2

    if-lez v2, :cond_1

    .line 344
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    invoke-virtual {v3}, Landroid/bluetooth/SdpMnsRecord;->getRfcommChannelNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    goto :goto_0

    .line 347
    :cond_1
    const-string v2, "BluetoothMnsObexClient"

    const-string v3, "Invalid SDP content - attempt a connect to UUID..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v3, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    .line 350
    invoke-virtual {v3}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 349
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v2

    .line 352
    :goto_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 358
    nop

    .line 360
    new-instance v3, Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-direct {v3, v2}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    .line 363
    :try_start_1
    new-instance v2, Ljavax/obex/ClientSession;

    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    invoke-direct {v2, v3}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 367
    goto :goto_1

    .line 364
    :catch_0
    move-exception v2

    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBEX session create error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothMnsObexClient"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 368
    :goto_1
    iget-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v2, :cond_3

    .line 369
    nop

    .line 370
    new-instance v2, Ljavax/obex/HeaderSet;

    invoke-direct {v2}, Ljavax/obex/HeaderSet;-><init>()V

    .line 372
    const/16 v3, 0x10

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    .line 390
    const/16 v4, 0x46

    invoke-virtual {v2, v4, v3}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 392
    monitor-enter p0

    .line 393
    :try_start_2
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 394
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 396
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v3, v2}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHsConnect:Ljavax/obex/HeaderSet;

    .line 397
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->D:Z

    if-eqz v2, :cond_2

    .line 398
    const-string v2, "BluetoothMnsObexClient"

    const-string v3, "OBEX session created"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 400
    :cond_2
    nop

    .line 403
    goto :goto_2

    .line 401
    :catch_1
    move-exception v0

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OBEX session connect error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BluetoothMnsObexClient"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 404
    :goto_2
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    goto :goto_3

    .line 394
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 406
    :cond_3
    :goto_3
    monitor-enter p0

    .line 407
    :try_start_5
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mWaitingForRemote:Z

    .line 408
    monitor-exit p0

    .line 409
    return-void

    .line 408
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 353
    :catch_2
    move-exception v0

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BtSocket Connect error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothMnsObexClient"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 356
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 357
    return-void

    nop

    :array_0
    .array-data 1
        -0x45t
        0x58t
        0x2bt
        0x41t
        0x42t
        0xct
        0x11t
        -0x25t
        -0x50t
        -0x22t
        0x8t
        0x0t
        0x20t
        0xct
        -0x66t
        0x66t
    .end array-data
.end method

.method public declared-synchronized disconnect()V
    .locals 5

    monitor-enter p0

    .line 171
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1, v0}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 173
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->D:Z

    if-eqz v1, :cond_0

    .line 174
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "OBEX session disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    goto/16 :goto_3

    .line 177
    :catch_0
    move-exception v1

    .line 178
    :try_start_1
    const-string v2, "BluetoothMnsObexClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBEX session disconnect error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    if-eqz v1, :cond_2

    .line 182
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->D:Z

    if-eqz v1, :cond_1

    .line 183
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "OBEX session close mClientSession"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    .line 186
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mClientSession:Ljavax/obex/ClientSession;

    .line 187
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->D:Z

    if-eqz v1, :cond_2

    .line 188
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "OBEX session closed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    :cond_2
    goto :goto_1

    .line 191
    :catch_1
    move-exception v1

    .line 192
    :try_start_3
    const-string v2, "BluetoothMnsObexClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OBEX session close error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_5

    .line 196
    :try_start_4
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->D:Z

    if-eqz v1, :cond_3

    .line 197
    const-string v1, "BluetoothMnsObexClient"

    const-string v2, "Close Obex Transport"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    invoke-interface {v1}, Ljavax/obex/ObexTransport;->close()V

    .line 200
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mTransport:Ljavax/obex/ObexTransport;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    .line 202
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->D:Z

    if-eqz v0, :cond_4

    .line 203
    const-string v0, "BluetoothMnsObexClient"

    const-string v1, "Obex Transport Closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 207
    :cond_4
    goto :goto_2

    .line 205
    :catch_2
    move-exception v0

    .line 206
    :try_start_5
    const-string v1, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTransport.close error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 209
    :cond_5
    :goto_2
    monitor-exit p0

    return-void

    .line 170
    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public getMessageHandler()Landroid/os/Handler;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public declared-synchronized handleRegistration(II)V
    .locals 4

    monitor-enter p0

    .line 239
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->D:Z

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "BluetoothMnsObexClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleRegistration( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    nop

    .line 243
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRegisteredMasIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 245
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    iget v2, v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastMasId:I

    if-ne v2, p1, :cond_4

    .line 247
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    goto :goto_0

    .line 249
    :cond_1
    if-ne p2, v1, :cond_4

    .line 253
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v2

    if-nez v2, :cond_3

    .line 254
    sget-boolean v2, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->D:Z

    if-eqz v2, :cond_2

    .line 255
    const-string v2, "BluetoothMnsObexClient"

    const-string v3, "handleRegistration: connect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->connect()V

    .line 259
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isConnected()Z

    move-result v2

    .line 260
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRegisteredMasIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 263
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    move v1, v2

    .line 266
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRegisteredMasIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 268
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->D:Z

    if-eqz v0, :cond_5

    .line 269
    const-string v0, "BluetoothMnsObexClient"

    const-string v2, "handleRegistration: disconnect"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_5
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->disconnect()V

    .line 275
    :cond_6
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v0, :cond_7

    .line 276
    const-string v0, "BluetoothMnsObexClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send  registerObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    .line 279
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mCallback:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 280
    const/16 v1, 0x1390

    iput v1, v0, Landroid/os/Message;->what:I

    .line 281
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 282
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 283
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    :cond_8
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isConnected()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mConnected:Z

    return v0
.end method

.method public isValidMnsRecord()Z
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public sendEvent([BI)V
    .locals 3

    .line 418
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 419
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 420
    if-eqz p1, :cond_0

    .line 421
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 424
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->notifyUpdateWakeLock()V

    .line 425
    return-void
.end method

.method public setMnsRecord(Landroid/bluetooth/SdpMnsRecord;)V
    .locals 3

    .line 292
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    const-string v1, "BluetoothMnsObexClient"

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "setMNSRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isValidMnsRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    const-string v0, "MNS Record already available. Still update."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_1
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    .line 299
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    if-eqz p1, :cond_5

    .line 301
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->setIsSearchInProgress(Z)V

    .line 302
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 303
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->isValidMnsRecord()Z

    move-result p1

    if-nez p1, :cond_2

    .line 308
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    goto :goto_0

    .line 310
    :cond_2
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz p1, :cond_3

    .line 311
    const-string p1, "Handle registration for last saved request"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 314
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastMasId:I

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 315
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mMnsLstRegRqst:Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;

    iget v0, v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient$MnsSdpSearchInfo;->lastNotificationStatus:I

    iput v0, p1, Landroid/os/Message;->arg2:I

    .line 316
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz v0, :cond_4

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SearchReg  masId:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " notfStatus: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 322
    goto :goto_0

    .line 325
    :cond_5
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->V:Z

    if-eqz p1, :cond_6

    .line 326
    const-string p1, "No last saved MNSSDPInfo to handle"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_6
    :goto_0
    return-void
.end method

.method public declared-synchronized shutdown()V
    .locals 2

    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->disconnect()V

    .line 230
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->mRegisteredMasIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
