.class public Landroid/net/netlink/StructInetDiagReqV2;
.super Ljava/lang/Object;
.source "StructInetDiagReqV2.java"


# static fields
.field public static final INET_DIAG_REQ_V2_ALL_STATES:I = -0x1

.field public static final STRUCT_SIZE:I = 0x38


# instance fields
.field private final mId:Landroid/net/netlink/StructInetDiagSockId;

.field private final mIdiagExt:B

.field private final mPad:B

.field private final mSdiagFamily:B

.field private final mSdiagProtocol:B

.field private final mState:I


# direct methods
.method public constructor <init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;I)V
    .locals 8

    .line 53
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/netlink/StructInetDiagReqV2;-><init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IIII)V

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    int-to-byte p4, p4

    iput-byte p4, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagFamily:B

    .line 61
    int-to-byte p1, p1

    iput-byte p1, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagProtocol:B

    .line 64
    const/4 p1, 0x1

    const/4 p4, 0x0

    if-nez p2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p4

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move p1, p4

    :goto_1
    if-ne v0, p1, :cond_3

    .line 67
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    new-instance p1, Landroid/net/netlink/StructInetDiagSockId;

    invoke-direct {p1, p2, p3}, Landroid/net/netlink/StructInetDiagSockId;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Landroid/net/netlink/StructInetDiagReqV2;->mId:Landroid/net/netlink/StructInetDiagSockId;

    .line 68
    int-to-byte p1, p5

    iput-byte p1, p0, Landroid/net/netlink/StructInetDiagReqV2;->mPad:B

    .line 69
    int-to-byte p1, p6

    iput-byte p1, p0, Landroid/net/netlink/StructInetDiagReqV2;->mIdiagExt:B

    .line 70
    iput p7, p0, Landroid/net/netlink/StructInetDiagReqV2;->mState:I

    .line 71
    return-void

    .line 65
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Local and remote must be both null or both non-null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 75
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagFamily:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagProtocol:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mIdiagExt:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mPad:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    iget v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mState:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 80
    iget-object v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mId:Landroid/net/netlink/StructInetDiagSockId;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructInetDiagSockId;->pack(Ljava/nio/ByteBuffer;)V

    .line 81
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 85
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagFamily:B

    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    iget-byte v1, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagProtocol:B

    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StructInetDiagReqV2{ sdiag_family{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}, sdiag_protocol{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}, idiag_ext{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mIdiagExt:B

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")}, pad{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mPad:B

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}, idiag_states{"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mState:I

    .line 93
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}, "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mId:Landroid/net/netlink/StructInetDiagSockId;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/netlink/StructInetDiagSockId;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "inet_diag_sockid=null"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    return-object v0
.end method
