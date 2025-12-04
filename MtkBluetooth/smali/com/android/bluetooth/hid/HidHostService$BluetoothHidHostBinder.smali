.class Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;
.super Landroid/bluetooth/IBluetoothHidHost$Stub;
.source "HidHostService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidHostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BluetoothHidHostBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/hid/HidHostService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hid/HidHostService;)V
    .locals 0

    .line 335
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHidHost$Stub;-><init>()V

    .line 336
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->mService:Lcom/android/bluetooth/hid/HidHostService;

    .line 337
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hid/HidHostService;
    .locals 3

    .line 345
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BluetoothHidHostService"

    if-nez v0, :cond_0

    .line 346
    const-string v0, "InputDevice call not allowed for non-active user"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-object v1

    .line 350
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->mService:Lcom/android/bluetooth/hid/HidHostService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidHostService;->access$2800(Lcom/android/bluetooth/hid/HidHostService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->mService:Lcom/android/bluetooth/hid/HidHostService;

    return-object v0

    .line 353
    :cond_1
    const-string v0, "Service is null"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    return-object v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 341
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->mService:Lcom/android/bluetooth/hid/HidHostService;

    .line 342
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 359
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 360
    if-nez v0, :cond_0

    .line 361
    const/4 p1, 0x0

    return p1

    .line 363
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 364
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 369
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 370
    if-nez v0, :cond_0

    .line 371
    const/4 p1, 0x0

    return p1

    .line 373
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 374
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 389
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 390
    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 393
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 394
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 419
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 420
    if-nez v0, :cond_0

    .line 421
    const/4 p1, -0x1

    return p1

    .line 423
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 424
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 379
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 380
    if-nez v0, :cond_0

    .line 381
    const/4 p1, 0x0

    return p1

    .line 383
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 384
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    .line 399
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 400
    if-nez v0, :cond_0

    .line 401
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 403
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 404
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 501
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 502
    if-nez v0, :cond_0

    .line 503
    const/4 p1, 0x0

    return p1

    .line 505
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 506
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 430
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 431
    if-nez v0, :cond_0

    .line 432
    const/4 p1, 0x0

    return p1

    .line 434
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 435
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .locals 1

    .line 461
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 462
    if-nez v0, :cond_0

    .line 463
    const/4 p1, 0x0

    return p1

    .line 465
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 466
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/hid/HidHostService;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z

    move-result p1

    return p1
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 1

    .line 481
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 482
    if-nez v0, :cond_0

    .line 483
    const/4 p1, 0x0

    return p1

    .line 485
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 486
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 409
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 410
    if-nez v0, :cond_0

    .line 411
    const/4 p1, 0x0

    return p1

    .line 413
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 414
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 1

    .line 491
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 492
    if-nez v0, :cond_0

    .line 493
    const/4 p1, 0x0

    return p1

    .line 495
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 496
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result p1

    return p1
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 450
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 451
    if-nez v0, :cond_0

    .line 452
    const/4 p1, 0x0

    return p1

    .line 454
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 455
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidHostService;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .locals 1

    .line 471
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 472
    if-nez v0, :cond_0

    .line 473
    const/4 p1, 0x0

    return p1

    .line 475
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 476
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidHostService;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 440
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidHostService$BluetoothHidHostBinder;->getService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 441
    if-nez v0, :cond_0

    .line 442
    const/4 p1, 0x0

    return p1

    .line 444
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 445
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method
