.class public Landroid/net/netlink/InetDiagMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "InetDiagMessage.java"


# static fields
.field private static final FAMILY:[I

.field public static final TAG:Ljava/lang/String; = "InetDiagMessage"

.field private static final TIMEOUT_MS:I = 0x1f4


# instance fields
.field public mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Landroid/net/netlink/InetDiagMessage;->FAMILY:[I

    return-void
.end method

.method private constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 0

    .line 105
    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 106
    new-instance p1, Landroid/net/netlink/StructInetDiagMsg;

    invoke-direct {p1}, Landroid/net/netlink/StructInetDiagMsg;-><init>()V

    iput-object p1, p0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    .line 107
    return-void
.end method

.method public static InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IS)[B
    .locals 8

    .line 58
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroid/net/netlink/InetDiagMessage;->InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISIII)[B

    move-result-object p0

    return-object p0
.end method

.method public static InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISIII)[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 86
    const/16 v0, 0x48

    new-array v1, v0, [B

    .line 87
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 88
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    new-instance v3, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v3}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    .line 91
    iput v0, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 92
    const/16 v0, 0x14

    iput-short v0, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 93
    move/from16 v0, p4

    iput-short v0, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 94
    invoke-virtual {v3, v2}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 95
    new-instance v0, Landroid/net/netlink/StructInetDiagReqV2;

    move-object v4, v0

    move v5, p0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Landroid/net/netlink/StructInetDiagReqV2;-><init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IIII)V

    .line 98
    invoke-virtual {v0, v2}, Landroid/net/netlink/StructInetDiagReqV2;->pack(Ljava/nio/ByteBuffer;)V

    .line 99
    return-object v1
.end method

.method public static getConnectionOwnerUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I
    .locals 3

    .line 192
    const-string v0, "InetDiagMessage"

    .line 193
    nop

    .line 195
    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/system/OsConstants;->NETLINK_INET_DIAG:I

    invoke-static {v2}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 196
    invoke-static {v1}, Landroid/net/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    .line 197
    invoke-static {p0, p1, p2, v1}, Landroid/net/netlink/InetDiagMessage;->lookupUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/io/FileDescriptor;)I

    move-result p0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    if-eqz v1, :cond_1

    .line 204
    :try_start_1
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :goto_0
    goto :goto_3

    .line 205
    :catch_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    :catchall_0
    move-exception p0

    goto :goto_4

    .line 198
    :catch_1
    move-exception p0

    .line 200
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    if-eqz v1, :cond_0

    .line 204
    :try_start_3
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 207
    :goto_1
    goto :goto_2

    .line 205
    :catch_2
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 210
    :cond_0
    :goto_2
    const/4 p0, -0x1

    :cond_1
    :goto_3
    return p0

    .line 202
    :goto_4
    if-eqz v1, :cond_2

    .line 204
    :try_start_4
    invoke-static {v1}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 207
    goto :goto_5

    .line 205
    :catch_3
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_2
    :goto_5
    throw p0
.end method

.method private static lookupUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/io/FileDescriptor;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 141
    sget-object v0, Landroid/net/netlink/InetDiagMessage;->FAMILY:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, -0x1

    if-ge v3, v1, :cond_2

    aget v8, v0, v3

    .line 147
    sget v5, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p0, v5, :cond_0

    .line 148
    const/4 v9, 0x1

    move v5, p0

    move-object v6, p2

    move-object v7, p1

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v5

    goto :goto_1

    .line 150
    :cond_0
    const/4 v9, 0x1

    move v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v5

    .line 152
    :goto_1
    if-eq v5, v4, :cond_1

    .line 153
    return v5

    .line 141
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_2
    sget p2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p0, p2, :cond_5

    .line 166
    :try_start_0
    new-instance v7, Ljava/net/InetSocketAddress;

    const-string p2, "::"

    .line 167
    invoke-static {p2}, Ljava/net/Inet6Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {v7, p2, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 168
    sget v8, Landroid/system/OsConstants;->AF_INET6:I

    const/16 v9, 0x301

    move v5, p0

    move-object v6, p1

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result p2

    .line 170
    if-eq p2, v4, :cond_3

    .line 171
    return p2

    .line 173
    :cond_3
    new-instance v7, Ljava/net/InetSocketAddress;

    const-string p2, "0.0.0.0"

    invoke-static {p2}, Ljava/net/Inet4Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    invoke-direct {v7, p2, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 174
    sget v8, Landroid/system/OsConstants;->AF_INET:I

    const/16 v9, 0x301

    move v5, p0

    move-object v6, p1

    move-object v10, p3

    invoke-static/range {v5 .. v10}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    if-eq p0, v4, :cond_4

    .line 177
    return p0

    .line 181
    :cond_4
    goto :goto_2

    .line 179
    :catch_0
    move-exception p0

    .line 180
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InetDiagMessage"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_5
    :goto_2
    return v4
.end method

.method private static lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 119
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/netlink/InetDiagMessage;->InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IS)[B

    move-result-object v1

    .line 120
    array-length v3, v1

    const/4 v2, 0x0

    const-wide/16 v4, 0x1f4

    move-object v0, p5

    invoke-static/range {v0 .. v5}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    .line 121
    const/16 p0, 0x2000

    const-wide/16 p1, 0x1f4

    invoke-static {p5, p0, p1, p2}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 123
    invoke-static {p0}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object p1

    .line 125
    iget-short p1, p1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/4 p2, -0x1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    .line 126
    return p2

    .line 128
    :cond_0
    instance-of p1, p0, Landroid/net/netlink/InetDiagMessage;

    if-eqz p1, :cond_1

    .line 129
    check-cast p0, Landroid/net/netlink/InetDiagMessage;

    iget-object p0, p0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    iget p0, p0, Landroid/net/netlink/StructInetDiagMsg;->idiag_uid:I

    return p0

    .line 131
    :cond_1
    return p2
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/InetDiagMessage;
    .locals 1

    .line 110
    new-instance v0, Landroid/net/netlink/InetDiagMessage;

    invoke-direct {v0, p0}, Landroid/net/netlink/InetDiagMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 111
    invoke-static {p1}, Landroid/net/netlink/StructInetDiagMsg;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructInetDiagMsg;

    move-result-object p0

    iput-object p0, v0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    .line 112
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InetDiagMessage{ nlmsghdr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v1, p0, Landroid/net/netlink/InetDiagMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/netlink/InetDiagMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}, inet_diag_msg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/net/netlink/StructInetDiagMsg;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    return-object v0
.end method
