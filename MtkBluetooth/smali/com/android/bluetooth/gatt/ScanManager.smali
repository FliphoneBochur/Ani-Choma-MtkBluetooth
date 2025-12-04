.class public Lcom/android/bluetooth/gatt/ScanManager;
.super Ljava/lang/Object;
.source "ScanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/ScanManager$ScanNative;,
        Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;,
        Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;,
        Lcom/android/bluetooth/gatt/ScanManager$UidImportance;
    }
.end annotation


# static fields
.field private static final ACTION_REFRESH_BATCHED_SCAN:Ljava/lang/String; = "com.android.bluetooth.gatt.REFRESH_BATCHED_SCAN"

.field private static final DBG:Z

.field private static final FOREGROUND_IMPORTANCE_CUTOFF:I = 0x7d

.field private static final MSG_FLUSH_BATCH_RESULTS:I = 0x2

.field private static final MSG_IMPORTANCE_CHANGE:I = 0x6

.field private static final MSG_RESUME_SCANS:I = 0x5

.field private static final MSG_SCAN_TIMEOUT:I = 0x3

.field private static final MSG_START_BLE_SCAN:I = 0x0

.field private static final MSG_STOP_BLE_SCAN:I = 0x1

.field private static final MSG_SUSPEND_SCANS:I = 0x4

.field private static final OPERATION_TIME_OUT_MILLIS:I = 0x1f4

.field static final SCAN_RESULT_TYPE_BOTH:I = 0x3

.field static final SCAN_RESULT_TYPE_FULL:I = 0x2

.field static final SCAN_RESULT_TYPE_TRUNCATED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BtGatt.ScanManager"


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mBatchAlarmReceiverRegistered:Z

.field private mBatchClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation
.end field

.field private mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

.field private mCurUsedTrackableAdvertisements:Ljava/lang/Integer;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private mDm:Landroid/hardware/display/DisplayManager;

.field private volatile mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

.field private mLastConfiguredScanSetting:I

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationReceiver:Landroid/content/BroadcastReceiver;

.field private mRegularScanClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

.field private mService:Lcom/android/bluetooth/gatt/GattService;

.field private mSuspendedScanClients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation
.end field

.field private mUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->DBG:Z

    sput-boolean v0, Lcom/android/bluetooth/gatt/ScanManager;->DBG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I

    .line 1383
    new-instance v0, Lcom/android/bluetooth/gatt/ScanManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanManager$1;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 1401
    new-instance v0, Lcom/android/bluetooth/gatt/ScanManager$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanManager$2;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    .line 1414
    new-instance v0, Lcom/android/bluetooth/gatt/ScanManager$3;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/gatt/ScanManager$3;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 122
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    .line 124
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 125
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mSuspendedScanClients:Ljava/util/Set;

    .line 126
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 127
    new-instance p1, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;-><init>(Lcom/android/bluetooth/gatt/ScanManager;)V

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    .line 128
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mCurUsedTrackableAdvertisements:Ljava/lang/Integer;

    .line 129
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/gatt/GattService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mDm:Landroid/hardware/display/DisplayManager;

    .line 130
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/gatt/GattService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 131
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/gatt/GattService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLocationManager:Landroid/location/LocationManager;

    .line 132
    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/gatt/ScanManager;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mSuspendedScanClients:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/location/LocationManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/gatt/ScanManager;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/ScanManager;->isFilteringSupported()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/gatt/ScanManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/gatt/ScanManager;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/gatt/ScanManager;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiverRegistered:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/bluetooth/gatt/ScanManager;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchAlarmReceiverRegistered:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/bluetooth/gatt/ScanManager;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/gatt/ScanManager;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I

    return p0
.end method

.method static synthetic access$1902(Lcom/android/bluetooth/gatt/ScanManager;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLastConfiguredScanSetting:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/bluetooth/gatt/ScanManager;Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;)Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchScanParms:Lcom/android/bluetooth/gatt/ScanManager$BatchScanParams;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/lang/Integer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mCurUsedTrackableAdvertisements:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/android/bluetooth/gatt/ScanManager;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mCurUsedTrackableAdvertisements:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/gatt/ScanManager;ILcom/android/bluetooth/gatt/ScanClient;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/ScanManager$ScanNative;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/gatt/ScanManager;Lcom/android/bluetooth/gatt/ScanManager$UidImportance;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->handleImportanceChange(Lcom/android/bluetooth/gatt/ScanManager$UidImportance;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/gatt/ScanManager;)Lcom/android/bluetooth/gatt/GattService;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    return-object p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/bluetooth/gatt/ScanManager;->DBG:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/gatt/ScanManager;)Ljava/util/Set;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    return-object p0
.end method

.method private handleImportanceChange(Lcom/android/bluetooth/gatt/ScanManager$UidImportance;)V
    .locals 8

    .line 1431
    if-nez p1, :cond_0

    .line 1432
    return-void

    .line 1434
    :cond_0
    iget v0, p1, Lcom/android/bluetooth/gatt/ScanManager$UidImportance;->uid:I

    .line 1435
    iget p1, p1, Lcom/android/bluetooth/gatt/ScanManager$UidImportance;->importance:I

    .line 1436
    nop

    .line 1437
    const/16 v1, 0x7d

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt p1, v1, :cond_3

    .line 1438
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/ScanClient;

    .line 1439
    iget v4, v1, Lcom/android/bluetooth/gatt/ScanClient;->appUid:I

    if-ne v4, v0, :cond_1

    iget-object v4, v1, Lcom/android/bluetooth/gatt/ScanClient;->passiveSettings:Landroid/bluetooth/le/ScanSettings;

    if-eqz v4, :cond_1

    .line 1440
    iget-object v3, v1, Lcom/android/bluetooth/gatt/ScanClient;->passiveSettings:Landroid/bluetooth/le/ScanSettings;

    iput-object v3, v1, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 1441
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/bluetooth/gatt/ScanClient;->passiveSettings:Landroid/bluetooth/le/ScanSettings;

    .line 1442
    move v3, v2

    .line 1444
    :cond_1
    goto :goto_0

    :cond_2
    goto :goto_2

    .line 1446
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/GattService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1447
    const-string v1, "ble_scan_background_mode"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 1451
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/gatt/ScanClient;

    .line 1452
    iget v5, v4, Lcom/android/bluetooth/gatt/ScanClient;->appUid:I

    if-ne v5, v0, :cond_4

    iget-object v5, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-static {v5, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->access$900(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;Lcom/android/bluetooth/gatt/ScanClient;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1453
    iget-object v3, v4, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    iput-object v3, v4, Lcom/android/bluetooth/gatt/ScanClient;->passiveSettings:Landroid/bluetooth/le/ScanSettings;

    .line 1454
    new-instance v3, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v3}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 1455
    iget-object v5, v4, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 1456
    invoke-virtual {v3, p1}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 1457
    invoke-virtual {v5}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 1458
    invoke-virtual {v5}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanResultType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 1459
    invoke-virtual {v5}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/bluetooth/le/ScanSettings$Builder;->setReportDelay(J)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 1460
    invoke-virtual {v5}, Landroid/bluetooth/le/ScanSettings;->getNumOfMatches()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/bluetooth/le/ScanSettings$Builder;->setNumOfMatches(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 1461
    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v3

    iput-object v3, v4, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    .line 1462
    move v3, v2

    .line 1464
    :cond_4
    goto :goto_1

    .line 1466
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 1467
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-virtual {p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->configureRegularScanParams()V

    .line 1469
    :cond_6
    return-void
.end method

.method private isFilteringSupported()Z
    .locals 1

    .line 261
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 262
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isOffloadedFilteringSupported()Z

    move-result v0

    return v0
.end method

.method private isScreenOn()Z
    .locals 6

    .line 1368
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mDm:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1370
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1371
    return v1

    .line 1374
    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 1375
    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 1376
    const/4 v0, 0x1

    return v0

    .line 1374
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1380
    :cond_2
    return v1
.end method

.method private sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    .line 250
    if-nez v0, :cond_0

    .line 251
    const-string p1, "BtGatt.ScanManager"

    const-string p2, "sendMessage: mHandler is null."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 254
    :cond_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 255
    iput p1, v1, Landroid/os/Message;->what:I

    .line 256
    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->sendMessage(Landroid/os/Message;)Z

    .line 258
    return-void
.end method


# virtual methods
.method callbackDone(II)V
    .locals 2

    .line 239
    sget-boolean v0, Lcom/android/bluetooth/gatt/ScanManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callback done for scannerId - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " status - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.ScanManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    if-nez p2, :cond_1

    .line 243
    iget-object p1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 246
    :cond_1
    return-void
.end method

.method cleanup()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mSuspendedScanClients:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 153
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->cleanup()V

    .line 155
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mActivityManager:Landroid/app/ActivityManager;

    const-string v1, "BtGatt.ScanManager"

    if-eqz v0, :cond_0

    .line 157
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager;->mUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string v2, "exception when invoking removeOnUidImportanceListener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mDm:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    .line 164
    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    if-eqz v0, :cond_3

    .line 169
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    invoke-virtual {v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 171
    if-eqz v0, :cond_2

    .line 172
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 174
    :cond_2
    iput-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    .line 178
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/gatt/GattService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 181
    goto :goto_1

    .line 179
    :catch_1
    move-exception v0

    .line 180
    const-string v2, "exception when invoking unregisterReceiver(mLocationReceiver)"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :goto_1
    return-void
.end method

.method flushBatchScanResults(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1

    .line 235
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    .line 236
    return-void
.end method

.method getBatchScanQueue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    return-object v0
.end method

.method public getCurrentUsedTrackingAdvertisement()I
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mCurUsedTrackableAdvertisements:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getFullBatchScanQueue()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 214
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mBatchClients:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/ScanClient;

    .line 215
    iget-object v3, v2, Lcom/android/bluetooth/gatt/ScanClient;->settings:Landroid/bluetooth/le/ScanSettings;

    invoke-virtual {v3}, Landroid/bluetooth/le/ScanSettings;->getScanResultType()I

    move-result v3

    if-nez v3, :cond_0

    .line 216
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_0
    goto :goto_0

    .line 219
    :cond_1
    return-object v0
.end method

.method getRegularScanQueue()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/bluetooth/gatt/ScanClient;",
            ">;"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mRegularScanClients:Ljava/util/Set;

    return-object v0
.end method

.method registerScanner(Ljava/util/UUID;)V
    .locals 5

    .line 185
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v1

    .line 186
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v3

    .line 185
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->access$000(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;JJ)V

    .line 187
    return-void
.end method

.method start()V
    .locals 3

    .line 135
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BluetoothScanManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 137
    new-instance v1, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;-><init>(Lcom/android/bluetooth/gatt/ScanManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mHandler:Lcom/android/bluetooth/gatt/ScanManager$ClientHandler;

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mDm:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_1

    .line 142
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    const/16 v2, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 145
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.location.MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 146
    iget-object v1, p0, Lcom/android/bluetooth/gatt/ScanManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    iget-object v2, p0, Lcom/android/bluetooth/gatt/ScanManager;->mLocationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/bluetooth/gatt/GattService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 147
    return-void
.end method

.method startScan(Lcom/android/bluetooth/gatt/ScanClient;)V
    .locals 1

    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    .line 224
    return-void
.end method

.method stopScan(I)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-static {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->access$200(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;I)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    .line 228
    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->getRegularScanClient(I)Lcom/android/bluetooth/gatt/ScanClient;

    move-result-object v0

    .line 231
    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/gatt/ScanManager;->sendMessage(ILcom/android/bluetooth/gatt/ScanClient;)V

    .line 232
    return-void
.end method

.method unregisterScanner(I)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/gatt/ScanManager;->mScanNative:Lcom/android/bluetooth/gatt/ScanManager$ScanNative;

    invoke-static {v0, p1}, Lcom/android/bluetooth/gatt/ScanManager$ScanNative;->access$100(Lcom/android/bluetooth/gatt/ScanManager$ScanNative;I)V

    .line 191
    return-void
.end method
