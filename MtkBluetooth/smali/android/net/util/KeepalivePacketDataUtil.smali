.class public final Landroid/net/util/KeepalivePacketDataUtil;
.super Ljava/lang/Object;
.source "KeepalivePacketDataUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toStableParcelable(Landroid/net/NattKeepalivePacketData;)Landroid/net/NattKeepalivePacketDataParcelable;
    .locals 3

    .line 33
    new-instance v0, Landroid/net/NattKeepalivePacketDataParcelable;

    invoke-direct {v0}, Landroid/net/NattKeepalivePacketDataParcelable;-><init>()V

    .line 34
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 35
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 36
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/NattKeepalivePacketDataParcelable;->srcAddress:[B

    .line 37
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcPort()I

    move-result v1

    iput v1, v0, Landroid/net/NattKeepalivePacketDataParcelable;->srcPort:I

    .line 38
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/NattKeepalivePacketDataParcelable;->dstAddress:[B

    .line 39
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstPort()I

    move-result p0

    iput p0, v0, Landroid/net/NattKeepalivePacketDataParcelable;->dstPort:I

    .line 40
    return-object v0
.end method
