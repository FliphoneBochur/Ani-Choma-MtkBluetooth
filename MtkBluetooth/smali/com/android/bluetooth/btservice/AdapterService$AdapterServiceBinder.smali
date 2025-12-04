.class public Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;
.super Landroid/bluetooth/IBluetooth$Stub;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdapterServiceBinder"
.end annotation


# instance fields
.field private mService:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    .line 1141
    invoke-direct {p0}, Landroid/bluetooth/IBluetooth$Stub;-><init>()V

    .line 1142
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 1143
    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$700(Lcom/android/bluetooth/btservice/AdapterService;)V

    .line 1144
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->disableBluetoothGetStateCache()V

    .line 1145
    return-void
.end method


# virtual methods
.method public cancelBondProcess(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 1498
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1499
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "BluetoothAdapterService"

    const-string v3, "cancelBondProcess"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1503
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1505
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 1506
    if-eqz v2, :cond_1

    .line 1507
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setBondingInitiatedLocally(Z)V

    .line 1510
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->addressToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->cancelBondNative([B)Z

    move-result p1

    return p1

    .line 1500
    :cond_2
    :goto_0
    return v1
.end method

.method public cancelDiscovery()Z
    .locals 3

    .line 1394
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1395
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "cancelDiscovery"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1399
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1401
    invoke-static {v0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->access$600(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V

    .line 1402
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1100(Lcom/android/bluetooth/btservice/AdapterService;)Z

    move-result v0

    return v0

    .line 1396
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public cleanup()V
    .locals 1

    .line 1148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 1149
    return-void
.end method

.method public connectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1612
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1613
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "connectAllEnabledProfiles"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1617
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1619
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->connectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1

    .line 1614
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z
    .locals 3

    .line 1486
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1487
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "createBond"

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1491
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1493
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterService;->createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z

    move-result p1

    return p1

    .line 1488
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public disable()Z
    .locals 3

    .line 1185
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1186
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "disable"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1190
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1192
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->disable()Z

    move-result v0

    return v0

    .line 1187
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    .line 1624
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1625
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "BluetoothAdapterService"

    const-string v5, "disconnectAllEnabledProfiles"

    invoke-static {v4, v5}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    xor-int/2addr v1, v4

    or-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 1626
    return v2

    .line 1629
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1631
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    .locals 2

    .line 2243
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2244
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    .line 2245
    if-nez v1, :cond_0

    .line 2246
    return-void

    .line 2249
    :cond_0
    invoke-static {v1}, Lcom/android/bluetooth/Utils;->enforceDumpPermission(Landroid/content/Context;)V

    .line 2251
    invoke-virtual {v1, p1, v0, p2}, Lcom/android/bluetooth/btservice/AdapterService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2252
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 2253
    return-void
.end method

.method public enable(Z)Z
    .locals 3

    .line 1173
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1174
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "enable"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1178
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1180
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->enable(Z)Z

    move-result p1

    return p1

    .line 1175
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public factoryReset()Z
    .locals 2

    .line 1969
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1970
    if-nez v0, :cond_0

    .line 1971
    const/4 v0, 0x0

    return v0

    .line 1974
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1976
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1200(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1977
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1200(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->factoryReset()V

    .line 1980
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2000(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1981
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2000(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->factoryReset()V

    .line 1984
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->factoryResetNative()Z

    move-result v0

    return v0
.end method

.method public fetchRemoteUuids(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1716
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1717
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "fetchRemoteUuids"

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1721
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1723
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->fetchUuids(Landroid/bluetooth/BluetoothDevice;)V

    .line 1724
    const/4 p1, 0x1

    return p1

    .line 1718
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAdapterConnectionState()I
    .locals 1

    .line 1458
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1459
    if-nez v0, :cond_0

    .line 1460
    const/4 v0, 0x0

    return v0

    .line 1463
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1465
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getConnectionState()I

    move-result v0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .line 1197
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1198
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getAddress"

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1202
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1203
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceLocalMacAddressPermission(Landroid/content/Context;)V

    .line 1205
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getAddress()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1199
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBatteryLevel(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    .line 1927
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1928
    const/4 v1, -0x1

    if-eqz v0, :cond_2

    const-string v2, "BluetoothAdapterService"

    const-string v3, "getBatteryLevel"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1932
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1934
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object p1

    .line 1935
    if-nez p1, :cond_1

    .line 1936
    return v1

    .line 1938
    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBatteryLevel()I

    move-result p1

    return p1

    .line 1929
    :cond_2
    :goto_0
    return v1
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 3

    .line 1246
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1247
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getBluetoothClass"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1251
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1253
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    return-object v0

    .line 1248
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBondState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 1537
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1538
    if-nez v0, :cond_0

    .line 1539
    const/16 p1, 0xa

    return p1

    .line 1542
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1544
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 1445
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1446
    if-nez v0, :cond_0

    .line 1447
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/bluetooth/BluetoothDevice;

    return-object v0

    .line 1450
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1452
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 1572
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1573
    if-nez v0, :cond_0

    .line 1574
    const/4 p1, 0x0

    return p1

    .line 1577
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1579
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getDiscoverableTimeout()I
    .locals 3

    .line 1358
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1359
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getDiscoverableTimeout"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1363
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1365
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getDiscoverableTimeout()I

    move-result v0

    return v0

    .line 1360
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDiscoveryEndMillis()J
    .locals 3

    .line 1419
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1420
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getDiscoveryEndMillis"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1424
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1426
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->discoveryEndMillis()J

    move-result-wide v0

    return-wide v0

    .line 1421
    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getIoCapability()I
    .locals 3

    .line 1277
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1278
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getIoCapability"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1282
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1284
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getIoCapability()I

    move-result v0

    return v0

    .line 1279
    :cond_1
    :goto_0
    const/16 v0, 0xff

    return v0
.end method

.method public getLeIoCapability()I
    .locals 3

    .line 1305
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1306
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getLeIoCapability"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1310
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1312
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getLeIoCapability()I

    move-result v0

    return v0

    .line 1307
    :cond_1
    :goto_0
    const/16 v0, 0xff

    return v0
.end method

.method public getLeMaximumAdvertisingDataLength()I
    .locals 1

    .line 2105
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2106
    if-nez v0, :cond_0

    .line 2107
    const/4 v0, 0x0

    return v0

    .line 2110
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 2112
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getLeMaximumAdvertisingDataLength()I

    move-result v0

    return v0
.end method

.method public getMaxConnectedAudioDevices()I
    .locals 1

    .line 1944
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1945
    if-nez v0, :cond_0

    .line 1946
    const/4 v0, 0x1

    return v0

    .line 1949
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1951
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getMaxConnectedAudioDevices()I

    move-result v0

    return v0
.end method

.method public getMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 1851
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1852
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getMessageAccessPermission"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1856
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1858
    const-string v1, "message_access_permission"

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getDeviceAccessFromPrefs(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1853
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getMetadata(Landroid/bluetooth/BluetoothDevice;I)[B
    .locals 3

    .line 2200
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2201
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getMetadata"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2205
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 2207
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1200(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getCustomMeta(Landroid/bluetooth/BluetoothDevice;I)[B

    move-result-object p1

    return-object p1

    .line 2202
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMostRecentlyConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1432
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1433
    if-nez v0, :cond_0

    .line 1434
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 1437
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1439
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1200(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getMostRecentlyConnectedDevices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .line 1222
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1223
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getName"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1227
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1229
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1224
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 1826
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1827
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getPhonebookAccessPermission"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1831
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1833
    const-string v1, "phonebook_access_permission"

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getDeviceAccessFromPrefs(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1828
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getProfileConnectionState(I)I
    .locals 3

    .line 1474
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1475
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getProfileConnectionState"

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1479
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1481
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getProfileConnectionState(I)I

    move-result p1

    return p1

    .line 1476
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getRemoteAlias(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4

    .line 1661
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1662
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteAlias"

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1666
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1668
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object p1

    .line 1669
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getAlias()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    .line 1663
    :cond_2
    :goto_0
    return-object v1
.end method

.method public getRemoteClass(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    .line 1691
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1692
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteClass"

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1696
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1698
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object p1

    .line 1699
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBluetoothClass()I

    move-result v1

    :cond_1
    return v1

    .line 1693
    :cond_2
    :goto_0
    return v1
.end method

.method public getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 3

    .line 1636
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1637
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getRemoteName"

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1641
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1643
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1638
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRemoteType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 4

    .line 1648
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1649
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "BluetoothAdapterService"

    const-string v3, "getRemoteType"

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1653
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1655
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object p1

    .line 1656
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getDeviceType()I

    move-result v1

    :cond_1
    return v1

    .line 1650
    :cond_2
    :goto_0
    return v1
.end method

.method public getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 3

    .line 1704
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1705
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getRemoteUuids"

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1709
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1711
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object p1

    return-object p1

    .line 1706
    :cond_1
    :goto_0
    const/4 p1, 0x0

    new-array p1, p1, [Landroid/os/ParcelUuid;

    return-object p1
.end method

.method public getScanMode()I
    .locals 3

    .line 1333
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1334
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getScanMode"

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1338
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1340
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getScanMode()I

    move-result v0

    return v0

    .line 1335
    :cond_1
    :goto_0
    const/16 v0, 0x14

    return v0
.end method

.method public getService()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$800(Lcom/android/bluetooth/btservice/AdapterService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1153
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object v0

    .line 1155
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSilenceMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1800
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1801
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getSilenceMode"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1805
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1807
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1700(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->getSilenceMode(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1

    .line 1802
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSimAccessPermission(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 1876
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1877
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getSimAccessPermission"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1881
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1883
    const-string v1, "sim_access_permission"

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getDeviceAccessFromPrefs(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 1878
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSocketManager()Landroid/bluetooth/IBluetoothSocketManager;
    .locals 1

    .line 1901
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1902
    if-nez v0, :cond_0

    .line 1903
    const/4 v0, 0x0

    return-object v0

    .line 1906
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1800(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/IBluetoothSocketManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothSocketManager;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 1161
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1162
    if-nez v0, :cond_0

    .line 1163
    const/16 v0, 0xa

    return v0

    .line 1166
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1168
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    return v0
.end method

.method public getSupportedProfiles()J
    .locals 2

    .line 1563
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1564
    if-nez v0, :cond_0

    .line 1565
    const-wide/16 v0, 0x0

    return-wide v0

    .line 1567
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfilesBitMask()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 3

    .line 1210
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1211
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "getUuids"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1215
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1217
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    return-object v0

    .line 1212
    :cond_1
    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public isA2dpOffloadEnabled()Z
    .locals 1

    .line 1957
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1958
    if-nez v0, :cond_0

    .line 1959
    const/4 v0, 0x0

    return v0

    .line 1962
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1964
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isA2dpOffloadEnabled()Z

    move-result v0

    return v0
.end method

.method public isActivityAndEnergyReportingSupported()Z
    .locals 1

    .line 2117
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2118
    if-nez v0, :cond_0

    .line 2119
    const/4 v0, 0x0

    return v0

    .line 2122
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 2124
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isActivityAndEnergyReportingSupported()Z

    move-result v0

    return v0
.end method

.method public isBondingInitiatedLocally(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 1550
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1551
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1552
    return v1

    .line 1555
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1557
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object p1

    .line 1558
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->isBondingInitiatedLocally()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isDiscovering()Z
    .locals 3

    .line 1407
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1408
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "isDiscovering"

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveOrManagedUser(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1412
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1414
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isDiscovering()Z

    move-result v0

    return v0

    .line 1409
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isLe2MPhySupported()Z
    .locals 1

    .line 2057
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2058
    if-nez v0, :cond_0

    .line 2059
    const/4 v0, 0x0

    return v0

    .line 2062
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 2064
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isLe2MPhySupported()Z

    move-result v0

    return v0
.end method

.method public isLeCodedPhySupported()Z
    .locals 1

    .line 2069
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2070
    if-nez v0, :cond_0

    .line 2071
    const/4 v0, 0x0

    return v0

    .line 2074
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 2076
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isLeCodedPhySupported()Z

    move-result v0

    return v0
.end method

.method public isLeExtendedAdvertisingSupported()Z
    .locals 1

    .line 2081
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2082
    if-nez v0, :cond_0

    .line 2083
    const/4 v0, 0x0

    return v0

    .line 2086
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 2088
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isLeExtendedAdvertisingSupported()Z

    move-result v0

    return v0
.end method

.method public isLePeriodicAdvertisingSupported()Z
    .locals 1

    .line 2093
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2094
    if-nez v0, :cond_0

    .line 2095
    const/4 v0, 0x0

    return v0

    .line 2098
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 2100
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isLePeriodicAdvertisingSupported()Z

    move-result v0

    return v0
.end method

.method public isMultiAdvertisementSupported()Z
    .locals 3

    .line 2014
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2015
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2016
    return v1

    .line 2019
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 2021
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getNumOfAdvertisementInstancesSupported()I

    move-result v0

    .line 2022
    const/4 v2, 0x5

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isOffloadedFilteringSupported()Z
    .locals 3

    .line 2031
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2032
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2033
    return v1

    .line 2036
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 2038
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getNumOfOffloadedScanFilterSupported()I

    move-result v0

    .line 2039
    const/16 v2, 0xa

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isOffloadedScanBatchingSupported()Z
    .locals 3

    .line 2044
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2045
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2046
    return v1

    .line 2049
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 2051
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getOffloadedScanResultStorage()I

    move-result v0

    .line 2052
    const/16 v2, 0x400

    if-lt v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onBrEdrDown()V
    .locals 3

    .line 2231
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2232
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "onBrEdrDown"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2236
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 2238
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$500(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterState;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    .line 2239
    return-void

    .line 2233
    :cond_1
    :goto_0
    return-void
.end method

.method public onLeServiceUp()V
    .locals 3

    .line 2219
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2220
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "onLeServiceUp"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2224
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 2226
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$500(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterState;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    .line 2227
    return-void

    .line 2221
    :cond_1
    :goto_0
    return-void
.end method

.method public registerCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 3

    .line 1989
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1990
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "registerCallback"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1994
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1996
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2100(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1997
    return-void

    .line 1991
    :cond_1
    :goto_0
    return-void
.end method

.method public registerMetadataListener(Landroid/bluetooth/IBluetoothMetadataListener;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 2142
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2143
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "BluetoothAdapterService"

    const-string v3, "registerMetadataListener"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2147
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 2149
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2300(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2150
    return v1

    .line 2152
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2300(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2153
    const/4 v2, 0x1

    if-nez v1, :cond_2

    .line 2154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 2155
    :cond_2
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2157
    return v2

    .line 2159
    :cond_3
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2160
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2300(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    return v2

    .line 2144
    :cond_4
    :goto_1
    return v1
.end method

.method public removeActiveDevice(I)Z
    .locals 2

    .line 1584
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1585
    const-string p1, "BluetoothAdapterService"

    const-string v0, "removeActiveDevice() - Not allowed for non-active user"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    return v1

    .line 1589
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1590
    if-nez v0, :cond_1

    .line 1591
    return v1

    .line 1593
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public removeBond(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 1515
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1516
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "BluetoothAdapterService"

    const-string v3, "removeBond"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1520
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1522
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 1523
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 1526
    :cond_1
    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setBondingInitiatedLocally(Z)V

    .line 1528
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1400(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/BondStateMachine;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1529
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1530
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1400(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/BondStateMachine;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1531
    const/4 p1, 0x1

    return p1

    .line 1524
    :cond_2
    :goto_0
    return v1

    .line 1517
    :cond_3
    :goto_1
    return v1
.end method

.method public reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 1

    .line 2129
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2130
    if-nez v0, :cond_0

    .line 2131
    const/4 v0, 0x0

    return-object v0

    .line 2134
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 2136
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2200(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v0

    return-object v0
.end method

.method public requestActivityInfo(Landroid/os/ResultReceiver;)V
    .locals 3

    .line 2212
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2213
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object v1

    const-string v2, "controller_activity"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2214
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 2215
    return-void
.end method

.method public sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)Z
    .locals 4

    .line 1911
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1912
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "BluetoothAdapterService"

    const-string v3, "sdpSearch"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1916
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1918
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1900(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1919
    return v1

    .line 1921
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1900(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/sdp/SdpManager;->sdpSearch(Landroid/bluetooth/BluetoothDevice;Landroid/os/ParcelUuid;)V

    .line 1922
    const/4 p1, 0x1

    return p1

    .line 1913
    :cond_2
    :goto_0
    return v1
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 1598
    invoke-static {}, Lcom/android/bluetooth/Utils;->checkCaller()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1599
    const-string p1, "BluetoothAdapterService"

    const-string p2, "setActiveDevice() - Not allowed for non-active user"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    return v1

    .line 1603
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1604
    if-nez v0, :cond_1

    .line 1605
    return v1

    .line 1607
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result p1

    return p1
.end method

.method public setBluetoothClass(Landroid/bluetooth/BluetoothClass;)Z
    .locals 4

    .line 1258
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1259
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "BluetoothAdapterService"

    const-string v3, "setBluetoothClass"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1263
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1265
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setBluetoothClass(Landroid/bluetooth/BluetoothClass;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1266
    return v1

    .line 1269
    :cond_1
    nop

    .line 1270
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1272
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getClassOfDevice()I

    move-result p1

    .line 1269
    const-string v1, "bluetooth_class_of_device"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1

    .line 1260
    :cond_2
    :goto_0
    return v1
.end method

.method public setDiscoverableTimeout(I)Z
    .locals 3

    .line 1370
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1371
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "setDiscoverableTimeout"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1375
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1377
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z

    move-result p1

    return p1

    .line 1372
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setIoCapability(I)Z
    .locals 4

    .line 1289
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1290
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "BluetoothAdapterService"

    const-string v3, "setIoCapability"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1294
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1296
    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$900(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1297
    return v1

    .line 1300
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setIoCapability(I)Z

    move-result p1

    return p1

    .line 1291
    :cond_2
    :goto_0
    return v1
.end method

.method public setLeIoCapability(I)Z
    .locals 4

    .line 1317
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1318
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "BluetoothAdapterService"

    const-string v3, "setLeIoCapability"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1322
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1324
    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$900(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1325
    return v1

    .line 1328
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setLeIoCapability(I)Z

    move-result p1

    return p1

    .line 1319
    :cond_2
    :goto_0
    return v1
.end method

.method public setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    .line 1863
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1864
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "setMessageAccessPermission"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1868
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1870
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1871
    const/4 p1, 0x1

    return p1

    .line 1865
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setMetadata(Landroid/bluetooth/BluetoothDevice;I[B)Z
    .locals 4

    .line 2185
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2186
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "BluetoothAdapterService"

    const-string v3, "setMetadata"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2190
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 2192
    array-length v2, p3

    const/16 v3, 0x800

    if-le v2, v3, :cond_1

    .line 2193
    return v1

    .line 2195
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1200(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setCustomMeta(Landroid/bluetooth/BluetoothDevice;I[B)Z

    move-result p1

    return p1

    .line 2187
    :cond_2
    :goto_0
    return v1
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 3

    .line 1234
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1235
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "setName"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1239
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1241
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setName(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1236
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPairingConfirmation(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4

    .line 1779
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1780
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPairingConfirmation"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1784
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1786
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 1787
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->isBonding()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1790
    :cond_1
    const/4 v2, 0x5

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/bluetooth/btservice/AdapterService;->logUserBondResponse(Landroid/bluetooth/BluetoothDevice;ZI)V

    .line 1791
    nop

    .line 1792
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->addressToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1791
    invoke-static {v0, p1, v1, p2, v1}, Lcom/android/bluetooth/btservice/AdapterService;->access$1600(Lcom/android/bluetooth/btservice/AdapterService;[BIZI)Z

    move-result p1

    return p1

    .line 1788
    :cond_2
    :goto_0
    return v1

    .line 1781
    :cond_3
    :goto_1
    return v1
.end method

.method public setPasskey(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4

    .line 1753
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1754
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPasskey"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1758
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1760
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 1761
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->isBonding()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1764
    :cond_1
    array-length v2, p4

    const/4 v3, 0x1

    if-eq v2, p3, :cond_2

    .line 1765
    const p1, 0x534e4554

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "139287605"

    aput-object p3, p2, v1

    const/4 p3, -0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v3

    const/4 p3, 0x2

    const-string p4, "Passkey length mismatch"

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1767
    return v1

    .line 1769
    :cond_2
    const/4 p3, 0x5

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterService;->logUserBondResponse(Landroid/bluetooth/BluetoothDevice;ZI)V

    .line 1770
    nop

    .line 1771
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->addressToBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1774
    invoke-static {p4}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result p3

    .line 1770
    invoke-static {v0, p1, v3, p2, p3}, Lcom/android/bluetooth/btservice/AdapterService;->access$1600(Lcom/android/bluetooth/btservice/AdapterService;[BIZI)Z

    move-result p1

    return p1

    .line 1762
    :cond_3
    :goto_0
    return v1

    .line 1755
    :cond_4
    :goto_1
    return v1
.end method

.method public setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    .line 1838
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1839
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "setPhonebookAccessPermission"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1843
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1845
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1846
    const/4 p1, 0x1

    return p1

    .line 1840
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPin(Landroid/bluetooth/BluetoothDevice;ZI[B)Z
    .locals 4

    .line 1730
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1731
    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "BluetoothAdapterService"

    const-string v3, "setPin"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 1735
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1737
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 1739
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->isBondingOrBonded()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 1742
    :cond_1
    array-length v2, p4

    const/4 v3, 0x3

    if-eq v2, p3, :cond_2

    .line 1743
    const p1, 0x534e4554

    new-array p2, v3, [Ljava/lang/Object;

    const-string p3, "139287605"

    aput-object p3, p2, v1

    const/4 p3, 0x1

    const/4 p4, -0x1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p2, p3

    const/4 p3, 0x2

    const-string p4, "PIN code length mismatch"

    aput-object p4, p2, p3

    invoke-static {p1, p2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1745
    return v1

    .line 1747
    :cond_2
    invoke-virtual {v0, p1, p2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->logUserBondResponse(Landroid/bluetooth/BluetoothDevice;ZI)V

    .line 1748
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->addressToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->access$1500(Lcom/android/bluetooth/btservice/AdapterService;[BZI[B)Z

    move-result p1

    return p1

    .line 1740
    :cond_3
    :goto_0
    return v1

    .line 1732
    :cond_4
    :goto_1
    return v1
.end method

.method public setRemoteAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 4

    .line 1674
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1675
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "BluetoothAdapterService"

    const-string v3, "setRemoteAlias"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 1679
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1681
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 1682
    if-nez v0, :cond_1

    .line 1683
    return v1

    .line 1685
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setAlias(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 1686
    const/4 p1, 0x1

    return p1

    .line 1676
    :cond_2
    :goto_0
    return v1
.end method

.method public setScanMode(II)Z
    .locals 3

    .line 1345
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1346
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "setScanMode"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1350
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 1352
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z

    .line 1353
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;

    move-result-object p2

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterService;->access$1000(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    move-result p1

    return p1

    .line 1347
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSilenceMode(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 3

    .line 1813
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1814
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "setSilenceMode"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1818
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1820
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$1700(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->setSilenceMode(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 1821
    const/4 p1, 0x1

    return p1

    .line 1815
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    .line 1888
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1889
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "setSimAccessPermission"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1893
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 1895
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1896
    const/4 p1, 0x1

    return p1

    .line 1890
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public startDiscovery(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 1382
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 1383
    if-eqz v0, :cond_1

    const-string v1, "BluetoothAdapterService"

    const-string v2, "startDiscovery"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1387
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothAdminPermission(Landroid/content/Context;)V

    .line 1389
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->startDiscovery(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 1384
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public unregisterCallback(Landroid/bluetooth/IBluetoothCallback;)V
    .locals 3

    .line 2001
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2002
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2100(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2003
    const-string v1, "BluetoothAdapterService"

    const-string v2, "unregisterCallback"

    invoke-static {v1, v2}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2007
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 2009
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2100(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 2010
    return-void

    .line 2004
    :cond_1
    :goto_0
    return-void
.end method

.method public unregisterMetadataListener(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 2166
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->getService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    .line 2167
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2168
    const-string v2, "BluetoothAdapterService"

    const-string v3, "unregisterMetadataListener"

    invoke-static {v2, v3}, Lcom/android/bluetooth/Utils;->callerIsSystemOrActiveUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 2172
    :cond_0
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPrivilegedPermission(Landroid/content/Context;)V

    .line 2174
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2300(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/HashMap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2175
    return v1

    .line 2177
    :cond_1
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2300(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2178
    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2300(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2180
    :cond_2
    const/4 p1, 0x1

    return p1

    .line 2169
    :cond_3
    :goto_0
    return v1
.end method
