.class public Landroid/net/netlink/NetlinkMessage;
.super Ljava/lang/Object;
.source "NetlinkMessage.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetlinkMessage"


# instance fields
.field protected mHeader:Landroid/net/netlink/StructNlMsgHdr;


# direct methods
.method public constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    .line 84
    return-void
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;
    .locals 5

    .line 39
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    .line 40
    :cond_0
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v0

    .line 41
    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 42
    return-object v1

    .line 45
    :cond_1
    iget v2, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-static {v2}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v2

    .line 46
    add-int/lit8 v2, v2, -0x10

    .line 47
    if-ltz v2, :cond_8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_0

    .line 53
    :cond_2
    iget-short v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    const/4 v4, 0x3

    if-eq v3, v4, :cond_6

    const/16 v4, 0x14

    if-eq v3, v4, :cond_5

    const/16 v4, 0x44

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    .line 70
    iget-short v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/16 v4, 0xf

    if-gt v3, v4, :cond_3

    .line 73
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 74
    new-instance p0, Landroid/net/netlink/NetlinkMessage;

    invoke-direct {p0, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    return-object p0

    .line 76
    :cond_3
    return-object v1

    .line 64
    :pswitch_0
    invoke-static {v0, p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;

    move-result-object p0

    return-object p0

    .line 68
    :cond_4
    invoke-static {v0, p0}, Landroid/net/netlink/NduseroptMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NduseroptMessage;

    move-result-object p0

    return-object p0

    .line 66
    :cond_5
    invoke-static {v0, p0}, Landroid/net/netlink/InetDiagMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/InetDiagMessage;

    move-result-object p0

    return-object p0

    .line 58
    :cond_6
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    new-instance p0, Landroid/net/netlink/NetlinkMessage;

    invoke-direct {p0, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    return-object p0

    .line 56
    :cond_7
    invoke-static {v0, p0}, Landroid/net/netlink/NetlinkErrorMessage;->parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkErrorMessage;

    move-result-object p0

    return-object p0

    .line 49
    :cond_8
    :goto_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 50
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getHeader()Landroid/net/netlink/StructNlMsgHdr;
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetlinkMessage{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/NetlinkMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
