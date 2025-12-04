.class public Landroid/net/ip/IpClientManager;
.super Ljava/lang/Object;
.source "IpClientManager.java"


# instance fields
.field private final mIpClient:Landroid/net/ip/IIpClient;

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/ip/IIpClient;)V
    .locals 1

    .line 54
    const-class v0, Landroid/net/ip/IpClientManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/net/ip/IpClientManager;-><init>(Landroid/net/ip/IIpClient;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/net/ip/IIpClient;Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    .line 50
    iput-object p2, p0, Landroid/net/ip/IpClientManager;->mTag:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 58
    iget-object v0, p0, Landroid/net/ip/IpClientManager;->mTag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    return-void
.end method


# virtual methods
.method public addKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketData;)Z
    .locals 3

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 236
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    .line 237
    invoke-static {p2}, Landroid/net/util/KeepalivePacketDataUtil;->toStableParcelable(Landroid/net/NattKeepalivePacketData;)Landroid/net/NattKeepalivePacketDataParcelable;

    move-result-object p2

    .line 236
    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->addNattKeepalivePacketFilter(ILandroid/net/NattKeepalivePacketDataParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    const/4 p1, 0x1

    .line 243
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 238
    return p1

    .line 243
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 239
    :catch_0
    move-exception p1

    .line 240
    :try_start_1
    const-string p2, "Error adding NAT-T Keepalive Packet Filter "

    invoke-direct {p0, p2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 241
    const/4 p1, 0x0

    .line 243
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 241
    return p1

    .line 243
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    throw p1
.end method

.method public addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketData;)Z
    .locals 3

    .line 218
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 220
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p2}, Landroid/net/TcpKeepalivePacketData;->toStableParcelable()Landroid/net/TcpKeepalivePacketDataParcelable;

    move-result-object p2

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->addKeepalivePacketFilter(ILandroid/net/TcpKeepalivePacketDataParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    const/4 p1, 0x1

    .line 226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 221
    return p1

    .line 226
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 222
    :catch_0
    move-exception p1

    .line 223
    :try_start_1
    const-string p2, "Error adding Keepalive Packet Filter "

    invoke-direct {p0, p2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 224
    const/4 p1, 0x0

    .line 226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    return p1

    .line 226
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    throw p1
.end method

.method public completedPreDhcpAction()Z
    .locals 4

    .line 67
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 69
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->completedPreDhcpAction()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    const/4 v2, 0x1

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 70
    return v2

    .line 75
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 71
    :catch_0
    move-exception v2

    .line 72
    :try_start_1
    const-string v3, "Error completing PreDhcpAction"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    const/4 v2, 0x0

    .line 75
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 73
    return v2

    .line 75
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 76
    throw v2
.end method

.method public confirmConfiguration()Z
    .locals 2

    .line 83
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 85
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v0}, Landroid/net/ip/IIpClient;->confirmConfiguration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    const/4 v0, 0x1

    return v0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    const-string v1, "Error confirming IpClient configuration"

    invoke-direct {p0, v1, v0}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public notifyPreconnectionComplete(Z)Z
    .locals 3

    .line 285
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 287
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->notifyPreconnectionComplete(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    const/4 p1, 0x1

    .line 293
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    return p1

    .line 293
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 289
    :catch_0
    move-exception p1

    .line 290
    :try_start_1
    const-string v2, "Error notifying IpClient Preconnection completed"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 291
    const/4 p1, 0x0

    .line 293
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 291
    return p1

    .line 293
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 294
    throw p1
.end method

.method public readPacketFilterComplete([B)Z
    .locals 3

    .line 97
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 99
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->readPacketFilterComplete([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    const/4 p1, 0x1

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 100
    return p1

    .line 105
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 101
    :catch_0
    move-exception p1

    .line 102
    :try_start_1
    const-string v2, "Error notifying IpClient of packet filter read"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const/4 p1, 0x0

    .line 105
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 103
    return p1

    .line 105
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 106
    throw p1
.end method

.method public removeKeepalivePacketFilter(I)Z
    .locals 3

    .line 251
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 253
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->removeKeepalivePacketFilter(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    const/4 p1, 0x1

    .line 259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 254
    return p1

    .line 259
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 255
    :catch_0
    move-exception p1

    .line 256
    :try_start_1
    const-string v2, "Error removing Keepalive Packet Filter "

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 257
    const/4 p1, 0x0

    .line 259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    return p1

    .line 259
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 260
    throw p1
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)Z
    .locals 3

    .line 185
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 187
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setHttpProxy(Landroid/net/ProxyInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    const/4 p1, 0x1

    .line 193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 188
    return p1

    .line 193
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 189
    :catch_0
    move-exception p1

    .line 190
    :try_start_1
    const-string v2, "Error setting IpClient proxy"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    const/4 p1, 0x0

    .line 193
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 191
    return p1

    .line 193
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 194
    throw p1
.end method

.method public setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 267
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 269
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1, p2}, Landroid/net/ip/IIpClient;->setL2KeyAndGroupHint(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    const/4 p1, 0x1

    .line 275
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 270
    return p1

    .line 275
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 271
    :catch_0
    move-exception p1

    .line 272
    :try_start_1
    const-string p2, "Failed setL2KeyAndGroupHint"

    invoke-direct {p0, p2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    const/4 p1, 0x0

    .line 275
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 273
    return p1

    .line 275
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 276
    throw p1
.end method

.method public setMulticastFilter(Z)Z
    .locals 3

    .line 202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 204
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setMulticastFilter(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    const/4 p1, 0x1

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    return p1

    .line 210
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 206
    :catch_0
    move-exception p1

    .line 207
    :try_start_1
    const-string v2, "Error setting multicast filter"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    const/4 p1, 0x0

    .line 210
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 208
    return p1

    .line 210
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 211
    throw p1
.end method

.method public setTcpBufferSizes(Ljava/lang/String;)Z
    .locals 3

    .line 166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 168
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->setTcpBufferSizes(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const/4 p1, 0x1

    .line 174
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 169
    return p1

    .line 174
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 170
    :catch_0
    move-exception p1

    .line 171
    :try_start_1
    const-string v2, "Error setting IpClient TCP buffer sizes"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    const/4 p1, 0x0

    .line 174
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 172
    return p1

    .line 174
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 175
    throw p1
.end method

.method public shutdown()Z
    .locals 4

    .line 113
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 115
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    const/4 v2, 0x1

    .line 121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 116
    return v2

    .line 121
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 117
    :catch_0
    move-exception v2

    .line 118
    :try_start_1
    const-string v3, "Error shutting down IpClient"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    const/4 v2, 0x0

    .line 121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    return v2

    .line 121
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    throw v2
.end method

.method public startProvisioning(Landroid/net/shared/ProvisioningConfiguration;)Z
    .locals 3

    .line 129
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 131
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p1}, Landroid/net/shared/ProvisioningConfiguration;->toStableParcelable()Landroid/net/ProvisioningConfigurationParcelable;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->startProvisioning(Landroid/net/ProvisioningConfigurationParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const/4 p1, 0x1

    .line 137
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    return p1

    .line 137
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 133
    :catch_0
    move-exception p1

    .line 134
    :try_start_1
    const-string v2, "Error starting IpClient provisioning"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    const/4 p1, 0x0

    .line 137
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    return p1

    .line 137
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    throw p1
.end method

.method public stop()Z
    .locals 4

    .line 147
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 149
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-interface {v2}, Landroid/net/ip/IIpClient;->stop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    const/4 v2, 0x1

    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    return v2

    .line 155
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 151
    :catch_0
    move-exception v2

    .line 152
    :try_start_1
    const-string v3, "Error stopping IpClient"

    invoke-direct {p0, v3, v2}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    const/4 v2, 0x0

    .line 155
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    return v2

    .line 155
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    throw v2
.end method

.method public updateLayer2Information(Landroid/net/shared/Layer2Information;)Z
    .locals 3

    .line 301
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 303
    :try_start_0
    iget-object v2, p0, Landroid/net/ip/IpClientManager;->mIpClient:Landroid/net/ip/IIpClient;

    invoke-virtual {p1}, Landroid/net/shared/Layer2Information;->toStableParcelable()Landroid/net/Layer2InformationParcelable;

    move-result-object p1

    invoke-interface {v2, p1}, Landroid/net/ip/IIpClient;->updateLayer2Information(Landroid/net/Layer2InformationParcelable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    const/4 p1, 0x1

    .line 309
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 304
    return p1

    .line 309
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 305
    :catch_0
    move-exception p1

    .line 306
    :try_start_1
    const-string v2, "Error updating layer2 information"

    invoke-direct {p0, v2, p1}, Landroid/net/ip/IpClientManager;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    const/4 p1, 0x0

    .line 309
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 307
    return p1

    .line 309
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    throw p1
.end method
