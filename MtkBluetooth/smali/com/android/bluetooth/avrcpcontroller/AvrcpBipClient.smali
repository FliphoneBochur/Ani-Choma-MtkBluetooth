.class public Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;
.super Ljava/lang/Object;
.source "AvrcpBipClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$AvrcpBipClientHandler;,
        Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_UUID_AVRCP_COVER_ART:[B

.field private static final CONNECT:I = 0x0

.field private static final DBG:Z

.field private static final DISCONNECT:I = 0x1

.field private static final REFRESH_OBEX_SESSION:I = 0x3

.field private static final REQUEST:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AvrcpBipClient"


# instance fields
.field private final mCallback:Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mHandler:Landroid/os/Handler;

.field private final mPsm:I

.field private mSession:Ljavax/obex/ClientSession;

.field private mSocket:Landroid/bluetooth/BluetoothSocket;

.field private mState:I

.field private final mThread:Landroid/os/HandlerThread;

.field private mTransport:Lcom/android/bluetooth/BluetoothObexTransport;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    const-string v0, "AvrcpBipClient"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->DBG:Z

    .line 52
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->BLUETOOTH_UUID_AVRCP_COVER_ART:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x71t
        0x63t
        -0x23t
        0x54t
        0x4at
        0x7et
        0x11t
        -0x1et
        -0x4ct
        0x7ct
        0x0t
        0x50t
        -0x3et
        0x49t
        0x0t
        0x48t
    .end array-data
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;ILcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mState:I

    .line 124
    if-eqz p1, :cond_1

    .line 127
    if-eqz p3, :cond_0

    .line 131
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 132
    iput p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mPsm:I

    .line 133
    iput-object p3, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mCallback:Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;

    .line 135
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "AvrcpBipClient"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mThread:Landroid/os/HandlerThread;

    .line 136
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 138
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 140
    new-instance p2, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$AvrcpBipClientHandler;

    invoke-direct {p2, p1, p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$AvrcpBipClientHandler;-><init>(Landroid/os/Looper;Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;)V

    iput-object p2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mHandler:Landroid/os/Handler;

    .line 141
    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Callback is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Remote device is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->connect()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->disconnect()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->refreshObexSession()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;Lcom/android/bluetooth/avrcpcontroller/BipRequest;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->executeRequest(Lcom/android/bluetooth/avrcpcontroller/BipRequest;)V

    return-void
.end method

.method private declared-synchronized connect()V
    .locals 3

    monitor-enter p0

    .line 248
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connect using psm: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mPsm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->debug(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    const-string v0, "Already connected"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->warn(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    .line 255
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->setConnectionState(I)V

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mPsm:I

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->createL2capSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 258
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 260
    new-instance v0, Lcom/android/bluetooth/BluetoothObexTransport;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v0, v1}, Lcom/android/bluetooth/BluetoothObexTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mTransport:Lcom/android/bluetooth/BluetoothObexTransport;

    .line 261
    new-instance v0, Ljavax/obex/ClientSession;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mTransport:Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-direct {v0, v1}, Ljavax/obex/ClientSession;-><init>(Ljavax/obex/ObexTransport;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSession:Ljavax/obex/ClientSession;

    .line 263
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    .line 264
    const/16 v1, 0x46

    sget-object v2, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->BLUETOOTH_UUID_AVRCP_COVER_ART:[B

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 266
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1, v0}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v0

    .line 268
    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    .line 269
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->setConnectionState(I)V

    .line 270
    const-string v0, "Connection established"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error connecting, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->disconnect()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    :goto_0
    goto :goto_1

    .line 275
    :catch_0
    move-exception v0

    .line 276
    :try_start_2
    const-string v1, "Exception while connecting to AVRCP BIP server"

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 277
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 279
    :goto_1
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private debug(Ljava/lang/String;)V
    .locals 2

    .line 457
    sget-boolean v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->DBG:Z

    if-eqz v0, :cond_0

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AvrcpBipClient"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    :cond_0
    return-void
.end method

.method private declared-synchronized disconnect()V
    .locals 4

    monitor-enter p0

    .line 324
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSession:Ljavax/obex/ClientSession;

    if-eqz v0, :cond_0

    .line 325
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->setConnectionState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1, v0}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 329
    const-string v1, "Disconnected from OBEX session"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 332
    goto :goto_0

    .line 330
    :catch_0
    move-exception v1

    .line 331
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while disconnecting from AVRCP BIP server: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    :goto_0
    :try_start_3
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1}, Ljavax/obex/ClientSession;->close()V

    .line 336
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mTransport:Lcom/android/bluetooth/BluetoothObexTransport;

    invoke-virtual {v1}, Lcom/android/bluetooth/BluetoothObexTransport;->close()V

    .line 337
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 338
    const-string v1, "Closed underlying session, transport and socket"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->debug(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 341
    goto :goto_1

    .line 339
    :catch_1
    move-exception v1

    .line 340
    :try_start_4
    const-string v2, "Exception while closing AVRCP BIP session: "

    invoke-direct {p0, v2, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    :goto_1
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSession:Ljavax/obex/ClientSession;

    .line 344
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mTransport:Lcom/android/bluetooth/BluetoothObexTransport;

    .line 345
    iput-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSocket:Landroid/bluetooth/BluetoothSocket;

    .line 347
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->setConnectionState(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 348
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private error(Ljava/lang/String;)V
    .locals 2

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AvrcpBipClient"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    return-void
.end method

.method private error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AvrcpBipClient"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    return-void
.end method

.method private executeRequest(Lcom/android/bluetooth/avrcpcontroller/BipRequest;)V
    .locals 2

    .line 351
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot execute request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", we\'re not connected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;)V

    .line 354
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->notifyCaller(Lcom/android/bluetooth/avrcpcontroller/BipRequest;)V

    .line 355
    return-void

    .line 359
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSession:Ljavax/obex/ClientSession;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->execute(Ljavax/obex/ClientSession;)V

    .line 360
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->notifyCaller(Lcom/android/bluetooth/avrcpcontroller/BipRequest;)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Completed request - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    goto :goto_0

    .line 362
    :catch_0
    move-exception v0

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->notifyCaller(Lcom/android/bluetooth/avrcpcontroller/BipRequest;)V

    .line 365
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->disconnect()V

    .line 367
    :goto_0
    return-void
.end method

.method private getStateName()Ljava/lang/String;
    .locals 2

    .line 433
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->getState()I

    move-result v0

    .line 434
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 444
    const-string v0, "Unknown"

    return-object v0

    .line 442
    :cond_0
    const-string v0, "Disconnecting"

    return-object v0

    .line 440
    :cond_1
    const-string v0, "Connected"

    return-object v0

    .line 438
    :cond_2
    const-string v0, "Connecting"

    return-object v0

    .line 436
    :cond_3
    const-string v0, "Disconnected"

    return-object v0
.end method

.method private notifyCaller(Lcom/android/bluetooth/avrcpcontroller/BipRequest;)V
    .locals 4

    .line 370
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->getType()I

    move-result v0

    .line 371
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->getResponseCode()I

    move-result v1

    .line 372
    nop

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Notifying caller of request complete - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/BipRequest;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->debug(Ljava/lang/String;)V

    .line 375
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->getImageHandle()Ljava/lang/String;

    move-result-object v0

    .line 384
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;->getImage()Lcom/android/bluetooth/avrcpcontroller/BipImage;

    move-result-object p1

    .line 385
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mCallback:Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;

    invoke-interface {v2, v1, v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;->onGetImageComplete(ILjava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BipImage;)V

    goto :goto_0

    .line 377
    :cond_1
    check-cast p1, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->getImageHandle()Ljava/lang/String;

    move-result-object v0

    .line 378
    nop

    .line 379
    invoke-virtual {p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;->getImageProperties()Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;

    move-result-object p1

    .line 380
    iget-object v2, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mCallback:Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;

    invoke-interface {v2, v1, v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;->onGetImagePropertiesComplete(ILjava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BipImageProperties;)V

    .line 381
    nop

    .line 388
    :goto_0
    return-void
.end method

.method private declared-synchronized refreshObexSession()V
    .locals 3

    monitor-enter p0

    .line 285
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSession:Ljavax/obex/ClientSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 288
    :cond_0
    const/4 v0, 0x3

    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->setConnectionState(I)V

    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSession:Ljavax/obex/ClientSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/obex/ClientSession;->disconnect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    .line 290
    const-string v0, "Disconnected from OBEX session"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 295
    nop

    .line 298
    const/4 v0, 0x1

    :try_start_2
    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->setConnectionState(I)V

    .line 300
    new-instance v0, Ljavax/obex/HeaderSet;

    invoke-direct {v0}, Ljavax/obex/HeaderSet;-><init>()V

    .line 301
    const/16 v1, 0x46

    sget-object v2, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->BLUETOOTH_UUID_AVRCP_COVER_ART:[B

    invoke-virtual {v0, v1, v2}, Ljavax/obex/HeaderSet;->setHeader(ILjava/lang/Object;)V

    .line 303
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mSession:Ljavax/obex/ClientSession;

    invoke-virtual {v1, v0}, Ljavax/obex/ClientSession;->connect(Ljavax/obex/HeaderSet;)Ljavax/obex/HeaderSet;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Ljavax/obex/HeaderSet;->getResponseCode()I

    move-result v0

    .line 305
    const/16 v1, 0xa0

    if-ne v0, v1, :cond_1

    .line 306
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->setConnectionState(I)V

    .line 307
    const-string v0, "Reconnection established"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error reconnecting, code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;)V

    .line 310
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 315
    :goto_0
    goto :goto_1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    :try_start_3
    const-string v1, "Exception while reconnecting to AVRCP BIP server"

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 314
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->disconnect()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 316
    :goto_1
    monitor-exit p0

    return-void

    .line 291
    :catch_1
    move-exception v0

    .line 292
    :try_start_4
    const-string v1, "Exception while disconnecting from AVRCP BIP server"

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 293
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 294
    monitor-exit p0

    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setConnectionState(I)V
    .locals 2

    .line 234
    nop

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mState:I

    .line 237
    iput p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mState:I

    .line 238
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    if-eq v0, p1, :cond_0

    .line 240
    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mCallback:Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;

    invoke-interface {v1, v0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient$Callback;->onConnectionStateChanged(II)V

    .line 242
    :cond_0
    return-void

    .line 238
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private warn(Ljava/lang/String;)V
    .locals 2

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AvrcpBipClient"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    return-void
.end method


# virtual methods
.method public getImage(Ljava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;)Z
    .locals 1

    .line 221
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;

    invoke-direct {v0, p1, p2}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImage;-><init>(Ljava/lang/String;Lcom/android/bluetooth/avrcpcontroller/BipImageDescriptor;)V

    .line 222
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    .line 223
    if-nez p1, :cond_0

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding messages failed, connection state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->isConnected()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;)V

    .line 225
    const/4 p1, 0x0

    return p1

    .line 227
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getImageProperties(Ljava/lang/String;)Z
    .locals 2

    .line 208
    new-instance v0, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/avrcpcontroller/RequestGetImageProperties;-><init>(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result p1

    .line 210
    if-nez p1, :cond_0

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Adding messages failed, connection state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;)V

    .line 212
    const/4 p1, 0x0

    return p1

    .line 214
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getL2capPsm()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mPsm:I

    return v0
.end method

.method public declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    .line 183
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isConnected()Z
    .locals 2

    .line 192
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public refreshSession()V
    .locals 2

    .line 148
    const-string v0, "Refresh client session"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->debug(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    const-string v0, "Tried to do a reconnect operation on a client that is not connected"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->error(Ljava/lang/String;)V

    .line 151
    return-void

    .line 154
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .line 160
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 158
    return-void
.end method

.method public shutdown()V
    .locals 2

    .line 166
    const-string v0, "Shutdown client"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->debug(Ljava/lang/String;)V

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    nop

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 175
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<AvrcpBipClient device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " psm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->mPsm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-direct {p0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpBipClient;->getStateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    return-object v0
.end method
