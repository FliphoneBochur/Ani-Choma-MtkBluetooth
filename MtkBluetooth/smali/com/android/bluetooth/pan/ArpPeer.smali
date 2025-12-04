.class public Lcom/android/bluetooth/pan/ArpPeer;
.super Ljava/lang/Object;
.source "ArpPeer.java"


# static fields
.field private static final ARP_LENGTH:I = 0x1c

.field private static final ARP_TYPE:I = 0x806

.field private static final DBG:Z = false

.field private static final ETHERNET_LENGTH:I = 0xe

.field private static final ETHERNET_TYPE:I = 0x1

.field private static final IPV4_LENGTH:I = 0x4

.field private static final L2_BROADCAST:[B

.field private static final MAC_ADDR_LENGTH:I = 0x6

.field private static final MAX_LENGTH:I = 0x5dc

.field private static final PKT_DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArpPeer"


# instance fields
.field private mHwAddr:[B

.field private mIface:Ljava/net/NetworkInterface;

.field private mIfaceName:Ljava/lang/String;

.field private mInterfaceBroadcastAddr:Ljava/net/SocketAddress;

.field private final mMyAddr:Ljava/net/InetAddress;

.field private final mMyMac:[B

.field private final mPeer:Ljava/net/InetAddress;

.field private mSocket:Ljava/io/FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/pan/ArpPeer;->L2_BROADCAST:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/bluetooth/pan/ArpPeer;->mMyMac:[B

    .line 98
    iput-object p1, p0, Lcom/android/bluetooth/pan/ArpPeer;->mIfaceName:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/android/bluetooth/pan/ArpPeer;->mMyAddr:Ljava/net/InetAddress;

    .line 101
    instance-of v0, p2, Ljava/net/Inet6Address;

    if-nez v0, :cond_2

    instance-of v0, p3, Ljava/net/Inet6Address;

    if-nez v0, :cond_2

    .line 105
    iput-object p3, p0, Lcom/android/bluetooth/pan/ArpPeer;->mPeer:Ljava/net/InetAddress;

    .line 108
    invoke-direct {p0}, Lcom/android/bluetooth/pan/ArpPeer;->initInterface()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 111
    invoke-direct {p0}, Lcom/android/bluetooth/pan/ArpPeer;->initSocket()Z

    move-result v0

    if-ne v0, v1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArpPeer in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ArpPeer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void

    .line 112
    :cond_0
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "initSocket() failed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_1
    new-instance p1, Ljava/net/SocketException;

    const-string p2, "initInterface() failed"

    invoke-direct {p1, p2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IPv6 unsupported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static closeQuietly(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 315
    :try_start_0
    invoke-static {p0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 317
    :goto_1
    return-void
.end method

.method public static doArp(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;I)Z
    .locals 1

    .line 259
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/bluetooth/pan/ArpPeer;->doArp(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;II)Z

    move-result p0

    return p0
.end method

.method public static doArp(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;II)Z
    .locals 4

    .line 274
    const-string v0, "ArpPeer"

    .line 275
    nop

    .line 277
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pan/ArpPeer;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/bluetooth/pan/ArpPeer;-><init>(Ljava/lang/String;Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    nop

    .line 279
    move p0, v1

    move p1, p0

    :goto_0
    if-ge p0, p4, :cond_1

    .line 280
    :try_start_1
    invoke-virtual {v3, p3}, Lcom/android/bluetooth/pan/ArpPeer;->doArp(I)[B

    move-result-object p2

    if-eqz p2, :cond_0

    .line 281
    add-int/lit8 p1, p1, 0x1

    .line 279
    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 295
    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_5

    .line 292
    :catch_0
    move-exception p0

    move-object v2, v3

    goto :goto_1

    .line 288
    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_2

    .line 284
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ARP test result: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    if-ne p1, p4, :cond_2

    .line 286
    nop

    .line 295
    nop

    .line 296
    invoke-virtual {v3}, Lcom/android/bluetooth/pan/ArpPeer;->close()V

    .line 286
    const/4 p0, 0x1

    return p0

    .line 295
    :cond_2
    nop

    .line 296
    invoke-virtual {v3}, Lcom/android/bluetooth/pan/ArpPeer;->close()V

    goto :goto_4

    .line 295
    :catchall_1
    move-exception p0

    goto :goto_5

    .line 292
    :catch_2
    move-exception p0

    .line 293
    :goto_1
    :try_start_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exception:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    if-eqz v2, :cond_3

    .line 296
    goto :goto_3

    .line 288
    :catch_3
    move-exception p0

    .line 291
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ARP test initiation failure: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 295
    if-eqz v2, :cond_3

    .line 296
    :goto_3
    invoke-virtual {v2}, Lcom/android/bluetooth/pan/ArpPeer;->close()V

    .line 299
    :cond_3
    :goto_4
    return v1

    .line 295
    :goto_5
    if-eqz v2, :cond_4

    .line 296
    invoke-virtual {v2}, Lcom/android/bluetooth/pan/ArpPeer;->close()V

    .line 298
    :cond_4
    throw p0
.end method

.method private initInterface()Z
    .locals 4

    .line 121
    const-string v0, "ArpPeer"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pan/ArpPeer;->mIfaceName:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/pan/ArpPeer;->mIface:Ljava/net/NetworkInterface;

    .line 124
    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/pan/ArpPeer;->mHwAddr:[B

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mac addr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/pan/ArpPeer;->mHwAddr:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/pan/ArpPeer;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v2, p0, Lcom/android/bluetooth/pan/ArpPeer;->mIface:Ljava/net/NetworkInterface;

    invoke-virtual {v2}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v2

    sget-object v3, Lcom/android/bluetooth/pan/ArpPeer;->L2_BROADCAST:[B

    invoke-static {v2, v3}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(I[B)Ljava/net/SocketAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/pan/ArpPeer;->mInterfaceBroadcastAddr:Ljava/net/SocketAddress;

    .line 137
    nop

    .line 138
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIface is null for name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/pan/ArpPeer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    return v1

    .line 134
    :catch_0
    move-exception v2

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t determine ifindex or MAC address for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/pan/ArpPeer;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v1
.end method

.method private initSocket()Z
    .locals 3

    .line 143
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_PACKET:I

    sget v1, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v2, Landroid/system/OsConstants;->ETH_P_ARP:I

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/pan/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    .line 144
    sget v0, Landroid/system/OsConstants;->ETH_P_ARP:I

    int-to-short v0, v0

    iget-object v1, p0, Lcom/android/bluetooth/pan/ArpPeer;->mIface:Ljava/net/NetworkInterface;

    .line 145
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v1

    .line 144
    invoke-static {v0, v1}, Landroid/net/util/SocketUtils;->makePacketSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/android/bluetooth/pan/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v1, v0}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    nop

    .line 151
    const/4 v0, 0x1

    return v0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    const-string v1, "ArpPeer"

    const-string v2, "Error creating packet socket"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 306
    const-string v0, "ArpPeer"

    const-string v1, "Close arp"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/bluetooth/pan/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Lcom/android/bluetooth/pan/ArpPeer;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pan/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    .line 311
    return-void
.end method

.method public doArp(I)[B
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 161
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0x5dc

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 162
    iget-object v4, v0, Lcom/android/bluetooth/pan/ArpPeer;->mPeer:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "My MAC:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/bluetooth/pan/ArpPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v6}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ArpPeer"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    int-to-long v9, v1

    add-long/2addr v7, v9

    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doArp in "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 171
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 174
    sget-object v1, Lcom/android/bluetooth/pan/ArpPeer;->L2_BROADCAST:[B

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 175
    iget-object v1, v0, Lcom/android/bluetooth/pan/ArpPeer;->mHwAddr:[B

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 176
    const/16 v1, 0x806

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 178
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 179
    sget v5, Landroid/system/OsConstants;->ETH_P_IP:I

    int-to-short v5, v5

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 180
    const/4 v5, 0x6

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 181
    const/4 v9, 0x4

    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 182
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 183
    iget-object v10, v0, Lcom/android/bluetooth/pan/ArpPeer;->mHwAddr:[B

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 184
    iget-object v10, v0, Lcom/android/bluetooth/pan/ArpPeer;->mMyAddr:Ljava/net/InetAddress;

    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 185
    new-array v10, v5, [B

    invoke-virtual {v3, v10}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 186
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 187
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 190
    :try_start_0
    iget-object v11, v0, Lcom/android/bluetooth/pan/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v14

    const/4 v15, 0x0

    iget-object v3, v0, Lcom/android/bluetooth/pan/ArpPeer;->mInterfaceBroadcastAddr:Ljava/net/SocketAddress;

    move-object/from16 v16, v3

    invoke-static/range {v11 .. v16}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 196
    nop

    .line 198
    new-array v3, v2, [B

    .line 200
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    cmp-long v11, v11, v7

    if-gez v11, :cond_1

    .line 201
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v11, v7, v11

    .line 202
    invoke-static {v11, v12}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v13

    .line 203
    iget-object v14, v0, Lcom/android/bluetooth/pan/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    sget v15, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v10, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {v14, v15, v10, v13}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 204
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Wait ARP reply in "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    nop

    .line 208
    :try_start_1
    iget-object v10, v0, Lcom/android/bluetooth/pan/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    const/4 v11, 0x0

    invoke-static {v10, v3, v11, v2}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v10

    .line 209
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "readLen: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    nop

    .line 220
    const/16 v12, 0x2a

    if-lt v10, v12, :cond_0

    .line 221
    const/16 v10, 0x1c

    new-array v12, v10, [B

    .line 223
    const/16 v13, 0xe

    invoke-static {v3, v13, v12, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    aget-byte v10, v12, v11

    if-nez v10, :cond_0

    aget-byte v10, v12, v1

    if-ne v10, v1, :cond_0

    const/4 v10, 0x2

    aget-byte v14, v12, v10

    const/16 v15, 0x8

    if-ne v14, v15, :cond_0

    const/4 v14, 0x3

    aget-byte v16, v12, v14

    if-nez v16, :cond_0

    aget-byte v2, v12, v9

    if-ne v2, v5, :cond_0

    const/4 v2, 0x5

    aget-byte v2, v12, v2

    if-ne v2, v9, :cond_0

    aget-byte v2, v12, v5

    if-nez v2, :cond_0

    const/4 v2, 0x7

    aget-byte v2, v12, v2

    if-ne v2, v10, :cond_0

    aget-byte v2, v12, v13

    aget-byte v13, v4, v11

    if-ne v2, v13, :cond_0

    const/16 v2, 0xf

    aget-byte v2, v12, v2

    aget-byte v13, v4, v1

    if-ne v2, v13, :cond_0

    const/16 v2, 0x10

    aget-byte v2, v12, v2

    aget-byte v10, v4, v10

    if-ne v2, v10, :cond_0

    const/16 v2, 0x11

    aget-byte v2, v12, v2

    aget-byte v10, v4, v14

    if-ne v2, v10, :cond_0

    .line 238
    new-array v0, v5, [B

    .line 239
    invoke-static {v12, v15, v0, v11, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "target mac addr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-object v0

    .line 244
    :cond_0
    const/16 v2, 0x5dc

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARP read failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v1, 0x0

    return-object v1

    .line 246
    :cond_1
    const/4 v1, 0x0

    return-object v1

    .line 191
    :catch_1
    move-exception v0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARP send failure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    const/4 v1, 0x0

    return-object v1
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 323
    const-string v0, "ArpPeer"

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pan/ArpPeer;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    .line 324
    const-string v1, "ArpPeer socket was finalized without closing"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Lcom/android/bluetooth/pan/ArpPeer;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 331
    goto :goto_1

    .line 330
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 327
    :catch_0
    move-exception v1

    .line 328
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "finalize() exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 332
    :goto_1
    return-void

    .line 330
    :goto_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 331
    throw v0
.end method
