.class public Lcom/android/bluetooth/gatt/GattService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "GattService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;,
        Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;,
        Lcom/android/bluetooth/gatt/GattService$ServerMap;,
        Lcom/android/bluetooth/gatt/GattService$ClientMap;,
        Lcom/android/bluetooth/gatt/GattService$ScannerMap;,
        Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;
    }
.end annotation


# static fields
.field private static final ADVT_STATE_ONFOUND:I = 0x0

.field private static final ADVT_STATE_ONLOST:I = 0x1

.field private static final ANDROID_TV_REMOTE_SERVICE_UUID:Ljava/util/UUID;

.field private static final DBG:Z

.field private static final ET_LEGACY_MASK:I = 0x10

.field private static final EXPOSURE_NOTIFICATION_FLAGS_LENGTH:I = 0x3

.field private static final EXPOSURE_NOTIFICATION_FLAGS_PREAMBLE:[B

.field private static final EXPOSURE_NOTIFICATION_PAYLOAD_LENGTH:I = 0x1c

.field private static final EXPOSURE_NOTIFICATION_PAYLOAD_PREAMBLE:[B

.field private static final FIDO_SERVICE_UUID:Ljava/util/UUID;

.field private static final HID_SERVICE_UUID:Ljava/util/UUID;

.field private static final HID_UUIDS:[Ljava/util/UUID;

.field private static final MAC_ADDRESS_LENGTH:I = 0x6

.field private static final NUM_SCAN_EVENTS_KEPT:I = 0x14

.field static final SCAN_FILTER_ENABLED:I = 0x1

.field static final SCAN_FILTER_MODIFIED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BtGatt.GattService"

.field private static final TIME_STAMP_LENGTH:I = 0x2

.field private static final TRUNCATED_RESULT_SIZE:I = 0xb

.field private static final VDBG:Z

.field private static sGattService:Lcom/android/bluetooth/gatt/GattService;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

.field private mAdvertisingServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOps:Landroid/app/AppOpsManager;

.field mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

.field private mCompanionManager:Landroid/companion/ICompanionDeviceManager;

.field private mExposureNotificationPackage:Ljava/lang/String;

.field mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

.field private mMaxScanFilters:I

.field private mPeriodicScanManager:Lcom/android/bluetooth/gatt/PeriodicScanManager;

.field private mReliableQueue:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestrictedHandles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mScanEvents:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

.field mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

.field mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 89
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->DBG:Z

    sput-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    .line 90
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->VDBG:Z

    sput-boolean v0, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    .line 107
    nop

    .line 108
    const-string v0, "00001812-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/gatt/GattService;->HID_SERVICE_UUID:Ljava/util/UUID;

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/UUID;

    .line 111
    const-string v1, "00002A4A-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 112
    const-string v1, "00002A4B-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 113
    const-string v1, "00002A4C-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 114
    const-string v1, "00002A4D-0000-1000-8000-00805F9B34FB"

    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/bluetooth/gatt/GattService;->HID_UUIDS:[Ljava/util/UUID;

    .line 117
    nop

    .line 118
    const-string v0, "AB5E0001-5A21-4F05-BC7D-AF01F617B664"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/gatt/GattService;->ANDROID_TV_REMOTE_SERVICE_UUID:Ljava/util/UUID;

    .line 120
    nop

    .line 121
    const-string v0, "0000FFFD-0000-1000-8000-00805F9B34FB"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/gatt/GattService;->FIDO_SERVICE_UUID:Ljava/util/UUID;

    .line 199
    invoke-static {}, Lcom/android/bluetooth/gatt/GattService;->classInitNative()V

    .line 1030
    new-array v0, v2, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/gatt/GattService;->EXPOSURE_NOTIFICATION_FLAGS_PREAMBLE:[B

    .line 1035
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/bluetooth/gatt/GattService;->EXPOSURE_NOTIFICATION_PAYLOAD_PREAMBLE:[B

    return-void

    :array_0
    .array-data 1
        0x2t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3t
        0x3t
        0x6ft
        -0x3t
        0x17t
        0x16t
        0x6ft
        -0x3t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 88
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 146
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    .line 153
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    .line 160
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    .line 165
    new-instance v0, Lcom/android/bluetooth/gatt/HandleMap;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/HandleMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayDeque;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mRestrictedHandles:Ljava/util/Map;

    .line 196
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 88
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ScanManager;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/gatt/GattService;)Z
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/gatt/GattService;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetGattDbNative(I)V

    return-void
.end method

.method private static arrayStartsWith([B[B)Z
    .locals 4

    .line 1045
    array-length v0, p0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 1046
    return v2

    .line 1048
    :cond_0
    move v0, v2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1049
    aget-byte v1, p1, v0

    aget-byte v3, p0, v0

    if-eq v1, v3, :cond_1

    .line 1050
    return v2

    .line 1048
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1053
    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private deleteServices(I)V
    .locals 5

    .line 3404
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 3405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteServices() - serverIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3412
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3413
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 3414
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 3415
    iget v3, v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget v3, v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-eq v3, p1, :cond_2

    .line 3416
    goto :goto_0

    .line 3418
    :cond_2
    iget v2, v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3419
    goto :goto_0

    .line 3422
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3423
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    .line 3424
    goto :goto_1

    .line 3425
    :cond_4
    return-void
.end method

.method private deliverBatchScan(Lcom/android/bluetooth/gatt/ScanClient;Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            "Ljava/util/Set<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1780
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    iget v1, p1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1781
    if-nez v0, :cond_0

    .line 1782
    return-void

    .line 1786
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->hasScanResultPermission(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1787
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 1789
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1790
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 1791
    iget-object v3, p1, Lcom/android/bluetooth/gatt/ScanClient;->associatedDevices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1792
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1793
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    :cond_2
    goto :goto_1

    .line 1796
    :cond_3
    goto :goto_0

    .line 1797
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1798
    return-void

    .line 1802
    :cond_5
    :goto_2
    iget-object p2, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 1803
    :cond_6
    invoke-direct {p0, v0, p1, v1}, Lcom/android/bluetooth/gatt/GattService;->sendBatchScanResults(Lcom/android/bluetooth/gatt/ContextMap$App;Lcom/android/bluetooth/gatt/ScanClient;Ljava/util/ArrayList;)V

    .line 1807
    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1808
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanResult;

    .line 1809
    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/gatt/GattService;->matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1810
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1812
    :cond_8
    goto :goto_3

    .line 1813
    :cond_9
    invoke-direct {p0, v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->sendBatchScanResults(Lcom/android/bluetooth/gatt/ContextMap$App;Lcom/android/bluetooth/gatt/ScanClient;Ljava/util/ArrayList;)V

    .line 1814
    return-void
.end method

.method private enforceAdminPermission()V
    .locals 2

    .line 3345
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3346
    return-void
.end method

.method private enforceImpersonatationPermission()V
    .locals 2

    .line 3380
    const-string v0, "android.permission.UPDATE_DEVICE_STATS"

    const-string v1, "Need UPDATE_DEVICE_STATS permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3382
    return-void
.end method

.method private enforcePrivilegedPermission()V
    .locals 2

    .line 3372
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3374
    return-void
.end method

.method private static extractBytes([BII)[B
    .locals 2

    .line 1911
    new-array v0, p2, [B

    .line 1912
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1913
    return-object v0
.end method

.method private native gattClientConfigureMTUNative(II)V
.end method

.method private native gattClientConnectNative(ILjava/lang/String;ZIZI)V
.end method

.method private native gattClientDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattClientDiscoverServiceByUuidNative(IJJ)V
.end method

.method private native gattClientExecuteWriteNative(IZ)V
.end method

.method private native gattClientGetDeviceTypeNative(Ljava/lang/String;)I
.end method

.method private native gattClientGetGattDbNative(I)V
.end method

.method private native gattClientReadCharacteristicNative(III)V
.end method

.method private native gattClientReadDescriptorNative(III)V
.end method

.method private native gattClientReadPhyNative(ILjava/lang/String;)V
.end method

.method private native gattClientReadRemoteRssiNative(ILjava/lang/String;)V
.end method

.method private native gattClientReadUsingCharacteristicUuidNative(IJJIII)V
.end method

.method private native gattClientRefreshNative(ILjava/lang/String;)V
.end method

.method private native gattClientRegisterAppNative(JJ)V
.end method

.method private native gattClientRegisterForNotificationsNative(ILjava/lang/String;IZ)V
.end method

.method private native gattClientSearchServiceNative(IZJJ)V
.end method

.method private native gattClientSetPreferredPhyNative(ILjava/lang/String;III)V
.end method

.method private native gattClientUnregisterAppNative(I)V
.end method

.method private native gattClientWriteCharacteristicNative(IIII[B)V
.end method

.method private native gattClientWriteDescriptorNative(III[B)V
.end method

.method private native gattConnectionParameterUpdateNative(ILjava/lang/String;IIIIII)V
.end method

.method private native gattServerAddServiceNative(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/gatt/GattDbElement;",
            ">;)V"
        }
    .end annotation
.end method

.method private native gattServerConnectNative(ILjava/lang/String;ZI)V
.end method

.method private native gattServerDeleteServiceNative(II)V
.end method

.method private native gattServerDisconnectNative(ILjava/lang/String;I)V
.end method

.method private native gattServerReadPhyNative(ILjava/lang/String;)V
.end method

.method private native gattServerRegisterAppNative(JJ)V
.end method

.method private native gattServerSendIndicationNative(III[B)V
.end method

.method private native gattServerSendNotificationNative(III[B)V
.end method

.method private native gattServerSendResponseNative(IIIIII[BI)V
.end method

.method private native gattServerSetPreferredPhyNative(ILjava/lang/String;III)V
.end method

.method private native gattServerStopServiceNative(II)V
.end method

.method private native gattServerUnregisterAppNative(I)V
.end method

.method private native gattTestNative(IJJLjava/lang/String;IIIII)V
.end method

.method private getAssociatedDevices(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2136
    const-string v0, "BtGatt.GattService"

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    if-nez v1, :cond_0

    .line 2137
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 2139
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2141
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 2142
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 2141
    invoke-interface {v3, p1, p2}, Landroid/companion/ICompanionDeviceManager;->getAssociations(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2150
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2141
    return-object p1

    .line 2150
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2147
    :catch_0
    move-exception p2

    .line 2148
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot check device associations for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 2145
    :catch_1
    move-exception p1

    .line 2146
    const-string p2, "Cannot reach companion device service"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 2150
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2151
    throw p1

    .line 2143
    :catch_2
    move-exception p1

    .line 2150
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2151
    nop

    .line 2152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method private getDeviceType(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 3337
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->gattClientGetDeviceTypeNative(Ljava/lang/String;)I

    move-result v0

    .line 3338
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v1, :cond_0

    .line 3339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceType() - device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", type="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    :cond_0
    return v0
.end method

.method public static declared-synchronized getGattService()Lcom/android/bluetooth/gatt/GattService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/gatt/GattService;

    monitor-enter v0

    .line 315
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/gatt/GattService;->sGattService:Lcom/android/bluetooth/gatt/GattService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 316
    const-string v1, "BtGatt.GattService"

    const-string v3, "getGattService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    monitor-exit v0

    return-object v2

    .line 319
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/gatt/GattService;->sGattService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/GattService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 320
    const-string v1, "BtGatt.GattService"

    const-string v3, "getGattService(): service is not available"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    monitor-exit v0

    return-object v2

    .line 323
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/gatt/GattService;->sGattService:Lcom/android/bluetooth/gatt/GattService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 314
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasScanResultPermission(Lcom/android/bluetooth/gatt/ScanClient;)Z
    .locals 2

    .line 1238
    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->hasNetworkSettingsPermission:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->hasNetworkSetupWizardPermission:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->hasScanWithoutLocationPermission:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1243
    :cond_0
    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->hasLocationPermission:Z

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->userHandle:Landroid/os/UserHandle;

    invoke-static {p0, p1}, Lcom/android/bluetooth/Utils;->blockedByLocationOff(Landroid/content/Context;Landroid/os/UserHandle;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1241
    :cond_2
    :goto_1
    return v1
.end method

.method private native initializeNative()V
.end method

.method private isAndroidTvRemoteSrvcUuid(Ljava/util/UUID;)Z
    .locals 1

    .line 3329
    sget-object v0, Lcom/android/bluetooth/gatt/GattService;->ANDROID_TV_REMOTE_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isFidoSrvcUuid(Ljava/util/UUID;)Z
    .locals 1

    .line 3333
    sget-object v0, Lcom/android/bluetooth/gatt/GattService;->FIDO_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isHidCharUuid(Ljava/util/UUID;)Z
    .locals 5

    .line 3320
    sget-object v0, Lcom/android/bluetooth/gatt/GattService;->HID_UUIDS:[Ljava/util/UUID;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 3321
    invoke-virtual {v4, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3322
    const/4 p1, 0x1

    return p1

    .line 3320
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3325
    :cond_1
    return v2
.end method

.method private isHidSrvcUuid(Ljava/util/UUID;)Z
    .locals 1

    .line 3316
    sget-object v0, Lcom/android/bluetooth/gatt/GattService;->HID_SERVICE_UUID:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z
    .locals 2

    .line 1248
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1251
    :cond_0
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ScanClient;->filters:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanFilter;

    .line 1252
    invoke-virtual {v0, p2}, Landroid/bluetooth/le/ScanFilter;->matches(Landroid/bluetooth/le/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    return v1

    .line 1255
    :cond_1
    goto :goto_0

    .line 1256
    :cond_2
    const/4 p1, 0x0

    return p1

    .line 1249
    :cond_3
    :goto_1
    return v1
.end method

.method private needsPrivilegedPermissionForScan(Landroid/bluetooth/le/ScanSettings;)Z
    .locals 6

    .line 3349
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 3351
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    .line 3352
    return v1

    .line 3356
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 3357
    return v0

    .line 3361
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 3362
    return v0

    .line 3366
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    return v1
.end method

.method private parseBatchScanResults(II[B)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[B)",
            "Ljava/util/Set<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1818
    if-nez p1, :cond_0

    .line 1819
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 1821
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_1

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current time is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1825
    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->parseTruncatedResults(I[B)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 1827
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->parseFullResults(I[B)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method private parseFullResults(I[B)Ljava/util/Set;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/Set<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1859
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    sget-boolean v2, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v3, "BtGatt.GattService"

    if-eqz v2, :cond_0

    .line 1860
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Batch record : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    move/from16 v4, p1

    invoke-direct {v2, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 1863
    nop

    .line 1864
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    const/4 v6, 0x0

    move v7, v6

    .line 1865
    :goto_0
    array-length v8, v1

    if-ge v7, v8, :cond_2

    .line 1866
    const/4 v8, 0x6

    invoke-static {v1, v7, v8}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v8

    .line 1868
    invoke-direct {v0, v8}, Lcom/android/bluetooth/gatt/GattService;->reverse([B)V

    .line 1869
    iget-object v9, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v9, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v11

    .line 1870
    add-int/lit8 v7, v7, 0x6

    .line 1872
    add-int/lit8 v7, v7, 0x1

    .line 1874
    add-int/lit8 v7, v7, 0x1

    .line 1875
    add-int/lit8 v8, v7, 0x1

    aget-byte v13, v1, v7

    .line 1876
    const/4 v7, 0x2

    invoke-static {v1, v8, v7}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/bluetooth/gatt/GattService;->parseTimestampNanos([B)J

    move-result-wide v9

    sub-long v14, v4, v9

    .line 1877
    add-int/2addr v8, v7

    .line 1880
    add-int/lit8 v7, v8, 0x1

    aget-byte v8, v1, v8

    .line 1881
    invoke-static {v1, v7, v8}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v9

    .line 1882
    add-int/2addr v7, v8

    .line 1883
    add-int/lit8 v10, v7, 0x1

    aget-byte v7, v1, v7

    .line 1884
    invoke-static {v1, v10, v7}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v12

    .line 1885
    add-int v16, v10, v7

    .line 1886
    add-int v10, v8, v7

    new-array v10, v10, [B

    .line 1887
    invoke-static {v9, v6, v10, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1888
    invoke-static {v12, v6, v10, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1890
    sget-boolean v7, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v7, :cond_1

    .line 1891
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ScanRecord : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_1
    new-instance v7, Landroid/bluetooth/le/ScanResult;

    invoke-static {v10}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v12

    move-object v10, v7

    invoke-direct/range {v10 .. v15}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1895
    move/from16 v7, v16

    goto :goto_0

    .line 1896
    :cond_2
    return-object v2
.end method

.method private parseTruncatedResults(I[B)Ljava/util/Set;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B)",
            "Ljava/util/Set<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;"
        }
    .end annotation

    .line 1832
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-boolean v2, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v2, :cond_0

    .line 1833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "batch record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BtGatt.GattService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 1836
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1837
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v1, :cond_1

    .line 1838
    mul-int/lit8 v7, v6, 0xb

    .line 1839
    const/16 v8, 0xb

    move-object/from16 v9, p2

    invoke-static {v9, v7, v8}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v7

    .line 1840
    const/4 v8, 0x6

    invoke-static {v7, v5, v8}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v8

    .line 1841
    invoke-direct {v0, v8}, Lcom/android/bluetooth/gatt/GattService;->reverse([B)V

    .line 1842
    iget-object v10, v0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v10, v8}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object v12

    .line 1843
    const/16 v8, 0x8

    aget-byte v14, v7, v8

    .line 1844
    const/16 v8, 0x9

    const/4 v10, 0x2

    invoke-static {v7, v8, v10}, Lcom/android/bluetooth/gatt/GattService;->extractBytes([BII)[B

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/bluetooth/gatt/GattService;->parseTimestampNanos([B)J

    move-result-wide v7

    sub-long v15, v3, v7

    .line 1845
    new-instance v7, Landroid/bluetooth/le/ScanResult;

    new-array v8, v5, [B

    invoke-static {v8}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v13

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1837
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1848
    :cond_1
    return-object v2
.end method

.method private parseUuids([B)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation

    .line 3428
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3430
    const/4 v1, 0x0

    move v2, v1

    .line 3431
    :goto_0
    array-length v3, p1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    .line 3432
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    invoke-static {v2}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v2

    .line 3433
    if-nez v2, :cond_0

    .line 3434
    goto :goto_3

    .line 3437
    :cond_0
    add-int/lit8 v5, v3, 0x1

    aget-byte v3, p1, v3

    .line 3438
    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 3451
    add-int/lit8 v2, v2, -0x1

    add-int/2addr v5, v2

    move v2, v5

    goto :goto_2

    .line 3441
    :cond_1
    :goto_1
    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 3442
    add-int/lit8 v4, v5, 0x1

    aget-byte v5, p1, v5

    .line 3443
    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v5, v4

    .line 3444
    add-int/lit8 v2, v2, -0x2

    .line 3445
    new-array v3, v3, [Ljava/lang/Object;

    .line 3446
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%08x-0000-1000-8000-00805f9b34fb"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 3445
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3447
    move v5, v6

    goto :goto_1

    .line 3441
    :cond_2
    move v2, v5

    .line 3454
    :goto_2
    goto :goto_0

    .line 3456
    :cond_3
    :goto_3
    return-object v0
.end method

.method private permissionCheck(II)Z
    .locals 4

    .line 346
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mRestrictedHandles:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 347
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 352
    :cond_0
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 354
    :goto_0
    sget-boolean v2, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v2, :cond_2

    if-nez v1, :cond_2

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "permissionCheck(): connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";handle="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ";permission: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 355
    const-string p2, "BtGatt.GattService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_2
    return v1

    .line 348
    :cond_3
    :goto_1
    return v1
.end method

.method private permissionCheck(Lcom/android/bluetooth/gatt/ContextMap$App;II)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "Landroid/bluetooth/IBluetoothGattCallback;",
            "Ljava/lang/Void;",
            ">.App;II)Z"
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mRestrictedHandles:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 364
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->hasBluetoothPrivilegedPermission:Z

    const-string v2, "android.permission.BLUETOOTH_PRIVILEGED"

    if-nez v0, :cond_1

    .line 369
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 370
    iput-boolean v1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->hasBluetoothPrivilegedPermission:Z

    .line 374
    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->hasBluetoothPrivilegedPermission:Z

    if-nez v0, :cond_2

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "permissionCheck(): app name= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";handle="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ";permission: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 375
    const-string p3, "BtGatt.GattService"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_2
    iget-boolean p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->hasBluetoothPrivilegedPermission:Z

    return p1

    .line 365
    :cond_3
    :goto_0
    return v1
.end method

.method private permissionCheck(Ljava/util/UUID;)Z
    .locals 7

    .line 335
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->isHidCharUuid(Ljava/util/UUID;)Z

    move-result v0

    .line 336
    const-string v1, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    .line 338
    :goto_0
    sget-boolean v5, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    .line 339
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "permissionCheck(): UUID="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ";permission: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 339
    const-string v1, "BtGatt.GattService"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :cond_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :cond_3
    :goto_1
    return v3
.end method

.method private reverse([B)V
    .locals 5

    .line 1901
    array-length v0, p1

    .line 1902
    const/4 v1, 0x0

    :goto_0
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_0

    .line 1903
    aget-byte v2, p1, v1

    .line 1904
    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v1

    aget-byte v4, p1, v3

    aput-byte v4, p1, v1

    .line 1905
    aput-byte v2, p1, v3

    .line 1902
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1907
    :cond_0
    return-void
.end method

.method private sendBatchScanResults(Lcom/android/bluetooth/gatt/ContextMap$App;Lcom/android/bluetooth/gatt/ScanClient;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "Landroid/bluetooth/le/IScannerCallback;",
            "Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;",
            ">.App;",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 1764
    :try_start_0
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1765
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/le/IScannerCallback;

    invoke-interface {p1, p3}, Landroid/bluetooth/le/IScannerCallback;->onBatchScanResults(Ljava/util/List;)V

    goto :goto_0

    .line 1767
    :cond_0
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, v0}, Lcom/android/bluetooth/gatt/GattService;->sendResultsByPendingIntent(Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1774
    :goto_0
    goto :goto_1

    .line 1770
    :catch_0
    move-exception p1

    .line 1771
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BtGatt.GattService"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    iget p3, p2, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {p1, p3}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->remove(I)V

    .line 1773
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    iget p2, p2, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/gatt/ScanManager;->stopScan(I)V

    .line 1775
    :goto_1
    return-void
.end method

.method private sendErrorByPendingIntent(Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 1202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1203
    const-string v1, "android.bluetooth.le.extra.ERROR_CODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1204
    iget-object p1, p1, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->intent:Landroid/app/PendingIntent;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1205
    return-void
.end method

.method private sendResultByPendingIntent(Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;Landroid/bluetooth/le/ScanResult;ILcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1

    .line 1181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1182
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1184
    :try_start_0
    invoke-direct {p0, p1, v0, p3}, Lcom/android/bluetooth/gatt/GattService;->sendResultsByPendingIntent(Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    goto :goto_0

    .line 1185
    :catch_0
    move-exception p1

    .line 1186
    iget p1, p4, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->stopScan(I)V

    .line 1187
    iget p1, p4, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterScanner(I)V

    .line 1189
    :goto_0
    return-void
.end method

.method private sendResultsByPendingIntent(Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/app/PendingIntent$CanceledException;
        }
    .end annotation

    .line 1193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1194
    const-string v1, "android.bluetooth.le.extra.LIST_SCAN_RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 1196
    const-string p2, "android.bluetooth.le.extra.CALLBACK_TYPE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1197
    iget-object p1, p1, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->intent:Landroid/app/PendingIntent;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 1198
    return-void
.end method

.method private static declared-synchronized setGattService(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/gatt/GattService;

    monitor-enter v0

    .line 327
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v1, :cond_0

    .line 328
    const-string v1, "BtGatt.GattService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGattService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    sput-object p0, Lcom/android/bluetooth/gatt/GattService;->sGattService:Lcom/android/bluetooth/gatt/GattService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 331
    monitor-exit v0

    return-void

    .line 326
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private stopNextService(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3385
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 3386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopNextService() - serverIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    :cond_0
    if-nez p2, :cond_3

    .line 3390
    iget-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {p2}, Lcom/android/bluetooth/gatt/HandleMap;->getEntries()Ljava/util/List;

    move-result-object p2

    .line 3391
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 3392
    iget v1, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    if-ne v1, p1, :cond_1

    iget-boolean v1, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->started:Z

    if-nez v1, :cond_2

    .line 3394
    goto :goto_0

    .line 3397
    :cond_2
    iget p2, v0, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattServerStopServiceNative(II)V

    .line 3398
    return-void

    .line 3401
    :cond_3
    return-void
.end method


# virtual methods
.method addScanEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V
    .locals 3

    .line 3502
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 3503
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 3504
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 3506
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 3507
    monitor-exit v0

    .line 3508
    return-void

    .line 3507
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method addService(ILandroid/bluetooth/BluetoothGattService;)V
    .locals 7

    .line 3211
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 3214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addService() - uuid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3219
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getType()I

    move-result v2

    if-nez v2, :cond_1

    .line 3220
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/gatt/GattDbElement;->createPrimaryService(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/GattDbElement;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3222
    :cond_1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/gatt/GattDbElement;->createSecondaryService(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/GattDbElement;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3225
    :goto_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getIncludedServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattService;

    .line 3226
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v4

    .line 3228
    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lcom/android/bluetooth/gatt/HandleMap;->checkServiceExists(Ljava/util/UUID;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3229
    invoke-static {v4}, Lcom/android/bluetooth/gatt/GattDbElement;->createIncludedService(I)Lcom/android/bluetooth/gatt/GattDbElement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 3231
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "included service with UUID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3232
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not found!"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3231
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3234
    :goto_2
    goto :goto_1

    .line 3236
    :cond_3
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 3237
    nop

    .line 3238
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getKeySize()I

    move-result v2

    add-int/lit8 v2, v2, -0x7

    shl-int/lit8 v2, v2, 0xc

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getPermissions()I

    move-result v3

    add-int/2addr v2, v3

    .line 3239
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 3240
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v4

    .line 3239
    invoke-static {v3, v4, v2}, Lcom/android/bluetooth/gatt/GattDbElement;->createCharacteristic(Ljava/util/UUID;II)Lcom/android/bluetooth/gatt/GattDbElement;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3242
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattDescriptor;

    .line 3243
    nop

    .line 3244
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getKeySize()I

    move-result v4

    add-int/lit8 v4, v4, -0x7

    shl-int/lit8 v4, v4, 0xc

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattDescriptor;->getPermissions()I

    move-result v5

    add-int/2addr v4, v5

    .line 3245
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/android/bluetooth/gatt/GattDbElement;->createDescriptor(Ljava/util/UUID;I)Lcom/android/bluetooth/gatt/GattDbElement;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3246
    goto :goto_4

    .line 3247
    :cond_4
    goto :goto_3

    .line 3249
    :cond_5
    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->gattServerAddServiceNative(ILjava/util/List;)V

    .line 3250
    return-void
.end method

.method beginReliableWrite(ILjava/lang/String;)V
    .locals 1

    .line 2718
    const-string p1, "android.permission.BLUETOOTH"

    const-string v0, "Need BLUETOOTH permission"

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2720
    sget-boolean p1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz p1, :cond_0

    .line 2721
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "beginReliableWrite() - address="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.GattService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2724
    return-void
.end method

.method protected cleanup()V
    .locals 2

    .line 292
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 293
    const-string v0, "BtGatt.GattService"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->cleanupNative()V

    .line 296
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    if-eqz v0, :cond_1

    .line 297
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->cleanup()V

    .line 299
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    if-eqz v0, :cond_2

    .line 300
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->cleanup()V

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mPeriodicScanManager:Lcom/android/bluetooth/gatt/PeriodicScanManager;

    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->cleanup()V

    .line 305
    :cond_3
    return-void
.end method

.method clearServices(I)V
    .locals 2

    .line 3263
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3265
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 3266
    const-string v0, "BtGatt.GattService"

    const-string v1, "clearServices()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    .line 3269
    return-void
.end method

.method clientConnect(ILjava/lang/String;ZIZI)V
    .locals 2

    .line 2490
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clientConnect() - address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDirect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", opportunistic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", phy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/android/bluetooth/gatt/GattService;->gattClientConnectNative(ILjava/lang/String;ZIZI)V

    .line 2497
    return-void
.end method

.method clientDisconnect(ILjava/lang/String;)V
    .locals 3

    .line 2500
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2502
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2503
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v1, :cond_0

    .line 2504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clientDisconnect() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", connId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.GattService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/gatt/GattService;->gattClientDisconnectNative(ILjava/lang/String;I)V

    .line 2508
    return-void
.end method

.method clientReadPhy(ILjava/lang/String;)V
    .locals 4

    .line 2528
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2530
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2531
    const-string v1, "BtGatt.GattService"

    if-nez v0, :cond_1

    .line 2532
    sget-boolean p1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz p1, :cond_0

    .line 2533
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clientReadPhy() - no connection to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    :cond_0
    return-void

    .line 2538
    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v2, :cond_2

    .line 2539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientReadPhy() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadPhyNative(ILjava/lang/String;)V

    .line 2542
    return-void
.end method

.method clientSetPreferredPhy(ILjava/lang/String;III)V
    .locals 4

    .line 2511
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2514
    const-string v1, "BtGatt.GattService"

    if-nez v0, :cond_1

    .line 2515
    sget-boolean p1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz p1, :cond_0

    .line 2516
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "clientSetPreferredPhy() - no connection to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    :cond_0
    return-void

    .line 2521
    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v2, :cond_2

    .line 2522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clientSetPreferredPhy() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/gatt/GattService;->gattClientSetPreferredPhyNative(ILjava/lang/String;III)V

    .line 2525
    return-void
.end method

.method configureMTU(ILjava/lang/String;I)V
    .locals 3

    .line 2771
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 2774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureMTU() - address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mtu="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 2777
    if-eqz p1, :cond_1

    .line 2778
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientConfigureMTUNative(II)V

    goto :goto_0

    .line 2780
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "configureMTU() - No connection for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :goto_0
    return-void
.end method

.method connectionParameterUpdate(ILjava/lang/String;I)V
    .locals 12

    .line 2785
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    nop

    .line 2796
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    .line 2811
    nop

    .line 2812
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2813
    nop

    .line 2814
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2815
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    move v6, v0

    move v7, v1

    move v8, v2

    goto :goto_0

    .line 2804
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2805
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2806
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2807
    move v6, v0

    move v7, v1

    move v8, v2

    goto :goto_0

    .line 2798
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2799
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2800
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 2801
    move v6, v0

    move v7, v1

    move v8, v2

    .line 2819
    :goto_0
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_2

    .line 2820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectionParameterUpdate() - address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " interval="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "/"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "BtGatt.GattService"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    :cond_2
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v9, 0x1f4

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v3 .. v11}, Lcom/android/bluetooth/gatt/GattService;->gattConnectionParameterUpdateNative(ILjava/lang/String;IIIIII)V

    .line 2825
    return-void
.end method

.method continuePiStartScan(ILcom/android/bluetooth/gatt/ContextMap$App;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/bluetooth/gatt/ContextMap<",
            "Landroid/bluetooth/le/IScannerCallback;",
            "Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;",
            ">.App;)V"
        }
    .end annotation

    .line 2257
    iget-object v0, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;

    .line 2258
    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->settings:Landroid/bluetooth/le/ScanSettings;

    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->filters:Ljava/util/List;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 2260
    iget-boolean v2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->hasLocationPermission:Z

    iput-boolean v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->hasLocationPermission:Z

    .line 2261
    iget-object v2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->mUserHandle:Landroid/os/UserHandle;

    iput-object v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->userHandle:Landroid/os/UserHandle;

    .line 2262
    iget-boolean v2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->mIsQApp:Z

    iput-boolean v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->isQApp:Z

    .line 2263
    iget-boolean v2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->mEligibleForSanitizedExposureNotification:Z

    iput-boolean v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->eligibleForSanitizedExposureNotification:Z

    .line 2265
    iget-boolean v2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->mHasNetworkSettingsPermission:Z

    iput-boolean v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->hasNetworkSettingsPermission:Z

    .line 2266
    iget-boolean v2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->mHasNetworkSetupWizardPermission:Z

    iput-boolean v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->hasNetworkSetupWizardPermission:Z

    .line 2267
    iget-boolean v2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->mHasScanWithoutLocationPermission:Z

    iput-boolean v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->hasScanWithoutLocationPermission:Z

    .line 2268
    iget-object p2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->mAssociatedDevices:Ljava/util/List;

    iput-object p2, v1, Lcom/android/bluetooth/gatt/ScanClient;->associatedDevices:Ljava/util/List;

    .line 2270
    iget-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getAppScanStatsById(I)Lcom/android/bluetooth/gatt/AppScanStats;

    move-result-object v2

    .line 2271
    if-eqz v2, :cond_1

    .line 2272
    iput-object v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    .line 2273
    iget-object p2, v0, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->filters:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p2, v0, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->filters:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v5, p2

    .line 2274
    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->settings:Landroid/bluetooth/le/ScanSettings;

    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->filters:Ljava/util/List;

    const/4 v6, 0x0

    move v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/gatt/AppScanStats;->recordScanStart(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;ZZI)V

    .line 2278
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/gatt/ScanManager;->startScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 2279
    return-void
.end method

.method createOnTrackAdvFoundLostObject(II[BI[BIIILjava/lang/String;IIII)Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;
    .locals 15

    .line 1928
    new-instance v14, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;

    move-object v0, v14

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v13}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;-><init>(II[BI[BIIILjava/lang/String;IIII)V

    return-object v14
.end method

.method disconnectAll()V
    .locals 5

    .line 2322
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 2323
    const-string v0, "disconnectAll()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedMap()Ljava/util/Map;

    move-result-object v0

    .line 2326
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2327
    sget-boolean v3, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v3, :cond_1

    .line 2328
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnecting addr:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2330
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lcom/android/bluetooth/gatt/GattService;->clientDisconnect(ILjava/lang/String;)V

    .line 2332
    goto :goto_0

    .line 2333
    :cond_2
    return-void
.end method

.method discoverServiceByUuid(ILjava/lang/String;Ljava/util/UUID;)V
    .locals 6

    .line 2593
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 2596
    if-eqz p1, :cond_0

    .line 2597
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    .line 2598
    invoke-virtual {p3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    .line 2597
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/gatt/GattService;->gattClientDiscoverServiceByUuidNative(IJJ)V

    goto :goto_0

    .line 2600
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "discoverServiceByUuid() - No connection for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtGatt.GattService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2602
    :goto_0
    return-void
.end method

.method discoverServices(ILjava/lang/String;)V
    .locals 9

    .line 2578
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2580
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 2581
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 2582
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverServices() - address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", connId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    :cond_0
    if-eqz p1, :cond_1

    .line 2586
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/bluetooth/gatt/GattService;->gattClientSearchServiceNative(IZJJ)V

    goto :goto_0

    .line 2588
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "discoverServices() - No connection for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    :goto_0
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 3477
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 3478
    const-string v0, "mAdvertisingServiceUuids:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3479
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertisingServiceUuids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    .line 3480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3481
    goto :goto_0

    .line 3483
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMaxScanFilters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/gatt/GattService;->mMaxScanFilters:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3485
    const-string v0, "\nRegistered App\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3486
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->dumpRegisterId(Ljava/lang/StringBuilder;)V

    .line 3488
    const-string v0, "GATT Scanner Map\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3489
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->dump(Ljava/lang/StringBuilder;)V

    .line 3491
    const-string v0, "GATT Client Map\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3492
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->dump(Ljava/lang/StringBuilder;)V

    .line 3494
    const-string v0, "GATT Server Map\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->dump(Ljava/lang/StringBuilder;)V

    .line 3497
    const-string v0, "GATT Handle Map\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3498
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/HandleMap;->dump(Ljava/lang/StringBuilder;)V

    .line 3499
    return-void
.end method

.method public dumpProto(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;)V
    .locals 2

    .line 3512
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 3513
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanEvents:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->addAllScanEvent(Ljava/lang/Iterable;)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;

    .line 3514
    monitor-exit v0

    .line 3515
    return-void

    .line 3514
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method dumpRegisterId(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 3460
    const-string v0, "  Scanner:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3461
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getAllAppsIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ", appName: "

    const-string v3, "    app_if: "

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3462
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    iget-object v1, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3463
    goto :goto_0

    .line 3464
    :cond_0
    const-string v0, "  Client:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3465
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getAllAppsIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3466
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    iget-object v1, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3467
    goto :goto_1

    .line 3468
    :cond_1
    const-string v0, "  Server:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3469
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getAllAppsIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3470
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v1

    iget-object v1, v1, Lcom/android/bluetooth/gatt/ContextMap$App;->name:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/gatt/GattService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 3471
    goto :goto_2

    .line 3472
    :cond_2
    const-string v0, "\n\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3473
    return-void
.end method

.method enableAdvertisingSet(IZII)V
    .locals 1

    .line 2429
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2430
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/AdvertiseManager;->enableAdvertisingSet(IZII)V

    .line 2431
    return-void
.end method

.method endReliableWrite(ILjava/lang/String;Z)V
    .locals 2

    .line 2727
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endReliableWrite() - address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " execute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2732
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2734
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 2735
    if-eqz p1, :cond_1

    .line 2736
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->gattClientExecuteWriteNative(IZ)V

    .line 2738
    :cond_1
    return-void
.end method

.method findBatchScanClientById(I)Lcom/android/bluetooth/gatt/ScanClient;
    .locals 3

    .line 1697
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->getBatchScanQueue()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 1698
    iget v2, v1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    if-ne v2, p1, :cond_0

    .line 1699
    return-object v1

    .line 1701
    :cond_0
    goto :goto_0

    .line 1702
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method flushPendingBatchResults(I)V
    .locals 2

    .line 2282
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flushPendingBatchResults - scannerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    new-instance v1, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {v1, p1}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager;->flushBatchScanResults(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 2286
    return-void
.end method

.method gattTestCommand(ILjava/util/UUID;Ljava/lang/String;IIIII)V
    .locals 13

    .line 3523
    if-nez p3, :cond_0

    .line 3524
    const-string v0, "00:00:00:00:00:00"

    move-object v7, v0

    goto :goto_0

    .line 3523
    :cond_0
    move-object/from16 v7, p3

    .line 3526
    :goto_0
    if-eqz p2, :cond_1

    .line 3527
    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    move-object v1, p0

    move v2, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;IIIII)V

    goto :goto_1

    .line 3530
    :cond_1
    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move v2, p1

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-direct/range {v1 .. v12}, Lcom/android/bluetooth/gatt/GattService;->gattTestNative(IJJLjava/lang/String;IIIII)V

    .line 3532
    :goto_1
    return-void
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2559
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2561
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2562
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2563
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2564
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2565
    return-object v1
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 2053
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2055
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2059
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 2060
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 2061
    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->getDeviceType(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 2062
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2064
    :cond_0
    goto :goto_0

    .line 2068
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2069
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2070
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getConnectedDevices()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2072
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2073
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 2074
    if-eqz v2, :cond_2

    .line 2075
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2077
    :cond_2
    goto :goto_1

    .line 2081
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2083
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2084
    array-length v4, p1

    move v5, v3

    :goto_3
    if-ge v5, v4, :cond_5

    aget v6, p1, v5

    .line 2085
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_4

    .line 2086
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2084
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2089
    :cond_5
    goto :goto_2

    .line 2091
    :cond_6
    return-object v1
.end method

.method getOwnAddress(I)V
    .locals 1

    .line 2424
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 2425
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->getOwnAddress(I)V

    .line 2426
    return-void
.end method

.method declared-synchronized getRegisteredServiceUuids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2550
    :try_start_0
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->enforceAdminPermission(Landroid/content/ContextWrapper;)V

    .line 2551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2552
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget-object v1, v1, Lcom/android/bluetooth/gatt/HandleMap;->mEntries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;

    .line 2553
    new-instance v3, Landroid/os/ParcelUuid;

    iget-object v2, v2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->uuid:Ljava/util/UUID;

    invoke-direct {v3, v2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2554
    goto :goto_0

    .line 2555
    :cond_0
    monitor-exit p0

    return-object v0

    .line 2549
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSampleGattDbElement()Lcom/android/bluetooth/gatt/GattDbElement;
    .locals 1

    .line 1442
    new-instance v0, Lcom/android/bluetooth/gatt/GattDbElement;

    invoke-direct {v0}, Lcom/android/bluetooth/gatt/GattDbElement;-><init>()V

    return-object v0
.end method

.method getSanitizedExposureNotification(Landroid/bluetooth/le/ScanResult;)Landroid/bluetooth/le/ScanResult;
    .locals 13

    .line 1057
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    .line 1059
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 1060
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    sget-object v3, Lcom/android/bluetooth/gatt/GattService;->EXPOSURE_NOTIFICATION_FLAGS_PREAMBLE:[B

    invoke-static {v1, v3}, Lcom/android/bluetooth/gatt/GattService;->arrayStartsWith([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1061
    nop

    .line 1063
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v1

    .line 1065
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    .line 1062
    invoke-static {v1, v2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 1061
    invoke-static {v0}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    move-object v10, v0

    goto :goto_0

    .line 1068
    :cond_0
    move-object v10, v0

    :goto_0
    invoke-virtual {v10}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x1c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 1069
    return-object v2

    .line 1071
    :cond_1
    invoke-virtual {v10}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/android/bluetooth/gatt/GattService;->EXPOSURE_NOTIFICATION_PAYLOAD_PREAMBLE:[B

    invoke-static {v0, v1}, Lcom/android/bluetooth/gatt/GattService;->arrayStartsWith([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1072
    return-object v2

    .line 1075
    :cond_2
    new-instance v0, Landroid/bluetooth/le/ScanResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;IIIIIIILandroid/bluetooth/le/ScanRecord;J)V

    return-object v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 204
    new-instance v0, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/GattService$BluetoothGattBinder;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    return-object v0
.end method

.method isScanClient(I)Z
    .locals 3

    .line 2337
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 2338
    iget v1, v1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    if-ne v1, p1, :cond_0

    .line 2339
    return v2

    .line 2341
    :cond_0
    goto :goto_0

    .line 2342
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->getBatchScanQueue()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 2343
    iget v1, v1, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    if-ne v1, p1, :cond_2

    .line 2344
    return v2

    .line 2346
    :cond_2
    goto :goto_1

    .line 2347
    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method leConnectionUpdate(ILjava/lang/String;IIIIII)V
    .locals 2

    .line 2831
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2833
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2834
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leConnectionUpdate() - address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", intervals="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "msec, min_ce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max_ce="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_0
    invoke-direct/range {p0 .. p8}, Lcom/android/bluetooth/gatt/GattService;->gattConnectionParameterUpdateNative(ILjava/lang/String;IIIIII)V

    .line 2844
    return-void
.end method

.method numHwTrackFiltersAvailable()I
    .locals 2

    .line 2545
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getTotalNumOfTrackableAdvertisements()I

    move-result v0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    .line 2546
    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/ScanManager;->getCurrentUsedTrackingAdvertisement()I

    move-result v1

    sub-int/2addr v0, v1

    .line 2545
    return v0
.end method

.method onBatchScanReports(IIII[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1707
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatchScanReports() - scannerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reportType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numRecords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1712
    invoke-direct {p0, p4, p3, p5}, Lcom/android/bluetooth/gatt/GattService;->parseBatchScanResults(II[B)Ljava/util/Set;

    move-result-object p1

    .line 1713
    const/4 p4, 0x1

    if-ne p3, p4, :cond_9

    .line 1715
    iget-object p3, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {p3, p2}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p3

    .line 1716
    if-nez p3, :cond_1

    .line 1717
    return-void

    .line 1720
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/gatt/GattService;->findBatchScanClientById(I)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object p2

    .line 1721
    if-nez p2, :cond_2

    .line 1722
    return-void

    .line 1726
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/bluetooth/gatt/GattService;->hasScanResultPermission(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 1727
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_2

    .line 1729
    :cond_3
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 1730
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 1731
    iget-object v1, p2, Lcom/android/bluetooth/gatt/ScanClient;->associatedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1732
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 1733
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 1732
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1734
    invoke-virtual {p5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    :cond_4
    goto :goto_1

    .line 1737
    :cond_5
    goto :goto_0

    .line 1738
    :cond_6
    invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1739
    return-void

    .line 1738
    :cond_7
    move-object p2, p5

    .line 1743
    :goto_2
    iget-object p1, p3, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 1744
    iget-object p1, p3, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/le/IScannerCallback;

    invoke-interface {p1, p2}, Landroid/bluetooth/le/IScannerCallback;->onBatchScanResults(Ljava/util/List;)V

    goto :goto_3

    .line 1748
    :cond_8
    :try_start_0
    iget-object p1, p3, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;

    invoke-direct {p0, p1, p2, p4}, Lcom/android/bluetooth/gatt/GattService;->sendResultsByPendingIntent(Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1751
    goto :goto_3

    .line 1750
    :catch_0
    move-exception p1

    .line 1753
    :goto_3
    goto :goto_5

    .line 1754
    :cond_9
    iget-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {p2}, Lcom/android/bluetooth/gatt/ScanManager;->getFullBatchScanQueue()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/bluetooth/gatt/ScanClient;

    .line 1756
    invoke-direct {p0, p3, p1}, Lcom/android/bluetooth/gatt/GattService;->deliverBatchScan(Lcom/android/bluetooth/gatt/ScanClient;Ljava/util/Set;)V

    .line 1757
    goto :goto_4

    .line 1759
    :cond_a
    :goto_5
    return-void
.end method

.method onBatchScanStartStopped(III)V
    .locals 2

    .line 1689
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatchScanStartStopped() - clientIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startStopAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.GattService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1693
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {p1, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1694
    return-void
.end method

.method onBatchScanStorageConfigured(II)V
    .locals 2

    .line 1680
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatchScanStorageConfigured() - clientIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1684
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p2, p1}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1685
    return-void
.end method

.method onBatchScanThresholdCrossed(I)V
    .locals 2

    .line 1917
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBatchScanThresholdCrossed() - clientIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->flushPendingBatchResults(I)V

    .line 1921
    return-void
.end method

.method onClientCongestion(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2029
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v0, :cond_0

    .line 2030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClientCongestion() - connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", congested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 2035
    if-eqz p1, :cond_2

    .line 2036
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    .line 2037
    :goto_0
    iget-object p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    .line 2038
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/ContextMap$App;->popQueuedCallback()Lcom/android/bluetooth/gatt/CallbackInfo;

    move-result-object p2

    .line 2039
    if-nez p2, :cond_1

    .line 2040
    return-void

    .line 2042
    :cond_1
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    iget-object v1, p2, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    iget v2, p2, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    iget p2, p2, Lcom/android/bluetooth/gatt/CallbackInfo;->handle:I

    invoke-interface {v0, v1, v2, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicWrite(Ljava/lang/String;II)V

    .line 2044
    goto :goto_0

    .line 2046
    :cond_2
    return-void
.end method

.method onClientConnUpdate(IIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1350
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClientConnUpdate() - connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1354
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v2

    .line 1355
    if-nez v2, :cond_1

    .line 1356
    return-void

    .line 1359
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1360
    if-nez p1, :cond_2

    .line 1361
    return-void

    .line 1364
    :cond_2
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/bluetooth/IBluetoothGattCallback;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetoothGattCallback;->onConnectionUpdated(Ljava/lang/String;IIII)V

    .line 1365
    return-void
.end method

.method onClientConnected(Ljava/lang/String;ZII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2932
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClientConnected() connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", connected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p4}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 2939
    if-nez v0, :cond_1

    .line 2940
    return-void

    .line 2943
    :cond_1
    if-eqz p2, :cond_2

    .line 2944
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addConnection(IILjava/lang/String;)V

    goto :goto_0

    .line 2946
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p4, p3}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->removeConnection(II)V

    .line 2949
    :goto_0
    iget-object p3, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p3, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v0, 0x0

    invoke-interface {p3, v0, p4, p2, p1}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerConnectionState(IIZLjava/lang/String;)V

    .line 2950
    return-void
.end method

.method onClientPhyRead(ILjava/lang/String;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1328
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientPhyRead() - address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", clientIf="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 1335
    if-nez p1, :cond_1

    .line 1336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onClientPhyRead() - no connection to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    return-void

    .line 1340
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1341
    if-nez p1, :cond_2

    .line 1342
    return-void

    .line 1345
    :cond_2
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/bluetooth/IBluetoothGattCallback;->onPhyRead(Ljava/lang/String;III)V

    .line 1346
    return-void
.end method

.method onClientPhyUpdate(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1309
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClientPhyUpdate() - connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1314
    if-nez v0, :cond_1

    .line 1315
    return-void

    .line 1318
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1319
    if-nez p1, :cond_2

    .line 1320
    return-void

    .line 1323
    :cond_2
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {p1, v0, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onPhyUpdate(Ljava/lang/String;III)V

    .line 1324
    return-void
.end method

.method onClientRegistered(IIJJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1261
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 1262
    sget-boolean p3, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz p3, :cond_0

    .line 1263
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onClientRegistered() - UUID="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", clientIf="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BtGatt.GattService"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    :cond_0
    iget-object p3, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {p3, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p3

    .line 1266
    if-eqz p3, :cond_2

    .line 1267
    if-nez p1, :cond_1

    .line 1268
    iput p2, p3, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    .line 1269
    new-instance p4, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;

    invoke-direct {p4, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ClientDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {p3, p4}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    goto :goto_0

    .line 1271
    :cond_1
    iget-object p4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {p4, v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(Ljava/util/UUID;)V

    .line 1273
    :goto_0
    iget-object p3, p3, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p3, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {p3, p1, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onClientRegistered(II)V

    .line 1275
    :cond_2
    return-void
.end method

.method onConfigureMTU(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2015
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 2017
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v1, :cond_0

    .line 2018
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigureMTU() address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.GattService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 2023
    if-eqz p1, :cond_1

    .line 2024
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {p1, v0, p3, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onConfigureMTU(Ljava/lang/String;II)V

    .line 2026
    :cond_1
    return-void
.end method

.method onConnected(IIILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1278
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConnected() - clientIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    :cond_0
    if-nez p3, :cond_1

    .line 1284
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2, p4}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addConnection(IILjava/lang/String;)V

    .line 1286
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p2

    .line 1287
    if-eqz p2, :cond_3

    .line 1288
    iget-object p2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p2, Landroid/bluetooth/IBluetoothGattCallback;

    if-nez p3, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2, p3, p1, v0, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 1291
    :cond_3
    return-void
.end method

.method onDisconnected(IIILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1295
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDisconnected() - clientIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->removeConnection(II)V

    .line 1302
    iget-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p2

    .line 1303
    if-eqz p2, :cond_1

    .line 1304
    iget-object p2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p2, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v0, 0x0

    invoke-interface {p2, p3, p1, v0, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V

    .line 1306
    :cond_1
    return-void
.end method

.method onExecuteCompleted(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1598
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1599
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExecuteCompleted() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.GattService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1604
    if-eqz p1, :cond_1

    .line 1605
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {p1, v0, p2}, Landroid/bluetooth/IBluetoothGattCallback;->onExecuteWrite(Ljava/lang/String;I)V

    .line 1607
    :cond_1
    return-void
.end method

.method onExecuteWrite(Ljava/lang/String;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3047
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 3048
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExecuteWrite() connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", transId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p2

    .line 3053
    if-nez p2, :cond_1

    .line 3054
    return-void

    .line 3057
    :cond_1
    iget-object p2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p2, Landroid/bluetooth/IBluetoothGattServerCallback;

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p2, p1, p3, v0}, Landroid/bluetooth/IBluetoothGattServerCallback;->onExecuteWrite(Ljava/lang/String;IZ)V

    .line 3058
    return-void
.end method

.method onGetGattDb(ILjava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/gatt/GattDbElement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1446
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v2

    .line 1448
    sget-boolean v3, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v4, "BtGatt.GattService"

    if-eqz v3, :cond_0

    .line 1449
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onGetGattDb() - address="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    :cond_0
    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v3

    .line 1453
    if-eqz v3, :cond_13

    iget-object v5, v3, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v5, :cond_1

    goto/16 :goto_6

    .line 1458
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1459
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1461
    nop

    .line 1462
    nop

    .line 1463
    nop

    .line 1464
    nop

    .line 1465
    nop

    .line 1467
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v8, 0x0

    move-object v10, v8

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_11

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/bluetooth/gatt/GattDbElement;

    .line 1468
    iget v15, v14, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    const/4 v9, 0x1

    const-string v1, " id: "

    if-eqz v15, :cond_b

    if-eq v15, v9, :cond_b

    const/4 v9, 0x2

    if-eq v15, v9, :cond_9

    const/4 v9, 0x3

    if-eq v15, v9, :cond_4

    const/4 v9, 0x4

    if-eq v15, v9, :cond_2

    .line 1520
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "got unknown element with type="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v14, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " and UUID="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v7

    goto/16 :goto_5

    .line 1499
    :cond_2
    sget-boolean v9, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v9, :cond_3

    .line 1500
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "got descriptor with UUID="

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    :cond_3
    new-instance v1, Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v9, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v15, v14, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    move-object/from16 v16, v7

    const/4 v7, 0x0

    invoke-direct {v1, v9, v15, v7}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v10, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 1504
    if-eqz v12, :cond_10

    .line 1505
    iget v1, v14, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1486
    :cond_4
    move-object/from16 v16, v7

    sget-boolean v7, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v7, :cond_5

    .line 1487
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got characteristic with UUID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    :cond_5
    new-instance v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v7, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v9, v14, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    iget v10, v14, Lcom/android/bluetooth/gatt/GattDbElement;->properties:I

    const/4 v12, 0x0

    invoke-direct {v1, v7, v9, v10, v12}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;III)V

    .line 1491
    invoke-virtual {v8, v1}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 1492
    if-nez v11, :cond_7

    if-eqz v13, :cond_6

    iget-object v7, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-direct {v0, v7}, Lcom/android/bluetooth/gatt/GattService;->isHidCharUuid(Ljava/util/UUID;)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v12, 0x1

    .line 1493
    :goto_2
    if-eqz v12, :cond_8

    .line 1494
    iget v7, v14, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1523
    :cond_8
    move-object v10, v1

    goto/16 :goto_5

    .line 1510
    :cond_9
    move-object/from16 v16, v7

    sget-boolean v7, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v7, :cond_a

    .line 1511
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "got included service with UUID="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " startHandle: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/bluetooth/gatt/GattDbElement;->startHandle:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    :cond_a
    new-instance v1, Landroid/bluetooth/BluetoothGattService;

    iget-object v7, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v9, v14, Lcom/android/bluetooth/gatt/GattDbElement;->startHandle:I

    iget v14, v14, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    invoke-direct {v1, v7, v9, v14}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;II)V

    invoke-virtual {v8, v1}, Landroid/bluetooth/BluetoothGattService;->addIncludedService(Landroid/bluetooth/BluetoothGattService;)V

    .line 1517
    goto :goto_5

    .line 1468
    :cond_b
    move-object/from16 v16, v7

    .line 1471
    sget-boolean v7, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v7, :cond_c

    .line 1472
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "got service with UUID="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v14, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    :cond_c
    new-instance v1, Landroid/bluetooth/BluetoothGattService;

    iget-object v7, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v8, v14, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    iget v9, v14, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    invoke-direct {v1, v7, v8, v9}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;II)V

    .line 1476
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1477
    iget-object v7, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    .line 1478
    invoke-direct {v0, v7}, Lcom/android/bluetooth/gatt/GattService;->isFidoSrvcUuid(Ljava/util/UUID;)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-direct {v0, v7}, Lcom/android/bluetooth/gatt/GattService;->isAndroidTvRemoteSrvcUuid(Ljava/util/UUID;)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_3

    :cond_d
    const/4 v11, 0x0

    goto :goto_4

    :cond_e
    :goto_3
    const/4 v11, 0x1

    .line 1479
    :goto_4
    iget-object v7, v14, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-direct {v0, v7}, Lcom/android/bluetooth/gatt/GattService;->isHidSrvcUuid(Ljava/util/UUID;)Z

    move-result v13

    .line 1480
    if-eqz v11, :cond_f

    .line 1481
    iget v7, v14, Lcom/android/bluetooth/gatt/GattDbElement;->id:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1523
    :cond_f
    move-object v8, v1

    :cond_10
    :goto_5
    move/from16 v1, p1

    move-object/from16 v7, v16

    goto/16 :goto_0

    .line 1525
    :cond_11
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1526
    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mRestrictedHandles:Ljava/util/Map;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1529
    :cond_12
    iget-object v0, v3, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothGattCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v5, v1}, Landroid/bluetooth/IBluetoothGattCallback;->onSearchComplete(Ljava/lang/String;Ljava/util/List;I)V

    .line 1530
    return-void

    .line 1454
    :cond_13
    :goto_6
    const-string v0, "app or callback is null"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    return-void
.end method

.method onMtuChanged(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3112
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 3113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMtuChanged() - connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mtu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3116
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 3117
    if-nez v0, :cond_1

    .line 3118
    return-void

    .line 3121
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 3122
    if-nez p1, :cond_2

    .line 3123
    return-void

    .line 3126
    :cond_2
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {p1, v0, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onMtuChanged(Ljava/lang/String;I)V

    .line 3127
    return-void
.end method

.method onNotificationSent(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3067
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v0, :cond_0

    .line 3068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotificationSent() connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 3072
    if-nez v0, :cond_1

    .line 3073
    return-void

    .line 3076
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 3077
    if-nez p1, :cond_2

    .line 3078
    return-void

    .line 3081
    :cond_2
    iget-object v1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3082
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {p1, v0, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onNotificationSent(Ljava/lang/String;I)V

    goto :goto_0

    .line 3084
    :cond_3
    const/16 v1, 0x8f

    if-ne p2, v1, :cond_4

    .line 3085
    const/4 p2, 0x0

    .line 3087
    :cond_4
    new-instance v1, Lcom/android/bluetooth/gatt/CallbackInfo;

    invoke-direct {v1, v0, p2}, Lcom/android/bluetooth/gatt/CallbackInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/gatt/ContextMap$App;->queueCallback(Lcom/android/bluetooth/gatt/CallbackInfo;)V

    .line 3089
    :goto_0
    return-void
.end method

.method onNotify(ILjava/lang/String;IZ[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1544
    sget-boolean p4, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    const-string v0, "BtGatt.GattService"

    if-eqz p4, :cond_0

    .line 1545
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNotify() - address="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", handle="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p5

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :cond_0
    iget-object p4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {p4, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p4

    .line 1550
    if-eqz p4, :cond_2

    .line 1551
    invoke-direct {p0, p4, p1, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(Lcom/android/bluetooth/gatt/ContextMap$App;II)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1552
    const-string p1, "onNotify() - permission check failed!"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    return-void

    .line 1555
    :cond_1
    iget-object p1, p4, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {p1, p2, p3, p5}, Landroid/bluetooth/IBluetoothGattCallback;->onNotify(Ljava/lang/String;I[B)V

    .line 1557
    :cond_2
    return-void
.end method

.method onReadCharacteristic(III[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1561
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1563
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadCharacteristic() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.GattService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1568
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1569
    if-eqz p1, :cond_1

    .line 1570
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {p1, v0, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicRead(Ljava/lang/String;II[B)V

    .line 1572
    :cond_1
    return-void
.end method

.method onReadDescriptor(III[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1610
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1612
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReadDescriptor() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.GattService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1619
    if-eqz p1, :cond_1

    .line 1620
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {p1, v0, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorRead(Ljava/lang/String;II[B)V

    .line 1622
    :cond_1
    return-void
.end method

.method onReadRemoteRssi(ILjava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1639
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReadRemoteRssi() - clientIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1646
    if-eqz p1, :cond_1

    .line 1647
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattCallback;->onReadRemoteRssi(Ljava/lang/String;II)V

    .line 1649
    :cond_1
    return-void
.end method

.method onRegisterForNotifications(IIII)V
    .locals 2

    .line 1533
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object p1

    .line 1535
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRegisterForNotifications() - address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", status="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", registered="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", handle="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtGatt.GattService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    :cond_0
    return-void
.end method

.method onResponseSendCompleted(II)V
    .locals 1

    .line 3061
    sget-boolean p1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz p1, :cond_0

    .line 3062
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onResponseSendCompleted() handle="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtGatt.GattService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    :cond_0
    return-void
.end method

.method onScanFilterConfig(IIIII)V
    .locals 2

    .line 1670
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanFilterConfig() - clientIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", filterType="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", availableSpace="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "BtGatt.GattService"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {p1, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1677
    return-void
.end method

.method onScanFilterEnableDisabled(III)V
    .locals 2

    .line 1652
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanFilterEnableDisabled() - clientIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.GattService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {p1, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1657
    return-void
.end method

.method onScanFilterParamsConfigured(IIII)V
    .locals 2

    .line 1660
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanFilterParamsConfigured() - clientIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", availableSpace="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "BtGatt.GattService"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {p1, p3, p2}, Lcom/android/bluetooth/gatt/ScanManager;->callbackDone(II)V

    .line 1666
    return-void
.end method

.method onScanManagerErrorCallback(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1998
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1999
    const-string v0, "BtGatt.GattService"

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    if-nez v1, :cond_0

    goto :goto_1

    .line 2003
    :cond_0
    iget-object v1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 2004
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/le/IScannerCallback;

    invoke-interface {p1, p2}, Landroid/bluetooth/le/IScannerCallback;->onScanManagerErrorCallback(I)V

    goto :goto_0

    .line 2007
    :cond_1
    :try_start_0
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->sendErrorByPendingIntent(Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2010
    goto :goto_0

    .line 2008
    :catch_0
    move-exception p1

    .line 2009
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending error code via PendingIntent:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :goto_0
    return-void

    .line 2000
    :cond_2
    :goto_1
    const-string p1, "App or callback is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    return-void
.end method

.method onScanParamSetupCompleted(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1986
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p2

    .line 1987
    const-string v0, "BtGatt.GattService"

    if-eqz p2, :cond_2

    iget-object p2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez p2, :cond_0

    goto :goto_0

    .line 1991
    :cond_0
    sget-boolean p2, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz p2, :cond_1

    .line 1992
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onScanParamSetupCompleted : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1994
    :cond_1
    return-void

    .line 1988
    :cond_2
    :goto_0
    const-string p1, "Advertise app or callback is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    return-void
.end method

.method onScanResult(IILjava/lang/String;IIIIII[B)V
    .locals 25

    .line 1081
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-object/from16 v3, p10

    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    const-string v4, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 1082
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onScanResult() - eventType=0x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", addressType="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p2

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", address="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", primaryPhy="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", secondaryPhy="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p5

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", advertisingSid=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", txPower="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p7

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", rssi="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p8

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", periodicAdvInt=0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1082
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1081
    :cond_0
    move/from16 v5, p4

    move/from16 v15, p5

    move/from16 v14, p7

    move/from16 v13, p8

    .line 1088
    :goto_0
    invoke-direct {v1, v3}, Lcom/android/bluetooth/gatt/GattService;->parseUuids([B)Ljava/util/List;

    move-result-object v18

    .line 1090
    const/16 v0, 0x3e

    const/4 v12, 0x0

    invoke-static {v3, v12, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v19

    .line 1092
    iget-object v0, v1, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/bluetooth/gatt/ScanClient;

    .line 1093
    iget-object v0, v11, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 1094
    nop

    .line 1095
    iget-object v0, v11, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    array-length v6, v0

    move v7, v12

    move v8, v7

    :goto_2
    if-ge v7, v6, :cond_3

    aget-object v9, v0, v7

    .line 1096
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Ljava/util/UUID;

    .line 1097
    invoke-virtual {v12, v9}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 1098
    add-int/lit8 v8, v8, 0x1

    .line 1099
    goto :goto_4

    .line 1101
    :cond_1
    const/4 v12, 0x0

    goto :goto_3

    .line 1095
    :cond_2
    :goto_4
    add-int/lit8 v7, v7, 0x1

    const/4 v12, 0x0

    goto :goto_2

    .line 1104
    :cond_3
    iget-object v0, v11, Lcom/android/bluetooth/gatt/ScanClient;->uuids:[Ljava/util/UUID;

    array-length v0, v0

    if-ge v8, v0, :cond_4

    .line 1105
    const/4 v12, 0x0

    goto :goto_1

    .line 1109
    :cond_4
    iget-object v0, v1, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    iget v6, v11, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, v6}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1110
    if-nez v0, :cond_5

    .line 1111
    const/4 v12, 0x0

    goto :goto_1

    .line 1114
    :cond_5
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 1116
    iget-object v12, v11, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 1119
    invoke-virtual {v12}, Landroid/bluetooth/le/ScanSettings;->getLegacy()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1120
    and-int/lit8 v6, p1, 0x10

    if-nez v6, :cond_6

    .line 1122
    const/4 v12, 0x0

    goto :goto_1

    .line 1125
    :cond_6
    move-object/from16 v6, v19

    goto :goto_5

    .line 1128
    :cond_7
    move-object v6, v3

    .line 1131
    :goto_5
    new-instance v10, Landroid/bluetooth/le/ScanResult;

    .line 1134
    invoke-static {v6}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v16

    .line 1135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v21

    move-object v6, v10

    move/from16 v8, p1

    move/from16 v9, p4

    move-object v3, v10

    move/from16 v10, p5

    move-object v5, v11

    move/from16 v11, p6

    move-object/from16 v23, v12

    const/16 v24, 0x0

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    move-object/from16 v15, v16

    move-wide/from16 v16, v21

    invoke-direct/range {v6 .. v17}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;IIIIIIILandroid/bluetooth/le/ScanRecord;J)V

    .line 1136
    invoke-direct {v1, v5}, Lcom/android/bluetooth/gatt/GattService;->hasScanResultPermission(Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v6

    .line 1137
    const/4 v7, 0x1

    if-nez v6, :cond_9

    .line 1138
    iget-object v8, v5, Lcom/android/bluetooth/gatt/ScanClient;->associatedDevices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1139
    invoke-virtual {v9, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1140
    nop

    .line 1141
    move v6, v7

    goto :goto_7

    .line 1143
    :cond_8
    goto :goto_6

    .line 1145
    :cond_9
    :goto_7
    if-nez v6, :cond_a

    iget-boolean v8, v5, Lcom/android/bluetooth/gatt/ScanClient;->eligibleForSanitizedExposureNotification:Z

    if-eqz v8, :cond_a

    .line 1146
    invoke-virtual {v1, v3}, Lcom/android/bluetooth/gatt/GattService;->getSanitizedExposureNotification(Landroid/bluetooth/le/ScanResult;)Landroid/bluetooth/le/ScanResult;

    move-result-object v10

    .line 1147
    if-eqz v10, :cond_a

    .line 1148
    nop

    .line 1149
    move v6, v7

    goto :goto_8

    .line 1152
    :cond_a
    move-object v10, v3

    :goto_8
    if-eqz v6, :cond_e

    invoke-direct {v1, v5, v10}, Lcom/android/bluetooth/gatt/GattService;->matchesFilters(Lcom/android/bluetooth/gatt/ScanClient;Landroid/bluetooth/le/ScanResult;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1153
    move/from16 v5, p4

    move/from16 v15, p5

    move/from16 v14, p7

    move/from16 v13, p8

    move-object/from16 v3, p10

    move/from16 v12, v24

    goto/16 :goto_1

    .line 1156
    :cond_b
    invoke-virtual/range {v23 .. v23}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v3

    and-int/2addr v3, v7

    if-nez v3, :cond_c

    .line 1157
    move/from16 v5, p4

    move/from16 v15, p5

    move/from16 v14, p7

    move/from16 v13, p8

    move-object/from16 v3, p10

    move/from16 v12, v24

    goto/16 :goto_1

    .line 1161
    :cond_c
    :try_start_0
    iget-object v3, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->appScanStats:Lcom/android/bluetooth/gatt/AppScanStats;

    iget v6, v5, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v3, v6}, Lcom/android/bluetooth/gatt/AppScanStats;->addResult(I)V

    .line 1162
    iget-object v3, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-eqz v3, :cond_d

    .line 1163
    iget-object v0, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/le/IScannerCallback;

    invoke-interface {v0, v10}, Landroid/bluetooth/le/IScannerCallback;->onScanResult(Landroid/bluetooth/le/ScanResult;)V

    goto :goto_9

    .line 1166
    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1167
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    iget-object v0, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;

    invoke-direct {v1, v0, v3, v7}, Lcom/android/bluetooth/gatt/GattService;->sendResultsByPendingIntent(Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;Ljava/util/ArrayList;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1175
    :goto_9
    goto :goto_a

    .line 1171
    :catch_0
    move-exception v0

    .line 1172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v0, v1, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    iget v3, v5, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->remove(I)V

    .line 1174
    iget-object v0, v1, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    iget v3, v5, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/gatt/ScanManager;->stopScan(I)V

    .line 1176
    :goto_a
    move/from16 v5, p4

    move/from16 v15, p5

    move/from16 v14, p7

    move/from16 v13, p8

    move-object/from16 v3, p10

    move/from16 v12, v24

    goto/16 :goto_1

    .line 1152
    :cond_e
    move/from16 v5, p4

    move/from16 v15, p5

    move/from16 v14, p7

    move/from16 v13, p8

    move-object/from16 v3, p10

    move/from16 v12, v24

    goto/16 :goto_1

    .line 1177
    :cond_f
    return-void
.end method

.method onScannerRegistered(IIJJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1209
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 1210
    sget-boolean p3, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz p3, :cond_0

    .line 1211
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onScannerRegistered() - UUID="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", scannerId="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", status="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BtGatt.GattService"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    :cond_0
    iget-object p3, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {p3, v0}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p3

    .line 1217
    if-eqz p3, :cond_3

    .line 1218
    if-nez p1, :cond_2

    .line 1219
    iput p2, p3, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    .line 1222
    iget-object p4, p3, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-eqz p4, :cond_1

    .line 1223
    new-instance p4, Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;

    invoke-direct {p4, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ScannerDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {p3, p4}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    goto :goto_0

    .line 1225
    :cond_1
    invoke-virtual {p0, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->continuePiStartScan(ILcom/android/bluetooth/gatt/ContextMap$App;)V

    goto :goto_0

    .line 1228
    :cond_2
    iget-object p4, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {p4, p2}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->remove(I)V

    .line 1230
    :goto_0
    iget-object p4, p3, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-eqz p4, :cond_3

    .line 1231
    iget-object p3, p3, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p3, Landroid/bluetooth/le/IScannerCallback;

    invoke-interface {p3, p1, p2}, Landroid/bluetooth/le/IScannerCallback;->onScannerRegistered(II)V

    .line 1234
    :cond_3
    return-void
.end method

.method onSearchCompleted(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1425
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSearchCompleted() - connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BtGatt.GattService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_0
    new-instance p2, Ljava/lang/Thread;

    new-instance v0, Lcom/android/bluetooth/gatt/GattService$1;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/gatt/GattService$1;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-direct {p2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1438
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 1439
    return-void
.end method

.method onServerCongestion(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3092
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 3093
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServerCongestion() - connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", congested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3096
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 3097
    if-nez p1, :cond_1

    .line 3098
    return-void

    .line 3101
    :cond_1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    .line 3102
    :goto_0
    iget-object p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    .line 3103
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/ContextMap$App;->popQueuedCallback()Lcom/android/bluetooth/gatt/CallbackInfo;

    move-result-object p2

    .line 3104
    if-nez p2, :cond_2

    .line 3105
    return-void

    .line 3107
    :cond_2
    iget-object v0, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    iget-object v1, p2, Lcom/android/bluetooth/gatt/CallbackInfo;->address:Ljava/lang/String;

    iget p2, p2, Lcom/android/bluetooth/gatt/CallbackInfo;->status:I

    invoke-interface {v0, v1, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onNotificationSent(Ljava/lang/String;I)V

    .line 3108
    goto :goto_0

    .line 3109
    :cond_3
    return-void
.end method

.method onServerConnUpdate(IIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1407
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServerConnUpdate() - connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v2

    .line 1412
    if-nez v2, :cond_1

    .line 1413
    return-void

    .line 1416
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1417
    if-nez p1, :cond_2

    .line 1418
    return-void

    .line 1421
    :cond_2
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Landroid/bluetooth/IBluetoothGattServerCallback;

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/bluetooth/IBluetoothGattServerCallback;->onConnectionUpdated(Ljava/lang/String;IIII)V

    .line 1422
    return-void
.end method

.method onServerPhyRead(ILjava/lang/String;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1387
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServerPhyRead() - address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 1392
    if-nez p1, :cond_1

    .line 1393
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onServerPhyRead() - no connection to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1394
    return-void

    .line 1397
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1398
    if-nez p1, :cond_2

    .line 1399
    return-void

    .line 1402
    :cond_2
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {p1, p2, p3, p4, p5}, Landroid/bluetooth/IBluetoothGattServerCallback;->onPhyRead(Ljava/lang/String;III)V

    .line 1403
    return-void
.end method

.method onServerPhyUpdate(IIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1368
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServerPhyUpdate() - connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1373
    if-nez v0, :cond_1

    .line 1374
    return-void

    .line 1377
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1378
    if-nez p1, :cond_2

    .line 1379
    return-void

    .line 1382
    :cond_2
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {p1, v0, p2, p3, p4}, Landroid/bluetooth/IBluetoothGattServerCallback;->onPhyUpdate(Ljava/lang/String;III)V

    .line 1383
    return-void
.end method

.method onServerReadCharacteristic(Ljava/lang/String;IIIIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2954
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v0, :cond_0

    .line 2955
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServerReadCharacteristic() connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", address="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", handle="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", requestId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", offset="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BtGatt.GattService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2959
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {p2, p4}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object p2

    .line 2960
    if-nez p2, :cond_1

    .line 2961
    return-void

    .line 2964
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3, p4}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    .line 2966
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget p2, p2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p2

    .line 2967
    if-nez p2, :cond_2

    .line 2968
    return-void

    .line 2971
    :cond_2
    iget-object p2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicReadRequest(Ljava/lang/String;IIZI)V

    .line 2972
    return-void
.end method

.method onServerReadDescriptor(Ljava/lang/String;IIIIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2976
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v0, :cond_0

    .line 2977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServerReadDescriptor() connId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", address="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", handle="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", requestId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", offset="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BtGatt.GattService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {p2, p4}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object p2

    .line 2982
    if-nez p2, :cond_1

    .line 2983
    return-void

    .line 2986
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3, p4}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    .line 2988
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget p2, p2, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p2

    .line 2989
    if-nez p2, :cond_2

    .line 2990
    return-void

    .line 2993
    :cond_2
    iget-object p2, p2, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorReadRequest(Ljava/lang/String;IIZI)V

    .line 2994
    return-void
.end method

.method onServerRegistered(IIJJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2853
    new-instance v0, Ljava/util/UUID;

    invoke-direct {v0, p5, p6, p3, p4}, Ljava/util/UUID;-><init>(JJ)V

    .line 2854
    sget-boolean p3, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz p3, :cond_0

    .line 2855
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onServerRegistered() - UUID="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, ", serverIf="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BtGatt.GattService"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    :cond_0
    iget-object p3, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {p3, v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getByUuid(Ljava/util/UUID;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p3

    .line 2858
    if-eqz p3, :cond_1

    .line 2859
    iput p2, p3, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    .line 2860
    new-instance p4, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;

    invoke-direct {p4, p0, p2}, Lcom/android/bluetooth/gatt/GattService$ServerDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/GattService;I)V

    invoke-virtual {p3, p4}, Lcom/android/bluetooth/gatt/ContextMap$App;->linkToDeath(Landroid/os/IBinder$DeathRecipient;)V

    .line 2861
    iget-object p3, p3, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p3, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {p3, p1, p2}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServerRegistered(II)V

    .line 2863
    :cond_1
    return-void
.end method

.method onServerWriteCharacteristic(Ljava/lang/String;IIIIIZZ[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2999
    move-object v0, p0

    move v2, p3

    move v7, p4

    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v1, :cond_0

    .line 3000
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServerWriteCharacteristic() connId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", address="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", handle="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requestId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isPrep="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p8

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", offset="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "BtGatt.GattService"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2999
    :cond_0
    move-object v3, p1

    move v4, p5

    move/from16 v5, p8

    .line 3005
    :goto_0
    iget-object v1, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p4}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v1

    .line 3006
    if-nez v1, :cond_1

    .line 3007
    return-void

    .line 3010
    :cond_1
    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v6, p3, p4}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    .line 3012
    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v1, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 3013
    if-nez v0, :cond_2

    .line 3014
    return-void

    .line 3017
    :cond_2
    iget-object v0, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p8

    move/from16 v6, p7

    move v7, p4

    move-object/from16 v8, p9

    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattServerCallback;->onCharacteristicWriteRequest(Ljava/lang/String;IIIZZI[B)V

    .line 3019
    return-void
.end method

.method onServerWriteDescriptor(Ljava/lang/String;IIIIIZZ[B)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3023
    move-object v0, p0

    move v2, p3

    move v7, p4

    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v1, :cond_0

    .line 3024
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAttributeWrite() connId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", address="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", handle="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requestId="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isPrep="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p8

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", offset="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, p5

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "BtGatt.GattService"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3023
    :cond_0
    move-object v3, p1

    move v4, p5

    move/from16 v5, p8

    .line 3029
    :goto_0
    iget-object v1, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p4}, Lcom/android/bluetooth/gatt/HandleMap;->getByHandle(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v1

    .line 3030
    if-nez v1, :cond_1

    .line 3031
    return-void

    .line 3034
    :cond_1
    iget-object v6, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v6, p3, p4}, Lcom/android/bluetooth/gatt/HandleMap;->addRequest(II)V

    .line 3036
    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    iget v1, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->serverIf:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 3037
    if-nez v0, :cond_2

    .line 3038
    return-void

    .line 3041
    :cond_2
    iget-object v0, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    move-object v1, p1

    move v2, p3

    move v3, p5

    move v4, p6

    move/from16 v5, p8

    move/from16 v6, p7

    move v7, p4

    move-object/from16 v8, p9

    invoke-interface/range {v0 .. v8}, Landroid/bluetooth/IBluetoothGattServerCallback;->onDescriptorWriteRequest(Ljava/lang/String;IIIZZI[B)V

    .line 3043
    return-void
.end method

.method onServiceAdded(IILjava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/gatt/GattDbElement;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2867
    move-object v0, p0

    move/from16 v1, p1

    move/from16 v9, p2

    sget-boolean v2, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v2, :cond_0

    .line 2868
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceAdded(), status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BtGatt.GattService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    :cond_0
    if-eqz v1, :cond_1

    .line 2872
    return-void

    .line 2875
    :cond_1
    const/4 v10, 0x0

    move-object/from16 v2, p3

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/bluetooth/gatt/GattDbElement;

    .line 2876
    iget v12, v11, Lcom/android/bluetooth/gatt/GattDbElement;->attributeHandle:I

    .line 2878
    const/4 v3, 0x0

    .line 2880
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v14, 0x1

    if-eqz v2, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/GattDbElement;

    .line 2881
    iget v4, v2, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    if-nez v4, :cond_2

    .line 2882
    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v4, v2, Lcom/android/bluetooth/gatt/GattDbElement;->attributeHandle:I

    iget-object v5, v2, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v3

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/bluetooth/gatt/HandleMap;->addService(IILjava/util/UUID;IIZ)V

    .line 2884
    new-instance v2, Landroid/bluetooth/BluetoothGattService;

    iget-object v3, v11, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v4, v11, Lcom/android/bluetooth/gatt/GattDbElement;->attributeHandle:I

    invoke-direct {v2, v3, v4, v10}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;II)V

    move-object v3, v2

    goto :goto_1

    .line 2886
    :cond_2
    iget v4, v2, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    if-ne v4, v14, :cond_3

    .line 2887
    iget-object v3, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v4, v2, Lcom/android/bluetooth/gatt/GattDbElement;->attributeHandle:I

    iget-object v5, v2, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v3

    move/from16 v3, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/bluetooth/gatt/HandleMap;->addService(IILjava/util/UUID;IIZ)V

    .line 2889
    new-instance v2, Landroid/bluetooth/BluetoothGattService;

    iget-object v3, v11, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v4, v11, Lcom/android/bluetooth/gatt/GattDbElement;->attributeHandle:I

    invoke-direct {v2, v3, v4, v14}, Landroid/bluetooth/BluetoothGattService;-><init>(Ljava/util/UUID;II)V

    move-object v3, v2

    goto :goto_1

    .line 2891
    :cond_3
    iget v4, v2, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 2892
    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v5, v2, Lcom/android/bluetooth/gatt/GattDbElement;->attributeHandle:I

    iget-object v6, v2, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v4, v9, v5, v6, v12}, Lcom/android/bluetooth/gatt/HandleMap;->addCharacteristic(IILjava/util/UUID;I)V

    .line 2893
    new-instance v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v5, v2, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v6, v2, Lcom/android/bluetooth/gatt/GattDbElement;->attributeHandle:I

    iget v7, v2, Lcom/android/bluetooth/gatt/GattDbElement;->properties:I

    iget v2, v2, Lcom/android/bluetooth/gatt/GattDbElement;->permissions:I

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/bluetooth/BluetoothGattCharacteristic;-><init>(Ljava/util/UUID;III)V

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothGattService;->addCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    goto :goto_1

    .line 2896
    :cond_4
    iget v4, v2, Lcom/android/bluetooth/gatt/GattDbElement;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 2897
    iget-object v4, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    iget v5, v2, Lcom/android/bluetooth/gatt/GattDbElement;->attributeHandle:I

    iget-object v6, v2, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    invoke-virtual {v4, v9, v5, v6, v12}, Lcom/android/bluetooth/gatt/HandleMap;->addDescriptor(IILjava/util/UUID;I)V

    .line 2898
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v4

    .line 2899
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattCharacteristic;

    new-instance v5, Landroid/bluetooth/BluetoothGattDescriptor;

    iget-object v6, v2, Lcom/android/bluetooth/gatt/GattDbElement;->uuid:Ljava/util/UUID;

    iget v7, v2, Lcom/android/bluetooth/gatt/GattDbElement;->attributeHandle:I

    iget v2, v2, Lcom/android/bluetooth/gatt/GattDbElement;->permissions:I

    invoke-direct {v5, v6, v7, v2}, Landroid/bluetooth/BluetoothGattDescriptor;-><init>(Ljava/util/UUID;II)V

    .line 2900
    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothGattCharacteristic;->addDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    .line 2903
    :cond_5
    :goto_1
    goto/16 :goto_0

    .line 2904
    :cond_6
    iget-object v2, v0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v2, v9, v12, v14}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    .line 2906
    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, v9}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 2907
    if-eqz v0, :cond_7

    .line 2908
    iget-object v0, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/IBluetoothGattServerCallback;

    invoke-interface {v0, v1, v3}, Landroid/bluetooth/IBluetoothGattServerCallback;->onServiceAdded(ILandroid/bluetooth/BluetoothGattService;)V

    .line 2910
    :cond_7
    return-void
.end method

.method onServiceDeleted(III)V
    .locals 2

    .line 2923
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDeleted() srvcHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.GattService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteService(II)V

    .line 2927
    return-void
.end method

.method onServiceStopped(III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2913
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStopped() srvcHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :cond_0
    if-nez p1, :cond_1

    .line 2917
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/bluetooth/gatt/HandleMap;->setStarted(IIZ)V

    .line 2919
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/gatt/GattService;->stopNextService(II)V

    .line 2920
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 385
    const/4 v0, 0x2

    if-nez p1, :cond_0

    .line 386
    const-string p1, "BtGatt.GattService"

    const-string p2, "onStartCommand ignoring null intent."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return v0

    .line 391
    :cond_0
    invoke-static {p0, p1}, Lcom/android/bluetooth/gatt/GattDebugUtils;->handleDebugAction(Lcom/android/bluetooth/gatt/GattService;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    return v0

    .line 394
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/ProfileService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method onTrackAdvFoundLost(Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1934
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 1935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrackAdvFoundLost() - scannerId= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getClientIf()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " address = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " adv_state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAdvState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1935
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getClientIf()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    .line 1941
    if-eqz v0, :cond_8

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 1947
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 1948
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getAdvState()I

    move-result v2

    .line 1949
    new-instance v3, Landroid/bluetooth/le/ScanResult;

    .line 1950
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getResult()[B

    move-result-object v4

    invoke-static {v4}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v6

    .line 1951
    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getRSSIValue()I

    move-result v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Landroid/bluetooth/le/ScanResult;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanRecord;IJ)V

    .line 1953
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v4}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/gatt/ScanClient;

    .line 1954
    iget v6, v5, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/AdvtFilterOnFoundOnLostInfo;->getClientIf()I

    move-result v7

    if-ne v6, v7, :cond_6

    .line 1955
    iget-object v6, v5, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 1956
    const/4 v7, 0x1

    if-nez v2, :cond_3

    .line 1957
    invoke-virtual {v6}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v8

    const/4 v9, 0x2

    and-int/2addr v8, v9

    if-eqz v8, :cond_3

    .line 1959
    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-eqz v6, :cond_2

    .line 1960
    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/le/IScannerCallback;

    invoke-interface {v5, v7, v3}, Landroid/bluetooth/le/IScannerCallback;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    goto :goto_1

    .line 1962
    :cond_2
    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    check-cast v6, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;

    invoke-direct {p0, v6, v3, v9, v5}, Lcom/android/bluetooth/gatt/GattService;->sendResultByPendingIntent(Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;Landroid/bluetooth/le/ScanResult;ILcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_1

    .line 1965
    :cond_3
    if-ne v2, v7, :cond_5

    .line 1966
    invoke-virtual {v6}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v7

    const/4 v8, 0x4

    and-int/2addr v7, v8

    if-eqz v7, :cond_5

    .line 1968
    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-eqz v6, :cond_4

    .line 1969
    iget-object v5, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v5, Landroid/bluetooth/le/IScannerCallback;

    const/4 v6, 0x0

    invoke-interface {v5, v6, v3}, Landroid/bluetooth/le/IScannerCallback;->onFoundOrLost(ZLandroid/bluetooth/le/ScanResult;)V

    goto :goto_1

    .line 1971
    :cond_4
    iget-object v6, v0, Lcom/android/bluetooth/gatt/ContextMap$App;->info:Ljava/lang/Object;

    check-cast v6, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;

    invoke-direct {p0, v6, v3, v8, v5}, Lcom/android/bluetooth/gatt/GattService;->sendResultByPendingIntent(Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;Landroid/bluetooth/le/ScanResult;ILcom/android/bluetooth/gatt/ScanClient;)V

    goto :goto_1

    .line 1975
    :cond_5
    sget-boolean v7, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v7, :cond_6

    .line 1976
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not reporting onlost/onfound : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " scannerId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/bluetooth/gatt/ScanClient;->scannerId:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " callbackType "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1978
    invoke-virtual {v6}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1976
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1982
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 1983
    :cond_7
    return-void

    .line 1942
    :cond_8
    :goto_2
    const-string p1, "app or callback is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1943
    return-void
.end method

.method onWriteCharacteristic(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1575
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1577
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1578
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWriteCharacteristic() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.GattService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1582
    if-nez p1, :cond_1

    .line 1583
    return-void

    .line 1586
    :cond_1
    iget-object v1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->isCongested:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1587
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {p1, v0, p2, p3}, Landroid/bluetooth/IBluetoothGattCallback;->onCharacteristicWrite(Ljava/lang/String;II)V

    goto :goto_0

    .line 1589
    :cond_2
    const/16 v1, 0x8f

    if-ne p2, v1, :cond_3

    .line 1590
    const/4 p2, 0x0

    .line 1592
    :cond_3
    new-instance v1, Lcom/android/bluetooth/gatt/CallbackInfo;

    invoke-direct {v1, v0, p2, p3}, Lcom/android/bluetooth/gatt/CallbackInfo;-><init>(Ljava/lang/String;II)V

    .line 1593
    invoke-virtual {p1, v1}, Lcom/android/bluetooth/gatt/ContextMap$App;->queueCallback(Lcom/android/bluetooth/gatt/CallbackInfo;)V

    .line 1595
    :goto_0
    return-void
.end method

.method onWriteDescriptor(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1625
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->addressByConnId(I)Ljava/lang/String;

    move-result-object v0

    .line 1627
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v1, :cond_0

    .line 1628
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWriteDescriptor() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.GattService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1631
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getByConnId(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 1632
    if-eqz p1, :cond_1

    .line 1633
    iget-object p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {p1, v0, p2, p3}, Landroid/bluetooth/IBluetoothGattCallback;->onDescriptorWrite(Ljava/lang/String;II)V

    .line 1635
    :cond_1
    return-void
.end method

.method parseTimestampNanos([B)J
    .locals 4

    .line 1853
    invoke-static {p1}, Lcom/android/bluetooth/util/NumberUtils;->littleEndianByteArrayToInt([B)I

    move-result p1

    int-to-long v0, p1

    .line 1855
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x32

    mul-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    return-wide v0
.end method

.method readCharacteristic(ILjava/lang/String;II)V
    .locals 3

    .line 2605
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2607
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 2608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readCharacteristic() - address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 2612
    if-nez p1, :cond_1

    .line 2613
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "readCharacteristic() - No connection for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2614
    return-void

    .line 2617
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(II)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2618
    const-string p1, "readCharacteristic() - permission check failed!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    return-void

    .line 2622
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadCharacteristicNative(III)V

    .line 2623
    return-void
.end method

.method readDescriptor(ILjava/lang/String;II)V
    .locals 3

    .line 2675
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2677
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 2678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readDescriptor() - address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2681
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 2682
    if-nez p1, :cond_1

    .line 2683
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "readDescriptor() - No connection for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    return-void

    .line 2687
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(II)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2688
    const-string p1, "readDescriptor() - permission check failed!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2689
    return-void

    .line 2692
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadDescriptorNative(III)V

    .line 2693
    return-void
.end method

.method readRemoteRssi(ILjava/lang/String;)V
    .locals 2

    .line 2762
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2764
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readRemoteRssi() - address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2767
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadRemoteRssiNative(ILjava/lang/String;)V

    .line 2768
    return-void
.end method

.method readUsingCharacteristicUuid(ILjava/lang/String;Ljava/util/UUID;III)V
    .locals 9

    .line 2627
    const-string v2, "android.permission.BLUETOOTH"

    const-string v3, "Need BLUETOOTH permission"

    invoke-virtual {p0, v2, v3}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    sget-boolean v2, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    const-string v3, "BtGatt.GattService"

    if-eqz v2, :cond_0

    .line 2630
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readUsingCharacteristicUuid() - address="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 2634
    if-nez v2, :cond_1

    .line 2635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readUsingCharacteristicUuid() - No connection for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2636
    return-void

    .line 2639
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(Ljava/util/UUID;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 2640
    const-string v0, "readUsingCharacteristicUuid() - permission check failed!"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2641
    return-void

    .line 2644
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v3

    .line 2645
    invoke-virtual {p3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v5

    .line 2644
    move-object v0, p0

    move v1, v2

    move-wide v2, v3

    move-wide v4, v5

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->gattClientReadUsingCharacteristicUuidNative(IJJIII)V

    .line 2646
    return-void
.end method

.method refreshDevice(ILjava/lang/String;)V
    .locals 2

    .line 2569
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshDevice() - address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientRefreshNative(ILjava/lang/String;)V

    .line 2575
    return-void
.end method

.method registerClient(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattCallback;)V
    .locals 8

    .line 2469
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2472
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerClient() - UUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->add(Ljava/util/UUID;Landroid/os/WorkSource;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 2475
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterAppNative(JJ)V

    .line 2476
    return-void
.end method

.method registerForNotification(ILjava/lang/String;IZ)V
    .locals 3

    .line 2741
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 2744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForNotification() - address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " enable: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2747
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 2748
    if-nez v0, :cond_1

    .line 2749
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "registerForNotification() - No connection for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2750
    return-void

    .line 2753
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2754
    const-string p1, "registerForNotification() - permission check failed!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2755
    return-void

    .line 2758
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattClientRegisterForNotificationsNative(ILjava/lang/String;IZ)V

    .line 2759
    return-void
.end method

.method registerPiAndStartScan(Landroid/app/PendingIntent;Landroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/PendingIntent;",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2204
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 2205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start scan with filters, for PendingIntent - callingPackage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", callingFeatureId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2207
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2208
    invoke-direct {p0, p2}, Lcom/android/bluetooth/gatt/GattService;->needsPrivilegedPermissionForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2209
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 2212
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 2213
    sget-boolean v2, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v2, :cond_2

    .line 2214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startScan(PI) - UUID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    :cond_2
    new-instance v6, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;

    invoke-direct {v6, p0}, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    .line 2217
    iput-object p1, v6, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->intent:Landroid/app/PendingIntent;

    .line 2218
    iput-object p2, v6, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 2219
    iput-object p3, v6, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->filters:Ljava/util/List;

    .line 2220
    iput-object p4, v6, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->callingPackage:Ljava/lang/String;

    .line 2223
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {p1, v6}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getByContextInfo(Ljava/lang/Object;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2224
    const-string p1, "Don\'t startScan(PI) since the same Pi scan already in mScannerMap."

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    return-void

    .line 2228
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, v0

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->add(Ljava/util/UUID;Landroid/os/WorkSource;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 2229
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p2

    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    iput-object p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->mUserHandle:Landroid/os/UserHandle;

    .line 2230
    iget-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    invoke-virtual {p2, p3, p4}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2231
    iget-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mExposureNotificationPackage:Ljava/lang/String;

    .line 2232
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->mEligibleForSanitizedExposureNotification:Z

    .line 2233
    invoke-static {p0, p4}, Lcom/android/bluetooth/Utils;->isQApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->mIsQApp:Z

    .line 2235
    :try_start_0
    iget-boolean p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->mIsQApp:Z

    if-eqz p2, :cond_4

    .line 2236
    iget-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object p3, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p0, p2, p4, p5, p3}, Lcom/android/bluetooth/Utils;->checkCallerHasFineLocation(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->hasLocationPermission:Z

    goto :goto_0

    .line 2239
    :cond_4
    iget-object p2, p0, Lcom/android/bluetooth/gatt/GattService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object p3, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p0, p2, p4, p5, p3}, Lcom/android/bluetooth/Utils;->checkCallerHasCoarseOrFineLocation(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->hasLocationPermission:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2245
    :goto_0
    goto :goto_1

    .line 2242
    :catch_0
    move-exception p2

    .line 2244
    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->hasLocationPermission:Z

    .line 2246
    :goto_1
    nop

    .line 2247
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->checkCallerHasNetworkSettingsPermission(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->mHasNetworkSettingsPermission:Z

    .line 2248
    nop

    .line 2249
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->checkCallerHasNetworkSetupWizardPermission(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->mHasNetworkSetupWizardPermission:Z

    .line 2250
    nop

    .line 2251
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->checkCallerHasScanWithoutLocationPermission(Landroid/content/Context;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->mHasScanWithoutLocationPermission:Z

    .line 2252
    iget-object p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->mUserHandle:Landroid/os/UserHandle;

    invoke-direct {p0, p4, p2}, Lcom/android/bluetooth/gatt/GattService;->getAssociatedDevices(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->mAssociatedDevices:Ljava/util/List;

    .line 2253
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/gatt/ScanManager;->registerScanner(Ljava/util/UUID;)V

    .line 2254
    return-void
.end method

.method registerScanner(Landroid/bluetooth/le/IScannerCallback;Landroid/os/WorkSource;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2095
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 2098
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v2, "BtGatt.GattService"

    if-eqz v1, :cond_0

    .line 2099
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerScanner() - UUID="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :cond_0
    if-eqz p2, :cond_1

    .line 2103
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceImpersonatationPermission()V

    .line 2106
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getAppScanStatsByUid(I)Lcom/android/bluetooth/gatt/AppScanStats;

    move-result-object v1

    .line 2107
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/AppScanStats;->isScanningTooFrequently()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2108
    const-string v3, "android.permission.BLUETOOTH_PRIVILEGED"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/gatt/GattService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_2

    .line 2109
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "App \'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' is scanning too frequently"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    const/4 p2, 0x6

    const/4 v0, -0x1

    invoke-interface {p1, p2, v0}, Landroid/bluetooth/le/IScannerCallback;->onScannerRegistered(II)V

    .line 2111
    return-void

    .line 2114
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    const/4 v6, 0x0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p1

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->add(Ljava/util/UUID;Landroid/os/WorkSource;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 2115
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/gatt/ScanManager;->registerScanner(Ljava/util/UUID;)V

    .line 2116
    return-void
.end method

.method registerServer(Ljava/util/UUID;Landroid/bluetooth/IBluetoothGattServerCallback;)V
    .locals 8

    .line 3134
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3136
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 3137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerServer() - UUID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p2

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->add(Ljava/util/UUID;Landroid/os/WorkSource;Ljava/lang/Object;Ljava/lang/Object;Lcom/android/bluetooth/gatt/GattService;)Lcom/android/bluetooth/gatt/ContextMap$App;

    .line 3140
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattServerRegisterAppNative(JJ)V

    .line 3141
    return-void
.end method

.method registerSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    .locals 1

    .line 2397
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2398
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mPeriodicScanManager:Lcom/android/bluetooth/gatt/PeriodicScanManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->startSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    .line 2399
    return-void
.end method

.method removeService(II)V
    .locals 2

    .line 3253
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3255
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 3256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeService() - handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3259
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattServerDeleteServiceNative(II)V

    .line 3260
    return-void
.end method

.method sendNotification(ILjava/lang/String;IZ[B)V
    .locals 2

    .line 3292
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3294
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v0, :cond_0

    .line 3295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendNotification() - address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3298
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 3299
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 3303
    :cond_1
    if-eqz p4, :cond_2

    .line 3304
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p3, p2, p5}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendIndicationNative(III[B)V

    goto :goto_0

    .line 3306
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p3, p2, p5}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendNotificationNative(III[B)V

    .line 3308
    :goto_0
    return-void

    .line 3300
    :cond_3
    :goto_1
    return-void
.end method

.method sendResponse(ILjava/lang/String;III[B)V
    .locals 11

    .line 3273
    move-object v9, p0

    move-object v0, p2

    move v10, p3

    const-string v1, "android.permission.BLUETOOTH"

    const-string v2, "Need BLUETOOTH permission"

    invoke-virtual {p0, v1, v2}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3275
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz v1, :cond_0

    .line 3276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendResponse() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.GattService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    :cond_0
    nop

    .line 3280
    iget-object v1, v9, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v1, p3}, Lcom/android/bluetooth/gatt/HandleMap;->getByRequestId(I)Lcom/android/bluetooth/gatt/HandleMap$Entry;

    move-result-object v1

    .line 3281
    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3282
    iget v1, v1, Lcom/android/bluetooth/gatt/HandleMap$Entry;->handle:I

    move v5, v1

    goto :goto_0

    .line 3281
    :cond_1
    move v5, v2

    .line 3285
    :goto_0
    iget-object v1, v9, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    move v3, p1

    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 3286
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v2, v0

    :cond_2
    move v0, p4

    int-to-byte v4, v0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/gatt/GattService;->gattServerSendResponseNative(IIIIII[BI)V

    .line 3288
    iget-object v0, v9, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0, p3}, Lcom/android/bluetooth/gatt/HandleMap;->deleteRequest(I)V

    .line 3289
    return-void
.end method

.method serverConnect(ILjava/lang/String;ZI)V
    .locals 2

    .line 3157
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3159
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 3160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverConnect() - address="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3162
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/GattService;->gattServerConnectNative(ILjava/lang/String;ZI)V

    .line 3163
    return-void
.end method

.method serverDisconnect(ILjava/lang/String;)V
    .locals 3

    .line 3166
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 3169
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v1, :cond_0

    .line 3170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "serverDisconnect() - address="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", connId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.GattService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3173
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/bluetooth/gatt/GattService;->gattServerDisconnectNative(ILjava/lang/String;I)V

    .line 3174
    return-void
.end method

.method serverReadPhy(ILjava/lang/String;)V
    .locals 4

    .line 3194
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3196
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 3197
    const-string v1, "BtGatt.GattService"

    if-nez v0, :cond_1

    .line 3198
    sget-boolean p1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz p1, :cond_0

    .line 3199
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "serverReadPhy() - no connection to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    :cond_0
    return-void

    .line 3204
    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v2, :cond_2

    .line 3205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverReadPhy() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3207
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/GattService;->gattServerReadPhyNative(ILjava/lang/String;)V

    .line 3208
    return-void
.end method

.method serverSetPreferredPhy(ILjava/lang/String;III)V
    .locals 4

    .line 3177
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3179
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 3180
    const-string v1, "BtGatt.GattService"

    if-nez v0, :cond_1

    .line 3181
    sget-boolean p1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz p1, :cond_0

    .line 3182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "serverSetPreferredPhy() - no connection to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3184
    :cond_0
    return-void

    .line 3187
    :cond_1
    sget-boolean v2, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v2, :cond_2

    .line 3188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverSetPreferredPhy() - address="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", connId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3190
    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/android/bluetooth/gatt/GattService;->gattServerSetPreferredPhyNative(ILjava/lang/String;III)V

    .line 3191
    return-void
.end method

.method setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    .locals 1

    .line 2434
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2435
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 2436
    return-void
.end method

.method setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V
    .locals 1

    .line 2444
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2445
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V

    .line 2446
    return-void
.end method

.method setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    .locals 1

    .line 2455
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2456
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 2457
    return-void
.end method

.method setPeriodicAdvertisingEnable(IZ)V
    .locals 1

    .line 2460
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2461
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setPeriodicAdvertisingEnable(IZ)V

    .line 2462
    return-void
.end method

.method setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .locals 1

    .line 2450
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2451
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V

    .line 2452
    return-void
.end method

.method setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V
    .locals 1

    .line 2439
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2440
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V

    .line 2441
    return-void
.end method

.method protected start()Z
    .locals 3

    .line 209
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 210
    const-string v0, "BtGatt.GattService"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    const v0, 0x7f0e0049

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mExposureNotificationPackage:Ljava/lang/String;

    .line 213
    nop

    .line 214
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 213
    const-string v1, "bluetooth_sanitized_exposure_notification_supported"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 215
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->initializeNative()V

    .line 216
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 217
    nop

    .line 218
    const-string v0, "companiondevice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 217
    invoke-static {v0}, Landroid/companion/ICompanionDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mCompanionManager:Landroid/companion/ICompanionDeviceManager;

    .line 219
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/gatt/GattService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAppOps:Landroid/app/AppOpsManager;

    .line 220
    new-instance v0, Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;-><init>(Lcom/android/bluetooth/gatt/GattService;Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    .line 221
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->start()V

    .line 223
    new-instance v0, Lcom/android/bluetooth/gatt/ScanManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanManager;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    .line 224
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->start()V

    .line 226
    new-instance v0, Lcom/android/bluetooth/gatt/PeriodicScanManager;

    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/gatt/PeriodicScanManager;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mPeriodicScanManager:Lcom/android/bluetooth/gatt/PeriodicScanManager;

    .line 227
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->start()V

    .line 229
    invoke-static {p0}, Lcom/android/bluetooth/gatt/GattService;->setGattService(Lcom/android/bluetooth/gatt/GattService;)V

    .line 230
    return v2
.end method

.method startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V
    .locals 9

    .line 2413
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2414
    move-object v0, p0

    iget-object v0, v0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/gatt/AdvertiseManager;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 2416
    return-void
.end method

.method startScan(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ResultStorageDescriptor;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2158
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start scan with filters - scannerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";callingPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingFeatureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2161
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 2162
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2163
    invoke-direct {p0, p2}, Lcom/android/bluetooth/gatt/GattService;->needsPrivilegedPermissionForScan(Landroid/bluetooth/le/ScanSettings;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2164
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforcePrivilegedPermission()V

    .line 2166
    :cond_1
    new-instance v0, Lcom/android/bluetooth/gatt/ScanClient;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/ScanClient;-><init>(ILandroid/bluetooth/le/ScanSettings;Ljava/util/List;Ljava/util/List;)V

    .line 2167
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p4

    invoke-static {p4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p4

    iput-object p4, v0, Lcom/android/bluetooth/gatt/ScanClient;->userHandle:Landroid/os/UserHandle;

    .line 2168
    iget-object p4, p0, Lcom/android/bluetooth/gatt/GattService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p4, v1, p5}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2169
    iget-object p4, p0, Lcom/android/bluetooth/gatt/GattService;->mExposureNotificationPackage:Ljava/lang/String;

    .line 2170
    invoke-virtual {p5, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/bluetooth/gatt/ScanClient;->eligibleForSanitizedExposureNotification:Z

    .line 2171
    invoke-static {p0, p5}, Lcom/android/bluetooth/Utils;->isQApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/bluetooth/gatt/ScanClient;->isQApp:Z

    .line 2172
    iget-boolean p4, v0, Lcom/android/bluetooth/gatt/ScanClient;->isQApp:Z

    if-eqz p4, :cond_2

    .line 2173
    iget-object p4, p0, Lcom/android/bluetooth/gatt/GattService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ScanClient;->userHandle:Landroid/os/UserHandle;

    invoke-static {p0, p4, p5, p6, v1}, Lcom/android/bluetooth/Utils;->checkCallerHasFineLocation(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/bluetooth/gatt/ScanClient;->hasLocationPermission:Z

    goto :goto_0

    .line 2176
    :cond_2
    iget-object p4, p0, Lcom/android/bluetooth/gatt/GattService;->mAppOps:Landroid/app/AppOpsManager;

    iget-object v1, v0, Lcom/android/bluetooth/gatt/ScanClient;->userHandle:Landroid/os/UserHandle;

    invoke-static {p0, p4, p5, p6, v1}, Lcom/android/bluetooth/Utils;->checkCallerHasCoarseOrFineLocation(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/bluetooth/gatt/ScanClient;->hasLocationPermission:Z

    .line 2179
    :goto_0
    nop

    .line 2180
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->checkCallerHasNetworkSettingsPermission(Landroid/content/Context;)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/bluetooth/gatt/ScanClient;->hasNetworkSettingsPermission:Z

    .line 2181
    nop

    .line 2182
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->checkCallerHasNetworkSetupWizardPermission(Landroid/content/Context;)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/bluetooth/gatt/ScanClient;->hasNetworkSetupWizardPermission:Z

    .line 2183
    nop

    .line 2184
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->checkCallerHasScanWithoutLocationPermission(Landroid/content/Context;)Z

    move-result p4

    iput-boolean p4, v0, Lcom/android/bluetooth/gatt/ScanClient;->hasScanWithoutLocationPermission:Z

    .line 2185
    iget-object p4, v0, Lcom/android/bluetooth/gatt/ScanClient;->userHandle:Landroid/os/UserHandle;

    invoke-direct {p0, p5, p4}, Lcom/android/bluetooth/gatt/GattService;->getAssociatedDevices(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p4

    iput-object p4, v0, Lcom/android/bluetooth/gatt/ScanClient;->associatedDevices:Ljava/util/List;

    .line 2187
    iget-object p4, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {p4, p1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getAppScanStatsById(I)Lcom/android/bluetooth/gatt/AppScanStats;

    move-result-object v1

    .line 2188
    iget-object p4, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {p4, p1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p4

    .line 2189
    if-eqz v1, :cond_6

    .line 2190
    iput-object v1, v0, Lcom/android/bluetooth/gatt/ScanClient;->stats:Lcom/android/bluetooth/gatt/AppScanStats;

    .line 2191
    const/4 p5, 0x1

    const/4 p6, 0x0

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    move v4, p5

    goto :goto_1

    :cond_3
    move v4, p6

    .line 2192
    :goto_1
    nop

    .line 2193
    if-eqz p4, :cond_5

    .line 2194
    iget-object p4, p4, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    if-eqz p4, :cond_4

    goto :goto_2

    :cond_4
    move p5, p6

    :goto_2
    move v5, p5

    goto :goto_3

    .line 2193
    :cond_5
    move v5, p6

    .line 2196
    :goto_3
    move-object v2, p2

    move-object v3, p3

    move v6, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/bluetooth/gatt/AppScanStats;->recordScanStart(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;ZZI)V

    .line 2199
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/gatt/ScanManager;->startScan(Lcom/android/bluetooth/gatt/ScanClient;)V

    .line 2200
    return-void
.end method

.method protected stop()Z
    .locals 2

    .line 263
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 264
    const-string v0, "BtGatt.GattService"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->stopAllScans()V

    .line 270
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->updateClientState()V

    .line 272
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/gatt/GattService;->setGattService(Lcom/android/bluetooth/gatt/GattService;)V

    .line 273
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->clear()V

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->clear()V

    .line 275
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->clear()V

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mHandleMap:Lcom/android/bluetooth/gatt/HandleMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/HandleMap;->clear()V

    .line 277
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 278
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->cleanup()V

    .line 281
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    if-eqz v0, :cond_2

    .line 282
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->cleanup()V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mPeriodicScanManager:Lcom/android/bluetooth/gatt/PeriodicScanManager;

    if-eqz v0, :cond_3

    .line 285
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->cleanup()V

    .line 287
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V
    .locals 1

    .line 2419
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2420
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 2421
    return-void
.end method

.method stopAllScans()V
    .locals 5

    .line 2380
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    const-string v0, "stopAllScans()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getAllAppsIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2383
    sget-boolean v3, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScannerMap unreg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/gatt/GattService;->isScanClient(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2385
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/gatt/GattService;->stopScan(I)V

    .line 2386
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->unregisterScanner(I)V

    .line 2388
    :cond_2
    goto :goto_0

    .line 2389
    :cond_3
    return-void
.end method

.method stopScan(I)V
    .locals 3

    .line 2289
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2290
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    .line 2291
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager;->getBatchScanQueue()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v1}, Lcom/android/bluetooth/gatt/ScanManager;->getRegularScanQueue()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 2292
    sget-boolean v1, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v1, :cond_0

    .line 2293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopScan() - queue size ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :cond_0
    nop

    .line 2297
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getAppScanStatsById(I)Lcom/android/bluetooth/gatt/AppScanStats;

    move-result-object v0

    .line 2298
    if-eqz v0, :cond_1

    .line 2299
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/AppScanStats;->recordScanStop(I)V

    .line 2302
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->stopScan(I)V

    .line 2303
    return-void
.end method

.method stopScan(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    .line 2306
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2307
    new-instance p2, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;-><init>(Lcom/android/bluetooth/gatt/GattService;)V

    .line 2308
    iput-object p1, p2, Lcom/android/bluetooth/gatt/GattService$PendingIntentInfo;->intent:Landroid/app/PendingIntent;

    .line 2309
    iget-object p1, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getByContextInfo(Ljava/lang/Object;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object p1

    .line 2310
    sget-boolean p2, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    if-eqz p2, :cond_0

    .line 2311
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopScan(PendingIntent): app found = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "BtGatt.GattService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    :cond_0
    if-eqz p1, :cond_1

    .line 2314
    iget p1, p1, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    .line 2315
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->stopScan(I)V

    .line 2317
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->unregisterScanner(I)V

    .line 2319
    :cond_1
    return-void
.end method

.method unregAll()V
    .locals 5

    .line 2352
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    const-string v0, "unregAll"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/GattService;->updateClientState()V

    .line 2356
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getAllAppsIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2357
    sget-boolean v3, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ClientMap unreg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->unregisterClient(I)V

    .line 2359
    goto :goto_0

    .line 2361
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->getAllAppsIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2362
    sget-boolean v3, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServerMap unreg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->unregisterServer(I)V

    .line 2364
    goto :goto_1

    .line 2365
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getAllAppsIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 2366
    sget-boolean v3, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScannerMap unreg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/gatt/GattService;->isScanClient(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2368
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/gatt/GattService;->stopScan(I)V

    .line 2369
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/gatt/GattService;->unregisterScanner(I)V

    .line 2371
    :cond_6
    goto :goto_2

    .line 2372
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mAdvertiseManager:Lcom/android/bluetooth/gatt/AdvertiseManager;

    if-eqz v0, :cond_8

    .line 2373
    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->stopAdvertisingSets()V

    .line 2376
    :cond_8
    return-void
.end method

.method unregisterClient(I)V
    .locals 2

    .line 2479
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterClient() - clientIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->remove(I)V

    .line 2485
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattClientUnregisterAppNative(I)V

    .line 2486
    return-void
.end method

.method unregisterScanner(I)V
    .locals 3

    .line 2119
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2121
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 2122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterScanner() - scannerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No cooresponding app for scannerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", not calling unregister scanner!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->remove(I)V

    .line 2128
    return-void

    .line 2131
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScannerMap:Lcom/android/bluetooth/gatt/GattService$ScannerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ScannerMap;->remove(I)V

    .line 2132
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mScanManager:Lcom/android/bluetooth/gatt/ScanManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->unregisterScanner(I)V

    .line 2133
    return-void
.end method

.method unregisterServer(I)V
    .locals 2

    .line 3144
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3146
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v0, :cond_0

    .line 3147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterServer() - serverIf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BtGatt.GattService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3150
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->deleteServices(I)V

    .line 3152
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mServerMap:Lcom/android/bluetooth/gatt/GattService$ServerMap;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/GattService$ServerMap;->remove(I)V

    .line 3153
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/GattService;->gattServerUnregisterAppNative(I)V

    .line 3154
    return-void
.end method

.method unregisterSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    .locals 1

    .line 2402
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/GattService;->enforceAdminPermission()V

    .line 2403
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mPeriodicScanManager:Lcom/android/bluetooth/gatt/PeriodicScanManager;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->stopSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    .line 2404
    return-void
.end method

.method updateClientState()V
    .locals 7

    .line 235
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    const-string v0, "updateClientState()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getAllAppsIds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 237
    sget-boolean v3, Lcom/android/bluetooth/gatt/GattService;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateClientState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v3}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getConnectedMap()Ljava/util/Map;

    move-result-object v3

    .line 239
    if-eqz v3, :cond_3

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 240
    iget-object v4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->getById(I)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v4

    .line 241
    if-eqz v4, :cond_2

    .line 242
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateClientState: address="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :try_start_0
    iget-object v4, v4, Lcom/android/bluetooth/gatt/ContextMap$App;->callback:Ljava/lang/Object;

    check-cast v4, Landroid/bluetooth/IBluetoothGattCallback;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v5, 0x0

    invoke-interface {v4, v5, v2, v5, v3}, Landroid/bluetooth/IBluetoothGattCallback;->onClientConnectionState(IIZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    goto :goto_1

    .line 246
    :catch_0
    move-exception v2

    .line 247
    const-string v2, "updateClientState RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_1
    goto :goto_2

    .line 251
    :cond_2
    const-string v2, "updateClientState: no client app"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :goto_2
    goto :goto_3

    .line 255
    :cond_3
    const-string v2, "updateClientState: no connected map"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_3
    goto :goto_0

    .line 258
    :cond_4
    return-void
.end method

.method writeCharacteristic(ILjava/lang/String;III[B)V
    .locals 8

    .line 2650
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2652
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 2653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeCharacteristic() - address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mReliableQueue:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2657
    const/4 p4, 0x3

    move v5, p4

    goto :goto_0

    .line 2656
    :cond_1
    move v5, p4

    .line 2660
    :goto_0
    iget-object p4, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {p4, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 2661
    if-nez p1, :cond_2

    .line 2662
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeCharacteristic() - No connection for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    return-void

    .line 2666
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(II)Z

    move-result p2

    if-nez p2, :cond_3

    .line 2667
    const-string p1, "writeCharacteristic() - permission check failed!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    return-void

    .line 2671
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v2, p0

    move v4, p3

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v2 .. v7}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteCharacteristicNative(IIII[B)V

    .line 2672
    return-void
.end method

.method writeDescriptor(ILjava/lang/String;II[B)V
    .locals 3

    .line 2698
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/gatt/GattService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattService;->VDBG:Z

    const-string v1, "BtGatt.GattService"

    if-eqz v0, :cond_0

    .line 2700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeDescriptor() - address="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/GattService;->mClientMap:Lcom/android/bluetooth/gatt/GattService$ClientMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/gatt/GattService$ClientMap;->connIdByAddress(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    .line 2704
    if-nez p1, :cond_1

    .line 2705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "writeDescriptor() - No connection for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    return-void

    .line 2709
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p2, p3}, Lcom/android/bluetooth/gatt/GattService;->permissionCheck(II)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2710
    const-string p1, "writeDescriptor() - permission check failed!"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    return-void

    .line 2714
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/bluetooth/gatt/GattService;->gattClientWriteDescriptorNative(III[B)V

    .line 2715
    return-void
.end method
