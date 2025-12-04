.class Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;
.super Landroid/bluetooth/IBluetoothHidDevice$Stub;
.source "HidDeviceService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hid/HidDeviceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothHidDeviceBinder"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/android/bluetooth/hid/HidDeviceService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 280
    const-class v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/hid/HidDeviceService;)V
    .locals 0

    .line 284
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothHidDevice$Stub;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDeviceService;

    .line 286
    return-void
.end method

.method private getService()Lcom/android/bluetooth/hid/HidDeviceService;
    .locals 3

    .line 302
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 303
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string v2, "HidDevice call not allowed for non-active user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    return-object v1

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDeviceService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$1000(Lcom/android/bluetooth/hid/HidDeviceService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDeviceService;

    return-object v0

    .line 311
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDeviceService;

    .line 299
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 388
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 393
    if-nez v0, :cond_1

    .line 394
    const/4 p1, 0x0

    return p1

    .line 397
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 402
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 407
    if-nez v0, :cond_1

    .line 408
    const/4 p1, 0x0

    return p1

    .line 411
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

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

    .line 459
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string v1, "getConnectedDevices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 445
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectionState(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 450
    if-nez v0, :cond_1

    .line 451
    const/4 p1, 0x0

    return p1

    .line 454
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 468
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevicesMatchingConnectionStates(): states="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 474
    if-nez v0, :cond_1

    .line 475
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 478
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getServiceForTesting()Lcom/android/bluetooth/hid/HidDeviceService;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDeviceService;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->access$900(Lcom/android/bluetooth/hid/HidDeviceService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->mService:Lcom/android/bluetooth/hid/HidDeviceService;

    return-object v0

    .line 293
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserAppName()Ljava/lang/String;
    .locals 1

    .line 483
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 484
    if-nez v0, :cond_0

    .line 485
    const-string v0, ""

    return-object v0

    .line 487
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->getUserAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z
    .locals 2

    .line 318
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string v1, "registerApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 323
    if-nez v0, :cond_1

    .line 324
    const/4 p1, 0x0

    return p1

    .line 327
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/hid/HidDeviceService;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z

    move-result p1

    return p1
.end method

.method public replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z
    .locals 3

    .line 360
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "replyReport(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 365
    if-nez v0, :cond_1

    .line 366
    const/4 p1, 0x0

    return p1

    .line 369
    :cond_1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/hid/HidDeviceService;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    move-result p1

    return p1
.end method

.method public reportError(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 3

    .line 431
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportError(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 436
    if-nez v0, :cond_1

    .line 437
    const/4 p1, 0x0

    return p1

    .line 440
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidDeviceService;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result p1

    return p1
.end method

.method public sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    .locals 3

    .line 346
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendReport(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 351
    if-nez v0, :cond_1

    .line 352
    const/4 p1, 0x0

    return p1

    .line 355
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidDeviceService;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z

    move-result p1

    return p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    .line 416
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setConnectionPolicy(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " connectionPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 422
    if-nez v0, :cond_1

    .line 423
    const/4 p1, 0x0

    return p1

    .line 426
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidDeviceService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public unplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 374
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unplug(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 379
    if-nez v0, :cond_1

    .line 380
    const/4 p1, 0x0

    return p1

    .line 383
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->unplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public unregisterApp()Z
    .locals 2

    .line 332
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->TAG:Ljava/lang/String;

    const-string v1, "unregisterApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;->getService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 337
    if-nez v0, :cond_1

    .line 338
    const/4 v0, 0x0

    return v0

    .line 341
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->unregisterApp()Z

    move-result v0

    return v0
.end method
