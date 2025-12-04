.class Lcom/android/bluetooth/mapclient/MapClientService$Binder;
.super Landroid/bluetooth/IBluetoothMapClient$Stub;
.source "MapClientService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/MapClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Binder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/mapclient/MapClientService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/mapclient/MapClientService;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothMapClient$Stub;-><init>()V

    .line 438
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    .line 439
    return-void
.end method

.method private getService()Lcom/android/bluetooth/mapclient/MapClientService;
    .locals 3

    .line 442
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 443
    const-string v0, "MapClientService"

    const-string v2, "MAP call not allowed for non-active user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    return-object v1

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MapClientService;->access$100(Lcom/android/bluetooth/mapclient/MapClientService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/mapclient/MapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    return-object v0

    .line 452
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 457
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    .line 458
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 477
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->getService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    .line 478
    if-nez v0, :cond_0

    .line 479
    const/4 p1, 0x0

    return p1

    .line 481
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 489
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->getService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    .line 490
    if-nez v0, :cond_0

    .line 491
    const/4 p1, 0x0

    return p1

    .line 493
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 501
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->getService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    .line 502
    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 505
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/MapClientService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 543
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->getService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    .line 544
    if-nez v0, :cond_0

    .line 545
    const/4 p1, -0x1

    return p1

    .line 547
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 525
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->getService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    .line 526
    if-nez v0, :cond_0

    .line 527
    const/4 p1, 0x0

    return p1

    .line 529
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->getService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    .line 514
    if-nez v0, :cond_0

    .line 515
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 517
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getSupportedFeatures(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    .line 577
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->getService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    .line 578
    if-nez v0, :cond_0

    .line 583
    const/4 p1, 0x0

    return p1

    .line 585
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/mapclient/MapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getSupportedFeatures(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getUnreadMessages(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 566
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->getService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    .line 567
    if-nez v0, :cond_0

    .line 568
    const/4 p1, 0x0

    return p1

    .line 570
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    const-string v2, "android.permission.READ_SMS"

    const-string v3, "Need READ_SMS permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/mapclient/MapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getUnreadMessages(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 465
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->getService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    .line 466
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 467
    return v1

    .line 469
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 6

    .line 553
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->getService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    .line 554
    if-nez v0, :cond_0

    .line 555
    const/4 p1, 0x0

    return p1

    .line 558
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->mService:Lcom/android/bluetooth/mapclient/MapClientService;

    const-string v2, "android.permission.SEND_SMS"

    const-string v3, "Need SEND_SMS permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/mapclient/MapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/bluetooth/mapclient/MapClientService;->sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    move-result p1

    return p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 534
    invoke-direct {p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;->getService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    .line 535
    if-nez v0, :cond_0

    .line 536
    const/4 p1, 0x0

    return p1

    .line 538
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/mapclient/MapClientService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method
