.class public Landroid/net/TcpKeepalivePacketData;
.super Landroid/net/KeepalivePacketData;
.source "TcpKeepalivePacketData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TcpKeepalivePacketData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IPV4_HEADER_LENGTH:I = 0x14

.field private static final IPV6_HEADER_LENGTH:I = 0x28

.field private static final TAG:Ljava/lang/String; = "TcpKeepalivePacketData"

.field private static final TCP_HEADER_LENGTH:I = 0x14


# instance fields
.field public final ipTos:I

.field public final ipTtl:I

.field public final tcpAck:I

.field public final tcpSeq:I

.field public final tcpWnd:I

.field public final tcpWndScale:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 217
    new-instance v0, Landroid/net/TcpKeepalivePacketData$1;

    invoke-direct {v0}, Landroid/net/TcpKeepalivePacketData$1;-><init>()V

    sput-object v0, Landroid/net/TcpKeepalivePacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/TcpKeepalivePacketDataParcelable;[B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 66
    iget-object v0, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iget v3, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    iget-object v0, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 67
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    iget v5, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 66
    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/net/KeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V

    .line 68
    iget p2, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    iput p2, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    .line 69
    iget p2, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    iput p2, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    .line 71
    iget p2, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    iput p2, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    .line 72
    iget p2, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    iput p2, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    .line 73
    iget p2, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    iput p2, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    .line 74
    iget p1, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    iput p1, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    .line 75
    return-void
.end method

.method private constructor <init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[BIIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 81
    invoke-direct/range {p0 .. p5}, Landroid/net/KeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V

    .line 82
    iput p6, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    .line 83
    iput p7, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    .line 84
    iput p8, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    .line 85
    iput p9, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    .line 86
    iput p10, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    .line 87
    iput p11, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    .line 88
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 37
    invoke-static {p0}, Landroid/net/TcpKeepalivePacketData;->readFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;

    move-result-object p0

    return-object p0
.end method

.method private static buildV4Packet(Landroid/net/TcpKeepalivePacketDataParcelable;)[B
    .locals 4

    .line 119
    const/16 v0, 0x28

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 120
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 121
    const/16 v2, 0x45

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 122
    iget v2, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    int-to-byte v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 123
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 124
    const/16 v0, 0x4000

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 125
    iget v0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 126
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    int-to-byte v0, v0

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 127
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 129
    iget-object v3, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 130
    iget-object v3, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 131
    iget v3, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 132
    iget v3, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 133
    iget v3, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 134
    iget v3, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 135
    const/16 v3, 0x5010

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 136
    iget v3, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    iget p0, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    shr-int p0, v3, p0

    int-to-short p0, p0

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 137
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result p0

    .line 138
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 142
    invoke-static {v1, v2}, Landroid/net/util/IpUtils;->ipChecksum(Ljava/nio/ByteBuffer;I)S

    move-result v3

    invoke-virtual {v1, v0, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 143
    const/16 v0, 0x14

    invoke-static {v1, v2, v0, v0}, Landroid/net/util/IpUtils;->tcpChecksum(Ljava/nio/ByteBuffer;III)S

    move-result v0

    invoke-virtual {v1, p0, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 146
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 202
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    .line 203
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 204
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 205
    invoke-virtual {p0}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 206
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 207
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 208
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 209
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 210
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 211
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 212
    new-instance p0, Landroid/net/TcpKeepalivePacketData;

    move-object v1, p0

    invoke-direct/range {v1 .. v12}, Landroid/net/TcpKeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[BIIIIII)V

    return-object p0
.end method

.method public static tcpKeepalivePacket(Landroid/net/TcpKeepalivePacketDataParcelable;)Landroid/net/TcpKeepalivePacketData;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/InvalidPacketException;
        }
    .end annotation

    .line 97
    const/16 v0, -0x15

    :try_start_0
    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    array-length v1, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    array-length v1, v1

    if-ne v1, v2, :cond_0

    .line 100
    invoke-static {p0}, Landroid/net/TcpKeepalivePacketData;->buildV4Packet(Landroid/net/TcpKeepalivePacketDataParcelable;)[B

    move-result-object v1

    .line 105
    new-instance v2, Landroid/net/TcpKeepalivePacketData;

    invoke-direct {v2, p0, v1}, Landroid/net/TcpKeepalivePacketData;-><init>(Landroid/net/TcpKeepalivePacketDataParcelable;[B)V

    return-object v2

    .line 103
    :cond_0
    new-instance p0, Landroid/net/InvalidPacketException;

    invoke-direct {p0, v0}, Landroid/net/InvalidPacketException;-><init>(I)V

    throw p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :catch_0
    move-exception p0

    .line 107
    new-instance p0, Landroid/net/InvalidPacketException;

    invoke-direct {p0, v0}, Landroid/net/InvalidPacketException;-><init>(I)V

    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 153
    instance-of v0, p1, Landroid/net/TcpKeepalivePacketData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    check-cast p1, Landroid/net/TcpKeepalivePacketData;

    .line 155
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 157
    invoke-virtual {p1}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 160
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    iget v2, p1, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    iget v2, p1, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    iget v2, p1, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    iget v2, p1, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    iget v2, p1, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    iget p1, p1, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 157
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 171
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    .line 172
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 171
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toStableParcelable()Landroid/net/TcpKeepalivePacketDataParcelable;
    .locals 3

    .line 238
    new-instance v0, Landroid/net/TcpKeepalivePacketDataParcelable;

    invoke-direct {v0}, Landroid/net/TcpKeepalivePacketDataParcelable;-><init>()V

    .line 239
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 240
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 241
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    .line 242
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v1

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    .line 243
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 244
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v1

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 245
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 246
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    .line 247
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    .line 248
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    .line 249
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    .line 250
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    .line 251
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " daddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wndScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ttl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 187
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getSrcPort()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getDstPort()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    invoke-virtual {p0}, Landroid/net/TcpKeepalivePacketData;->getPacket()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 192
    iget p2, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget p2, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget p2, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    iget p2, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget p2, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget p2, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    return-void
.end method
