.class public Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "BluetoothTetheringNetworkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;
    }
.end annotation


# static fields
.field private static final NETWORK_SCORE:I = 0x45

.field private static final NETWORK_TYPE:Ljava/lang/String; = "Bluetooth Tethering"

.field private static final TAG:Ljava/lang/String; = "BluetoothTetheringNetworkFactory"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIfaceName:Ljava/lang/String;

.field private mInterfaceName:Ljava/lang/String;

.field private mIpClient:Landroid/net/ip/IIpClient;

.field private mIpClientStartIndex:I

.field private mNetworkAgent:Landroid/net/NetworkAgent;

.field private final mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private final mPanService:Lcom/android/bluetooth/pan/PanService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/bluetooth/pan/PanService;)V
    .locals 2

    .line 70
    new-instance v0, Landroid/net/NetworkCapabilities;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities;-><init>()V

    const-string v1, "Bluetooth Tethering"

    invoke-direct {p0, p2, p1, v1, v0}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 60
    const-string p2, "bt-pan"

    iput-object p2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mIfaceName:Ljava/lang/String;

    .line 64
    const/4 p2, 0x0

    iput p2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mIpClientStartIndex:I

    .line 72
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mPanService:Lcom/android/bluetooth/pan/PanService;

    .line 75
    new-instance p1, Landroid/net/NetworkCapabilities;

    invoke-direct {p1}, Landroid/net/NetworkCapabilities;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 76
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->initNetworkCapabilities()V

    .line 77
    iget-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setCapabilityFilter(Landroid/net/NetworkCapabilities;)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)I
    .locals 0

    .line 51
    iget p0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mIpClientStartIndex:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/ip/IIpClient;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mIpClient:Landroid/net/ip/IIpClient;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkCapabilities;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/ip/IIpClient;)Landroid/net/ip/IIpClient;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mIpClient:Landroid/net/ip/IIpClient;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->onCancelRequest()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/net/NetworkAgent;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Landroid/net/NetworkAgent;)Landroid/net/NetworkAgent;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mInterfaceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->startIpClientLocked()Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->performArpRequestForBt()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->stopIpClientLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private initNetworkCapabilities()V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 259
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 260
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 261
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 262
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 265
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v1, 0x5dc0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 266
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities;

    .line 267
    return-void
.end method

.method private declared-synchronized onCancelRequest()V
    .locals 3

    monitor-enter p0

    .line 214
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->stopIpClientLocked()V

    .line 215
    const-string v0, ""

    iput-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mInterfaceName:Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {v0}, Landroid/net/NetworkAgent;->unregister()V

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mPanService:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v0}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 222
    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mPanService:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    goto :goto_0

    .line 224
    :cond_1
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private performArpRequestForBt()V
    .locals 5

    .line 277
    nop

    .line 278
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 279
    nop

    .line 281
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 283
    new-instance v2, Lcom/android/bluetooth/pan/ArpPeer;

    const-string v3, "bt-pan"

    sget-object v4, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v2, v3, v4, v0}, Lcom/android/bluetooth/pan/ArpPeer;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 285
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/pan/ArpPeer;->doArp(I)[B
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 290
    invoke-virtual {v2}, Lcom/android/bluetooth/pan/ArpPeer;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 286
    :catch_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    .line 290
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 286
    :catch_1
    move-exception v0

    .line 288
    :goto_0
    :try_start_2
    const-string v2, "BluetoothTetheringNetworkFactory"

    const-string v3, "performArpRequestForBt(): meet "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 290
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/bluetooth/pan/ArpPeer;->close()V

    .line 292
    :cond_0
    :goto_1
    return-void

    .line 290
    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/bluetooth/pan/ArpPeer;->close()V

    .line 291
    :cond_1
    throw v0

    :array_0
    .array-data 1
        -0x57t
        -0x2t
        -0x80t
        -0x7et
    .end array-data
.end method

.method private startIpClientLocked()Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;
    .locals 3

    .line 132
    iget v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mIpClientStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mIpClientStartIndex:I

    .line 133
    new-instance v1, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$BtIpClientCallback;-><init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;ILcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;)V

    .line 134
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/net/ip/IpClientUtil;->makeIpClient(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClientCallbacks;)V

    .line 135
    return-object v1
.end method

.method private stopIpClientLocked()V
    .locals 3

    .line 120
    iget v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mIpClientStartIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mIpClientStartIndex:I

    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mIpClient:Landroid/net/ip/IIpClient;

    if-eqz v0, :cond_0

    .line 123
    :try_start_0
    invoke-interface {v0}, Landroid/net/ip/IIpClient;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    const-string v1, "BluetoothTetheringNetworkFactory"

    const-string v2, "Error shutting down IpClient"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mIpClient:Landroid/net/ip/IIpClient;

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method protected startNetwork()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore startNetwork and still keep the current network agent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mNetworkAgent:Landroid/net/NetworkAgent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->log(Ljava/lang/String;)V

    .line 146
    return-void

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory$1;-><init>(Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 202
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 203
    return-void
.end method

.method public startReverseTether(Ljava/lang/String;)V
    .locals 1

    .line 229
    if-eqz p1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    monitor-enter p0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    const-string p1, "BluetoothTetheringNetworkFactory"

    const-string v0, "attempted to reverse tether while already in process"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    monitor-exit p0

    return-void

    .line 238
    :cond_1
    iput-object p1, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mInterfaceName:Ljava/lang/String;

    .line 240
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->register()V

    .line 241
    const/16 p1, 0x45

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setScoreFilter(I)V

    .line 242
    monitor-exit p0

    .line 243
    return-void

    .line 242
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 230
    :cond_2
    :goto_0
    const-string p1, "BluetoothTetheringNetworkFactory"

    const-string v0, "attempted to reverse tether with empty interface"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method protected stopNetwork()V
    .locals 0

    .line 210
    return-void
.end method

.method public declared-synchronized stopReverseTether()V
    .locals 2

    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "BluetoothTetheringNetworkFactory"

    const-string v1, "attempted to stop reverse tether with nothing tethered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 252
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->onCancelRequest()V

    .line 253
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->setScoreFilter(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/BluetoothTetheringNetworkFactory;->terminate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
