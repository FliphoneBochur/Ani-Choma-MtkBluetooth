.class public Landroid/net/shared/NetdUtils;
.super Ljava/lang/Object;
.source "NetdUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Landroid/net/shared/NetdUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/shared/NetdUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static networkAddInterface(Landroid/net/INetd;Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const/4 v0, 0x1

    :goto_0
    if-gt v0, p2, :cond_1

    .line 79
    const/16 v1, 0x63

    :try_start_0
    invoke-interface {p0, v1, p1}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    return-void

    .line 81
    :catch_0
    move-exception v1

    .line 82
    iget v2, v1, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->EBUSY:I

    if-ne v2, v3, :cond_0

    if-ge v0, p2, :cond_0

    .line 83
    int-to-long v1, p3

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 84
    nop

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 87
    :cond_0
    sget-object p0, Landroid/net/shared/NetdUtils;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Retry Netd#networkAddInterface failure: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    throw v1

    .line 91
    :cond_1
    return-void
.end method

.method public static tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 53
    const/16 v0, 0x14

    const/16 v1, 0x32

    invoke-static {p0, p1, p2, v0, v1}, Landroid/net/shared/NetdUtils;->tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;II)V

    .line 54
    return-void
.end method

.method public static tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 60
    invoke-interface {p0, p1}, Landroid/net/INetd;->tetherInterfaceAdd(Ljava/lang/String;)V

    .line 61
    invoke-static {p0, p1, p3, p4}, Landroid/net/shared/NetdUtils;->networkAddInterface(Landroid/net/INetd;Ljava/lang/String;II)V

    .line 62
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    new-instance p4, Landroid/net/RouteInfo;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p4, p2, v0, p1, v1}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {p0, p1, p3}, Landroid/net/shared/RouteUtils;->addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V

    .line 65
    return-void
.end method

.method public static tetherStart(Landroid/net/INetd;Z[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 44
    new-instance v0, Landroid/net/TetherConfigParcel;

    invoke-direct {v0}, Landroid/net/TetherConfigParcel;-><init>()V

    .line 45
    iput-boolean p1, v0, Landroid/net/TetherConfigParcel;->usingLegacyDnsProxy:Z

    .line 46
    iput-object p2, v0, Landroid/net/TetherConfigParcel;->dhcpRanges:[Ljava/lang/String;

    .line 47
    invoke-interface {p0, v0}, Landroid/net/INetd;->tetherStartWithConfiguration(Landroid/net/TetherConfigParcel;)V

    .line 48
    return-void
.end method

.method public static untetherInterface(Landroid/net/INetd;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 97
    const/16 v0, 0x63

    :try_start_0
    invoke-interface {p0, p1}, Landroid/net/INetd;->tetherInterfaceRemove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 100
    nop

    .line 101
    return-void

    .line 99
    :catchall_0
    move-exception v1

    invoke-interface {p0, v0, p1}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V

    .line 100
    throw v1
.end method
