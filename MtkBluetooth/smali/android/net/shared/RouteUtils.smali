.class public Landroid/net/shared/RouteUtils;
.super Ljava/lang/Object;
.source "RouteUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/shared/RouteUtils$ModifyOperation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 66
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x63

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 67
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    sget-object v2, Landroid/net/shared/RouteUtils$ModifyOperation;->ADD:Landroid/net/shared/RouteUtils$ModifyOperation;

    invoke-static {p0, v2, v1, v0}, Landroid/net/shared/RouteUtils;->modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    .line 70
    :cond_0
    goto :goto_0

    .line 73
    :cond_1
    sget-object p2, Landroid/net/shared/RouteUtils$ModifyOperation;->ADD:Landroid/net/shared/RouteUtils$ModifyOperation;

    new-instance v0, Landroid/net/RouteInfo;

    new-instance v2, Landroid/net/IpPrefix;

    const-string v3, "fe80::/64"

    invoke-direct {v2, v3}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, p1, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-static {p0, p2, v1, v0}, Landroid/net/shared/RouteUtils;->modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    .line 75
    return-void
.end method

.method private static findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;
    .locals 3

    .line 41
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 p0, 0x7

    if-eq v0, p0, :cond_1

    const/16 p0, 0x9

    if-eq v0, p0, :cond_0

    .line 56
    goto :goto_0

    .line 53
    :cond_0
    nop

    .line 54
    const-string v2, "throw"

    goto :goto_0

    .line 50
    :cond_1
    nop

    .line 51
    const-string v2, "unreachable"

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    invoke-virtual {p0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 46
    :cond_3
    nop

    .line 48
    nop

    .line 59
    :goto_0
    return-object v2
.end method

.method public static modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    .locals 4

    .line 95
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-virtual {p3}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->toString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {p3}, Landroid/net/shared/RouteUtils;->findNextHop(Landroid/net/RouteInfo;)Ljava/lang/String;

    move-result-object p3

    .line 100
    :try_start_0
    sget-object v2, Landroid/net/shared/RouteUtils$1;->$SwitchMap$android$net$shared$RouteUtils$ModifyOperation:[I

    invoke-virtual {p1}, Landroid/net/shared/RouteUtils$ModifyOperation;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 105
    invoke-interface {p0, p2, v0, v1, p3}, Landroid/net/INetd;->networkRemoveRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_0

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported modify operation:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_1
    invoke-interface {p0, p2, v0, v1, p3}, Landroid/net/INetd;->networkAddRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    nop

    .line 112
    :goto_0
    nop

    .line 113
    return-void

    .line 110
    :catch_0
    move-exception p0

    .line 111
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static removeRoutesFromLocalNetwork(Landroid/net/INetd;Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/INetd;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .line 79
    nop

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/RouteInfo;

    .line 83
    :try_start_0
    sget-object v2, Landroid/net/shared/RouteUtils$ModifyOperation;->REMOVE:Landroid/net/shared/RouteUtils$ModifyOperation;

    const/16 v3, 0x63

    invoke-static {p0, v2, v3, v1}, Landroid/net/shared/RouteUtils;->modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_1

    .line 84
    :catch_0
    move-exception v1

    .line 85
    add-int/lit8 v0, v0, 0x1

    .line 87
    :goto_1
    goto :goto_0

    .line 89
    :cond_0
    return v0
.end method
