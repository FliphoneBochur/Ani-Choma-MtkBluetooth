.class Landroid/net/TcpKeepalivePacketData$1;
.super Ljava/lang/Object;
.source "TcpKeepalivePacketData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/TcpKeepalivePacketData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/TcpKeepalivePacketData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;
    .locals 3

    .line 221
    :try_start_0
    invoke-static {p1}, Landroid/net/TcpKeepalivePacketData;->access$000(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;

    move-result-object p1
    :try_end_0
    .catch Landroid/net/InvalidPacketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 222
    :catch_0
    move-exception p1

    .line 223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid NAT-T keepalive data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p1}, Landroid/net/InvalidPacketException;->getError()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 218
    invoke-virtual {p0, p1}, Landroid/net/TcpKeepalivePacketData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/TcpKeepalivePacketData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/net/TcpKeepalivePacketData;
    .locals 0

    .line 229
    new-array p1, p1, [Landroid/net/TcpKeepalivePacketData;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 218
    invoke-virtual {p0, p1}, Landroid/net/TcpKeepalivePacketData$1;->newArray(I)[Landroid/net/TcpKeepalivePacketData;

    move-result-object p1

    return-object p1
.end method
