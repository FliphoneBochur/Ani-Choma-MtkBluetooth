.class Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;
.super Landroid/bluetooth/IBluetoothA2dp$Stub;
.source "A2dpService.java"

# interfaces
.implements Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothA2dpBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/a2dp/A2dpService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpService;)V
    .locals 0

    .line 1291
    invoke-direct {p0}, Landroid/bluetooth/IBluetoothA2dp$Stub;-><init>()V

    .line 1292
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 1293
    return-void
.end method

.method private getService()Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 3

    .line 1280
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1281
    const-string v0, "A2dpService"

    const-string v2, "A2DP call not allowed for non-active user"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    return-object v1

    .line 1285
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->access$300(Lcom/android/bluetooth/a2dp/A2dpService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    return-object v0

    .line 1288
    :cond_1
    return-object v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    .line 1297
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->mService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 1298
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 1302
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1303
    if-nez v0, :cond_0

    .line 1304
    const/4 p1, 0x0

    return p1

    .line 1306
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1449
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1450
    if-nez v0, :cond_0

    .line 1451
    return-void

    .line 1453
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 1454
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 1311
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1312
    if-nez v0, :cond_0

    .line 1313
    const/4 p1, 0x0

    return p1

    .line 1315
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 1440
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1441
    if-nez v0, :cond_0

    .line 1442
    return-void

    .line 1444
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 1445
    return-void
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 1356
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1357
    if-nez v0, :cond_0

    .line 1358
    const/4 v0, 0x0

    return-object v0

    .line 1360
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;
    .locals 1

    .line 1421
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1422
    if-nez v0, :cond_0

    .line 1423
    const/4 p1, 0x0

    return-object p1

    .line 1425
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1

    return-object p1
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

    .line 1320
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1321
    if-nez v0, :cond_0

    .line 1322
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 1324
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 1384
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1385
    if-nez v0, :cond_0

    .line 1386
    const/4 p1, -0x1

    return p1

    .line 1388
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1389
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 1338
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1339
    if-nez v0, :cond_0

    .line 1340
    const/4 p1, 0x0

    return p1

    .line 1342
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

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

    .line 1329
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1330
    if-nez v0, :cond_0

    .line 1331
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    return-object p1

    .line 1333
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 1465
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1466
    if-nez v0, :cond_0

    .line 1467
    const/4 p1, -0x1

    return p1

    .line 1469
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 1374
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1375
    if-nez v0, :cond_0

    .line 1376
    const/4 p1, -0x1

    return p1

    .line 1378
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1379
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 1412
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1413
    if-nez v0, :cond_0

    .line 1414
    const/4 p1, 0x0

    return p1

    .line 1416
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public isAvrcpAbsoluteVolumeSupported()Z
    .locals 1

    .line 1394
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1395
    if-nez v0, :cond_0

    .line 1396
    const/4 v0, 0x0

    return v0

    .line 1398
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvrcpAbsoluteVolumeSupported()Z

    move-result v0

    return v0
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 1347
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1348
    if-nez v0, :cond_0

    .line 1349
    const/4 p1, 0x0

    return p1

    .line 1351
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public setAvrcpAbsoluteVolume(I)V
    .locals 1

    .line 1403
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1404
    if-nez v0, :cond_0

    .line 1405
    return-void

    .line 1407
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->setAvrcpAbsoluteVolume(I)V

    .line 1408
    return-void
.end method

.method public setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 1

    .line 1431
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1432
    if-nez v0, :cond_0

    .line 1433
    return-void

    .line 1435
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 1436
    return-void
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 1

    .line 1365
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1366
    if-nez v0, :cond_0

    .line 1367
    const/4 p1, 0x0

    return p1

    .line 1369
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 1473
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1474
    if-nez v0, :cond_0

    .line 1475
    return-void

    .line 1477
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1478
    return-void
.end method

.method public supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 1457
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;->getService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 1458
    if-nez v0, :cond_0

    .line 1459
    const/4 p1, -0x1

    return p1

    .line 1461
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method
