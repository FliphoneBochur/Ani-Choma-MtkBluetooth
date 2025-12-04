.class public abstract Landroid/net/networkstack/NetworkStackClientBase;
.super Ljava/lang/Object;
.source "NetworkStackClientBase.java"


# instance fields
.field private mConnector:Landroid/net/INetworkStackConnector;

.field private final mPendingNetStackRequests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Landroid/net/INetworkStackConnector;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 1

    .line 102
    :try_start_0
    invoke-interface {p1, p0}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    nop

    .line 106
    return-void

    .line 103
    :catch_0
    move-exception p0

    .line 104
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Could not fetch IpMemoryStore"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic lambda$makeDhcpServer$0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 0

    .line 57
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    nop

    .line 61
    return-void

    .line 58
    :catch_0
    move-exception p0

    .line 59
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not create DhcpServer"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 0

    .line 72
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    nop

    .line 76
    return-void

    .line 73
    :catch_0
    move-exception p0

    .line 74
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not create IpClient"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method static synthetic lambda$makeNetworkMonitor$2(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 0

    .line 87
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    nop

    .line 91
    return-void

    .line 88
    :catch_0
    move-exception p0

    .line 89
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Could not create NetworkMonitor"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    .locals 1

    .line 100
    new-instance v0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$okdj3YJsErzDSIpQV-9KsxdCYmM;

    invoke-direct {v0, p1}, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$okdj3YJsErzDSIpQV-9KsxdCYmM;-><init>(Landroid/net/IIpMemoryStoreCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    .line 107
    return-void
.end method

.method protected getQueueLength()I
    .locals 2

    .line 157
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 158
    :try_start_0
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 159
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .locals 1

    .line 55
    new-instance v0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$KFueb5ux_Y29dHAgr1C312iTfY8;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$KFueb5ux_Y29dHAgr1C312iTfY8;-><init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    .line 62
    return-void
.end method

.method public makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 1

    .line 70
    new-instance v0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$OwDc2jxNNxij2DwZJOxHrSIkT4w;

    invoke-direct {v0, p1, p2}, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$OwDc2jxNNxij2DwZJOxHrSIkT4w;-><init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    .line 77
    return-void
.end method

.method public makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .locals 1

    .line 85
    new-instance v0, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$xmhbZP7V8GFtCN9z63d8LazFkUM;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/networkstack/-$$Lambda$NetworkStackClientBase$xmhbZP7V8GFtCN9z63d8LazFkUM;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    invoke-virtual {p0, v0}, Landroid/net/networkstack/NetworkStackClientBase;->requestConnector(Ljava/util/function/Consumer;)V

    .line 92
    return-void
.end method

.method protected onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .locals 3

    .line 133
    :goto_0
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 134
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 135
    iget-object v2, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 138
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 139
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 140
    goto :goto_1

    .line 142
    :cond_0
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v1

    .line 143
    :try_start_1
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iput-object p1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mConnector:Landroid/net/INetworkStackConnector;

    .line 146
    monitor-exit v1

    return-void

    .line 148
    :cond_1
    monitor-exit v1

    .line 149
    goto :goto_0

    .line 148
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 136
    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method protected requestConnector(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/INetworkStackConnector;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mConnector:Landroid/net/INetworkStackConnector;

    .line 113
    if-nez v1, :cond_0

    .line 114
    iget-object v1, p0, Landroid/net/networkstack/NetworkStackClientBase;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    monitor-exit v0

    return-void

    .line 117
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 120
    return-void

    .line 117
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
