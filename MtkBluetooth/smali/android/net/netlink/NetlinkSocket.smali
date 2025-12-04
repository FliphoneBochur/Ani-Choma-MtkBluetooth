.class public Landroid/net/netlink/NetlinkSocket;
.super Ljava/lang/Object;
.source "NetlinkSocket.java"


# static fields
.field public static final DEFAULT_RECV_BUFSIZE:I = 0x2000

.field public static final SOCKET_RECV_BUFSIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "NetlinkSocket"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTimeout(J)V
    .locals 2

    .line 117
    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-ltz p0, :cond_0

    .line 120
    return-void

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Negative timeouts not permitted"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static connectToKernel(Ljava/io/FileDescriptor;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/net/util/SocketUtils;->makeNetlinkSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 114
    return-void
.end method

.method public static forProto(I)Ljava/io/FileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 107
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v0, v1, p0}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object p0

    .line 108
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_RCVBUF:I

    const/high16 v2, 0x10000

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 109
    return-object p0
.end method

.method public static recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 130
    invoke-static {p2, p3}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    .line 132
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p2, p3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object p2

    invoke-static {p0, v0, v1, p2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 134
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 135
    invoke-static {p0, p2}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result p0

    .line 136
    if-ne p0, p1, :cond_0

    .line 137
    const-string p1, "NetlinkSocket"

    const-string p3, "maximum read"

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 141
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    return-object p2
.end method

.method public static sendMessage(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 154
    invoke-static {p4, p5}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    .line 155
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p4, p5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object p4

    invoke-static {p0, v0, v1, p4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 156
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result p0

    return p0
.end method

.method public static sendOneShotKernelMessage(I[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 61
    const-string v0, "Error in NetlinkSocket.sendOneShotKernelMessage"

    const-string v1, "NetlinkSocket"

    invoke-static {p0}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object p0

    .line 64
    :try_start_0
    invoke-static {p0}, Landroid/net/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    .line 65
    const/4 v4, 0x0

    array-length v5, p1

    const-wide/16 v6, 0x12c

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    .line 66
    const/16 p1, 0x2000

    const-wide/16 v2, 0x12c

    invoke-static {p0, p1, v2, v3}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    const-string v3, "Error in NetlinkSocket.sendOneShotKernelMessage, errmsg="

    if-eqz v2, :cond_1

    :try_start_1
    instance-of v4, v2, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v4, :cond_1

    move-object v4, v2

    check-cast v4, Landroid/net/netlink/NetlinkErrorMessage;

    .line 70
    invoke-virtual {v4}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 71
    move-object p1, v2

    check-cast p1, Landroid/net/netlink/NetlinkErrorMessage;

    invoke-virtual {p1}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object p1

    iget p1, p1, Landroid/net/netlink/StructNlMsgErr;->error:I
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    if-nez p1, :cond_0

    .line 80
    nop

    .line 99
    :try_start_2
    invoke-static {p0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception p0

    .line 103
    nop

    .line 104
    :goto_0
    return-void

    .line 76
    :cond_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v3, Landroid/system/ErrnoException;

    invoke-virtual {v2}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-direct {v3, v2, p1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 82
    :cond_1
    if-nez v2, :cond_2

    .line 83
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw bytes: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 86
    :cond_2
    invoke-virtual {v2}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v2, Landroid/system/ErrnoException;

    sget v3, Landroid/system/OsConstants;->EPROTO:I

    invoke-direct {v2, p1, v3}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw v2
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 94
    :catch_1
    move-exception p1

    .line 95
    :try_start_4
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    new-instance v1, Landroid/system/ErrnoException;

    sget v2, Landroid/system/OsConstants;->EIO:I

    invoke-direct {v1, v0, v2, p1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 91
    :catch_2
    move-exception p1

    .line 92
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    new-instance v1, Landroid/system/ErrnoException;

    sget v2, Landroid/system/OsConstants;->ETIMEDOUT:I

    invoke-direct {v1, v0, v2, p1}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    :goto_2
    :try_start_5
    invoke-static {p0}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 102
    goto :goto_3

    .line 100
    :catch_3
    move-exception p0

    .line 103
    :goto_3
    throw p1
.end method
