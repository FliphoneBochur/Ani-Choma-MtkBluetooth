.class Landroid/net/INetworkMonitor$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetworkMonitor.java"

# interfaces
.implements Landroid/net/INetworkMonitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkMonitor$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/INetworkMonitor;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I

    .line 238
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 235
    iput-object p1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 236
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 241
    iget-object v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public forceReevaluation(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 312
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 315
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 316
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->forceReevaluation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 321
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    return-void

    .line 321
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 322
    nop

    .line 323
    return-void

    .line 321
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 322
    throw p1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .line 245
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 474
    :try_start_0
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 478
    :try_start_1
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 479
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 480
    if-nez v2, :cond_0

    .line 481
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 482
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->getInterfaceHash()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    :try_start_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 482
    monitor-exit p0

    return-object v2

    .line 485
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 486
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 488
    :try_start_4
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    goto :goto_0

    .line 488
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 489
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 490
    throw v2

    .line 492
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return-object v0

    .line 473
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    iget v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 453
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 454
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 456
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 457
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 458
    if-nez v2, :cond_0

    .line 459
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 460
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetworkMonitor;->getInterfaceVersion()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    return v2

    .line 463
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 464
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    goto :goto_0

    .line 466
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    throw v2

    .line 470
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public launchCaptivePortalApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 264
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 266
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 268
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 269
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkMonitor;->launchCaptivePortalApp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    return-void

    .line 274
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    nop

    .line 276
    return-void

    .line 274
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    throw v1
.end method

.method public notifyCaptivePortalAppFinished(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 281
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 284
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 285
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->notifyCaptivePortalAppFinished(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    return-void

    .line 290
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    nop

    .line 292
    return-void

    .line 290
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 291
    throw p1
.end method

.method public notifyDnsResponse(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 350
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 353
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 354
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->notifyDnsResponse(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 355
    return-void

    .line 359
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    nop

    .line 361
    return-void

    .line 359
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 360
    throw p1
.end method

.method public notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 410
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 411
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 412
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 413
    invoke-virtual {p1, v0, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 416
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 418
    :goto_0
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 419
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 420
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->notifyLinkPropertiesChanged(Landroid/net/LinkProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    return-void

    .line 425
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    nop

    .line 427
    return-void

    .line 425
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 426
    throw p1
.end method

.method public notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 432
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 433
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 434
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 435
    invoke-virtual {p1, v0, v2}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 438
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 440
    :goto_0
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 441
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 442
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->notifyNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 443
    return-void

    .line 447
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    nop

    .line 449
    return-void

    .line 447
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    throw p1
.end method

.method public notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 366
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    invoke-virtual {p1, v0, v2}, Landroid/net/LinkProperties;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    :goto_0
    if-eqz p2, :cond_1

    .line 375
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 376
    invoke-virtual {p2, v0, v2}, Landroid/net/NetworkCapabilities;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 379
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 381
    :goto_1
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 382
    if-nez v1, :cond_2

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 383
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/net/INetworkMonitor;->notifyNetworkConnected(Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 384
    return-void

    .line 388
    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    nop

    .line 390
    return-void

    .line 388
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    throw p1
.end method

.method public notifyNetworkDisconnected()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 395
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 397
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 398
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkMonitor;->notifyNetworkDisconnected()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    return-void

    .line 403
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 404
    nop

    .line 405
    return-void

    .line 403
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 404
    throw v1
.end method

.method public notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 328
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 329
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 330
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 331
    invoke-virtual {p1, v0, v2}, Landroid/net/PrivateDnsConfigParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 334
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    :goto_0
    iget-object v2, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 337
    if-nez v1, :cond_1

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 338
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/net/INetworkMonitor;->notifyPrivateDnsChanged(Landroid/net/PrivateDnsConfigParcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 339
    return-void

    .line 343
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    nop

    .line 345
    return-void

    .line 343
    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    throw p1
.end method

.method public setAcceptPartialConnectivity()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 297
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 298
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 299
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 300
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkMonitor;->setAcceptPartialConnectivity()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    return-void

    .line 305
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    nop

    .line 307
    return-void

    .line 305
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    throw v1
.end method

.method public start()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 251
    :try_start_0
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Landroid/net/INetworkMonitor$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 253
    if-nez v1, :cond_0

    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 254
    invoke-static {}, Landroid/net/INetworkMonitor$Stub;->getDefaultImpl()Landroid/net/INetworkMonitor;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkMonitor;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    return-void

    .line 259
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    nop

    .line 261
    return-void

    .line 259
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    throw v1
.end method
