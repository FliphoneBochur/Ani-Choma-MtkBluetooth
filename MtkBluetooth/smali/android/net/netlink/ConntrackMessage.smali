.class public Landroid/net/netlink/ConntrackMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "ConntrackMessage.java"


# static fields
.field public static final CTA_IP_V4_DST:S = 0x2s

.field public static final CTA_IP_V4_SRC:S = 0x1s

.field public static final CTA_PROTO_DST_PORT:S = 0x3s

.field public static final CTA_PROTO_NUM:S = 0x1s

.field public static final CTA_PROTO_SRC_PORT:S = 0x2s

.field public static final CTA_TIMEOUT:S = 0x7s

.field public static final CTA_TUPLE_IP:S = 0x1s

.field public static final CTA_TUPLE_ORIG:S = 0x1s

.field public static final CTA_TUPLE_PROTO:S = 0x2s

.field public static final CTA_TUPLE_REPLY:S = 0x2s

.field public static final IPCTNL_MSG_CT_NEW:S = 0x0s

.field public static final NFNL_SUBSYS_CTNETLINK:S = 0x1s

.field public static final STRUCT_SIZE:I = 0x14


# instance fields
.field protected mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 101
    new-instance v0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    invoke-direct {p0, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 102
    new-instance v0, Landroid/net/netlink/StructNfGenMsg;

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Landroid/net/netlink/StructNfGenMsg;-><init>(B)V

    iput-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    .line 103
    return-void
.end method

.method public static newIPv4TimeoutUpdateRequest(ILjava/net/Inet4Address;ILjava/net/Inet4Address;II)[B
    .locals 7

    .line 69
    new-instance v0, Landroid/net/netlink/StructNlAttr;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/net/netlink/StructNlAttr;

    new-instance v3, Landroid/net/netlink/StructNlAttr;

    new-array v4, v1, [Landroid/net/netlink/StructNlAttr;

    new-instance v5, Landroid/net/netlink/StructNlAttr;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p1}, Landroid/net/netlink/StructNlAttr;-><init>(SLjava/net/InetAddress;)V

    const/4 p1, 0x0

    aput-object v5, v4, p1

    new-instance v5, Landroid/net/netlink/StructNlAttr;

    invoke-direct {v5, v1, p3}, Landroid/net/netlink/StructNlAttr;-><init>(SLjava/net/InetAddress;)V

    aput-object v5, v4, v6

    invoke-direct {v3, v6, v4}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    aput-object v3, v2, p1

    new-instance p3, Landroid/net/netlink/StructNlAttr;

    const/4 v3, 0x3

    new-array v4, v3, [Landroid/net/netlink/StructNlAttr;

    new-instance v5, Landroid/net/netlink/StructNlAttr;

    int-to-byte p0, p0

    invoke-direct {v5, v6, p0}, Landroid/net/netlink/StructNlAttr;-><init>(SB)V

    aput-object v5, v4, p1

    new-instance p0, Landroid/net/netlink/StructNlAttr;

    int-to-short p1, p2

    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v1, p1, p2}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    aput-object p0, v4, v6

    new-instance p0, Landroid/net/netlink/StructNlAttr;

    int-to-short p1, p4

    sget-object p2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {p0, v3, p1, p2}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    aput-object p0, v4, v1

    invoke-direct {p3, v1, v4}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    aput-object p3, v2, v6

    invoke-direct {v0, v6, v2}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    .line 78
    new-instance p0, Landroid/net/netlink/StructNlAttr;

    sget-object p1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 p2, 0x7

    invoke-direct {p0, p2, p5, p1}, Landroid/net/netlink/StructNlAttr;-><init>(SILjava/nio/ByteOrder;)V

    .line 80
    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result p1

    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result p2

    add-int/2addr p1, p2

    .line 81
    add-int/lit8 p1, p1, 0x14

    new-array p2, p1, [B

    .line 82
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 83
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 85
    new-instance p4, Landroid/net/netlink/ConntrackMessage;

    invoke-direct {p4}, Landroid/net/netlink/ConntrackMessage;-><init>()V

    .line 86
    iget-object p5, p4, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    iput p1, p5, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 87
    iget-object p1, p4, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const/16 p5, 0x100

    iput-short p5, p1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 88
    iget-object p1, p4, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const/16 p5, 0x105

    iput-short p5, p1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 89
    iget-object p1, p4, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    iput v6, p1, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 90
    invoke-virtual {p4, p3}, Landroid/net/netlink/ConntrackMessage;->pack(Ljava/nio/ByteBuffer;)V

    .line 92
    invoke-virtual {v0, p3}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    .line 93
    invoke-virtual {p0, p3}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    .line 95
    return-object p2
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 106
    iget-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 107
    iget-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNfGenMsg;->pack(Ljava/nio/ByteBuffer;)V

    .line 108
    return-void
.end method
