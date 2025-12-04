.class Lcom/android/bluetooth/gatt/AppScanStats;
.super Ljava/lang/Object;
.source "AppScanStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/AppScanStats$LastScan;
    }
.end annotation


# static fields
.field static final BALANCED_WEIGHT:I = 0x19

.field static final DATE_FORMAT:Ljava/text/DateFormat;

.field static final EXCESSIVE_SCANNING_PERIOD_MS:J = 0x7530L

.field static final LOW_LATENCY_WEIGHT:I = 0x64

.field static final LOW_POWER_WEIGHT:I = 0xa

.field static final NUM_SCAN_DURATIONS_KEPT:I = 0x5

.field static final OPPORTUNISTIC_WEIGHT:I = 0x0

.field static final SCAN_TIMEOUT_MS:I = 0x1b7740

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public appName:Ljava/lang/String;

.field public isRegistered:Z

.field private mBalancedScan:I

.field private mBalancedScanTime:J

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mContextMap:Lcom/android/bluetooth/gatt/ContextMap;

.field mGattService:Lcom/android/bluetooth/gatt/GattService;

.field private mLastScans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/gatt/AppScanStats$LastScan;",
            ">;"
        }
    .end annotation
.end field

.field private mLowLantencyScan:I

.field private mLowLantencyScanTime:J

.field private mLowPowerScan:I

.field private mLowPowerScanTime:J

.field private mOngoingScans:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/bluetooth/gatt/AppScanStats$LastScan;",
            ">;"
        }
    .end annotation
.end field

.field private mOppScan:I

.field private mOppScanTime:J

.field private mScanStartTime:J

.field private mScansStarted:I

.field private mScansStopped:I

.field private mTotalActiveTime:J

.field private mTotalScanTime:J

.field private mTotalSuspendTime:J

.field public mWorkSource:Landroid/os/WorkSource;

.field public results:I

.field public startTime:J

.field public stopTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-class v0, Lcom/android/bluetooth/gatt/AppScanStats;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/gatt/AppScanStats;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/bluetooth/gatt/AppScanStats;->DATE_FORMAT:Ljava/text/DateFormat;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/WorkSource;Lcom/android/bluetooth/gatt/ContextMap;Lcom/android/bluetooth/gatt/GattService;)V
    .locals 5

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mScansStarted:I

    .line 117
    iput v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mScansStopped:I

    .line 118
    iput-boolean v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->isRegistered:Z

    .line 119
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mScanStartTime:J

    .line 120
    iput-wide v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalActiveTime:J

    .line 121
    iput-wide v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalSuspendTime:J

    .line 122
    iput-wide v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalScanTime:J

    .line 123
    iput-wide v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mOppScanTime:J

    .line 124
    iput-wide v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLowPowerScanTime:J

    .line 125
    iput-wide v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mBalancedScanTime:J

    .line 126
    iput-wide v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLowLantencyScanTime:J

    .line 127
    iput v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mOppScan:I

    .line 128
    iput v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLowPowerScan:I

    .line 129
    iput v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mBalancedScan:I

    .line 130
    iput v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLowLantencyScan:I

    .line 131
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLastScans:Ljava/util/List;

    .line 132
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mOngoingScans:Ljava/util/HashMap;

    .line 133
    iput-wide v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->startTime:J

    .line 134
    iput-wide v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->stopTime:J

    .line 135
    iput v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->results:I

    .line 138
    iput-object p1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    .line 139
    iput-object p3, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mContextMap:Lcom/android/bluetooth/gatt/ContextMap;

    .line 140
    iput-object p4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mGattService:Lcom/android/bluetooth/gatt/GattService;

    .line 141
    const-string p1, "batterystats"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 143
    if-nez p2, :cond_0

    .line 145
    new-instance p2, Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    iget-object p3, p0, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    invoke-direct {p2, p1, p3}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    .line 147
    :cond_0
    iput-object p2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mWorkSource:Landroid/os/WorkSource;

    .line 148
    return-void
.end method

.method private static callbackTypeToString(I)Ljava/lang/String;
    .locals 2

    .line 445
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    .line 453
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    .line 454
    const-string p0, "[FIRST_MATCH | LOST]"

    goto :goto_0

    .line 455
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 453
    :goto_0
    return-object p0

    .line 451
    :cond_1
    const-string p0, "LOST"

    return-object p0

    .line 449
    :cond_2
    const-string p0, "FIRST_MATCH"

    return-object p0

    .line 447
    :cond_3
    const-string p0, "ALL_MATCHES"

    return-object p0
.end method

.method private static filterToStringWithoutNullParam(Landroid/bluetooth/le/ScanFilter;)Ljava/lang/String;
    .locals 2

    .line 385
    nop

    .line 386
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothLeScanFilter ["

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " DeviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getDeviceAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ServiceUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 395
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ServiceUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceUuidMask()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    :cond_3
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceSolicitationUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ServiceSolicitationUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceSolicitationUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 401
    :cond_4
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceSolicitationUuidMask()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ServiceSolicitationUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceSolicitationUuidMask()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 405
    :cond_5
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ServiceDataUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceDataUuid()Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 408
    :cond_6
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceData()[B

    move-result-object v0

    if-eqz v0, :cond_7

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceData()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 411
    :cond_7
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceDataMask()[B

    move-result-object v0

    if-eqz v0, :cond_8

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ServiceDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getServiceDataMask()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 414
    :cond_8
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getManufacturerId()I

    move-result v0

    if-ltz v0, :cond_9

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ManufacturerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getManufacturerId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    :cond_9
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v0

    if-eqz v0, :cond_a

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ManufacturerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getManufacturerData()[B

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    :cond_a
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getManufacturerDataMask()[B

    move-result-object v0

    if-eqz v0, :cond_b

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ManufacturerDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {p0}, Landroid/bluetooth/le/ScanFilter;->getManufacturerDataMask()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 424
    :cond_b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 425
    return-object p0
.end method

.method private static scanModeToString(I)Ljava/lang/String;
    .locals 2

    .line 430
    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 434
    :cond_0
    const-string p0, "LOW_LATENCY"

    return-object p0

    .line 436
    :cond_1
    const-string p0, "BALANCED"

    return-object p0

    .line 438
    :cond_2
    const-string p0, "LOW_POWER"

    return-object p0

    .line 432
    :cond_3
    const-string p0, "OPPORTUNISTIC"

    return-object p0
.end method

.method private truncateAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 373
    nop

    .line 374
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 375
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v5, "."

    if-le v1, v4, :cond_0

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v0, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 377
    :cond_0
    array-length v1, v0

    if-ne v1, v4, :cond_1

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, v0, v3

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 381
    :cond_1
    :goto_0
    return-object p1
.end method


# virtual methods
.method declared-synchronized addResult(I)V
    .locals 5

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AppScanStats;->getScanFromScannerId(I)Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    iget v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    .line 157
    iget v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    const/16 v2, 0x64

    rem-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 159
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteBleScanResults(Landroid/os/WorkSource;I)V

    .line 160
    sget-object v1, Lcom/android/bluetooth/gatt/AppScanStats;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BLE_SCAN_RESULT_RECEIVED["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]noteBleScanResults="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 163
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/gatt/AppScanStats;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]noteBleScanResults="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    const/4 p1, 0x4

    iget-object v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {p1, v0, v2}, Lcom/android/bluetooth/BluetoothStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 170
    :cond_0
    iget p1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->results:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->results:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    monitor-exit p0

    return-void

    .line 150
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized dumpToString(Ljava/lang/StringBuilder;)V
    .locals 34

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    .line 460
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 461
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 462
    nop

    .line 463
    nop

    .line 464
    nop

    .line 465
    nop

    .line 466
    iget-wide v6, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalActiveTime:J

    .line 467
    iget-wide v8, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalSuspendTime:J

    .line 468
    iget-wide v10, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalScanTime:J

    .line 469
    iget-wide v12, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mOppScanTime:J

    .line 470
    iget-wide v14, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mLowPowerScanTime:J

    .line 471
    move-wide/from16 v16, v6

    iget-wide v6, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mBalancedScanTime:J

    .line 472
    move-wide/from16 v18, v6

    iget-wide v6, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mLowLantencyScanTime:J

    .line 473
    move-wide/from16 v20, v6

    iget v6, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mOppScan:I

    .line 474
    iget v7, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mLowPowerScan:I

    .line 475
    move-wide/from16 v22, v8

    iget v8, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mBalancedScan:I

    .line 476
    iget v9, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mLowLantencyScan:I

    .line 478
    move-wide/from16 v24, v10

    iget-object v10, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mOngoingScans:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    const-wide/16 v26, 0x0

    if-nez v10, :cond_6

    .line 479
    iget-object v10, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mOngoingScans:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-wide/from16 v28, v26

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    .line 480
    move-object/from16 v30, v10

    iget-object v10, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mOngoingScans:Ljava/util/HashMap;

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    .line 481
    move-wide/from16 v31, v2

    iget-wide v2, v10, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timestamp:J

    sub-long v2, v4, v2

    .line 483
    iget-boolean v11, v10, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isSuspended:Z

    if-eqz v11, :cond_0

    .line 484
    move v11, v8

    move/from16 v33, v9

    iget-wide v8, v10, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendStartTime:J

    sub-long v28, v4, v8

    .line 485
    add-long v22, v22, v28

    goto :goto_1

    .line 483
    :cond_0
    move v11, v8

    move/from16 v33, v9

    .line 488
    :goto_1
    add-long v24, v24, v2

    .line 489
    add-long v22, v22, v28

    .line 490
    iget-wide v8, v10, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    sub-long/2addr v2, v8

    sub-long v2, v2, v28

    .line 491
    add-long v16, v16, v2

    .line 492
    iget v8, v10, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scanMode:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_4

    if-eqz v8, :cond_3

    const/4 v9, 0x1

    if-eq v8, v9, :cond_2

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    goto :goto_2

    .line 503
    :cond_1
    add-long v20, v20, v2

    goto :goto_2

    .line 500
    :cond_2
    add-long v18, v18, v2

    .line 501
    goto :goto_2

    .line 497
    :cond_3
    add-long/2addr v14, v2

    .line 498
    goto :goto_2

    .line 494
    :cond_4
    add-long/2addr v12, v2

    .line 495
    nop

    .line 506
    :goto_2
    move v8, v11

    move-object/from16 v10, v30

    move-wide/from16 v2, v31

    move/from16 v9, v33

    goto :goto_0

    .line 479
    :cond_5
    move-wide/from16 v31, v2

    move v11, v8

    move/from16 v33, v9

    move-wide/from16 v2, v18

    move-wide/from16 v8, v20

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v18, v11

    move-wide v10, v12

    move-wide v6, v14

    move-wide/from16 v12, v16

    move-wide/from16 v14, v22

    move-wide/from16 v16, v4

    move-wide/from16 v4, v24

    goto :goto_3

    .line 478
    :cond_6
    move-wide/from16 v31, v2

    move v11, v8

    move/from16 v33, v9

    move-wide/from16 v2, v18

    move-wide/from16 v8, v20

    move/from16 v19, v6

    move/from16 v20, v7

    move/from16 v18, v11

    move-wide v10, v12

    move-wide v6, v14

    move-wide/from16 v12, v16

    move-wide/from16 v14, v22

    move-wide/from16 v16, v4

    move-wide/from16 v4, v24

    .line 508
    :goto_3
    mul-long v21, v10, v26

    const-wide/16 v23, 0xa

    mul-long v23, v23, v6

    add-long v21, v21, v23

    const-wide/16 v23, 0x19

    mul-long v23, v23, v2

    add-long v21, v21, v23

    const-wide/16 v23, 0x64

    mul-long v28, v8, v23

    add-long v21, v21, v28

    move-wide/from16 v28, v8

    div-long v8, v21, v23

    .line 511
    move-wide/from16 v21, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-boolean v8, v1, Lcom/android/bluetooth/gatt/AppScanStats;->isRegistered:Z

    if-eqz v8, :cond_7

    .line 513
    const-string v8, " (Registered)"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n  LE scans (started/stopped)                                  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mScansStarted:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mScansStopped:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\n  Scan time in ms (active/suspend/total)                      : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n  Scan time with mode in ms (Opp/LowPower/Balanced/LowLatency): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v28

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n  Scan mode counter (Opp/LowPower/Balanced/LowLatency)        : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v19

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v18

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v33

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n  Score                                                       : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, v21

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n  Total number of results                                     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/bluetooth/gatt/AppScanStats;->results:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    iget-object v2, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mLastScans:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n  Last "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mLastScans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " scans                                                :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    const/4 v2, 0x0

    :goto_4
    iget-object v3, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mLastScans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_10

    .line 533
    iget-object v3, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mLastScans:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    .line 534
    new-instance v4, Ljava/util/Date;

    sub-long v5, v31, v16

    iget-wide v7, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timestamp:J

    add-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/bluetooth/gatt/AppScanStats;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v6, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->duration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isOpportunisticScan:Z

    if-eqz v4, :cond_8

    .line 538
    const-string v4, "Opp "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    :cond_8
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBackgroundScan:Z

    if-eqz v4, :cond_9

    .line 541
    const-string v4, "Back "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    :cond_9
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isTimeout:Z

    if-eqz v4, :cond_a

    .line 544
    const-string v4, "Forced "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    :cond_a
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isFilterScan:Z

    if-eqz v4, :cond_b

    .line 547
    const-string v4, "Filter "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    :cond_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " results"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scannerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isCallbackScan:Z

    if-eqz v4, :cond_c

    .line 552
    const-string v4, "CB "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 554
    :cond_c
    const-string v4, "PI "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    :goto_5
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBatchScan:Z

    if-eqz v4, :cond_d

    .line 557
    const-string v4, "Batch Scan"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 559
    :cond_d
    const-string v4, "Regular Scan"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :goto_6
    iget-wide v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    cmp-long v4, v4, v26

    if-eqz v4, :cond_e

    .line 562
    iget-wide v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->duration:J

    iget-wide v6, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    sub-long/2addr v4, v6

    .line 563
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n      \u2514 Suspended Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms, Active Time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n      \u2514 Scan Config: [ ScanMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scanMode:I

    .line 567
    invoke-static {v5}, Lcom/android/bluetooth/gatt/AppScanStats;->scanModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callbackType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scanCallbackType:I

    .line 568
    invoke-static {v5}, Lcom/android/bluetooth/gatt/AppScanStats;->callbackTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 566
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isFilterScan:Z

    if-eqz v4, :cond_f

    .line 570
    iget-object v3, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->filterString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 575
    :cond_10
    iget-object v2, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mOngoingScans:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1b

    .line 576
    const-string v2, "\n  Ongoing scans                                               :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    iget-object v2, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mOngoingScans:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 578
    iget-object v4, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mOngoingScans:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    .line 579
    new-instance v4, Ljava/util/Date;

    sub-long v5, v31, v16

    iget-wide v7, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timestamp:J

    add-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 580
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/bluetooth/gatt/AppScanStats;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v6, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timestamp:J

    sub-long v5, v16, v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isOpportunisticScan:Z

    if-eqz v4, :cond_11

    .line 583
    const-string v4, "Opp "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    :cond_11
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBackgroundScan:Z

    if-eqz v4, :cond_12

    .line 586
    const-string v4, "Back "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    :cond_12
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isTimeout:Z

    if-eqz v4, :cond_13

    .line 589
    const-string v4, "Forced "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    :cond_13
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isFilterScan:Z

    if-eqz v4, :cond_14

    .line 592
    const-string v4, "Filter "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    :cond_14
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isSuspended:Z

    if-eqz v4, :cond_15

    .line 595
    const-string v4, "Suspended "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 597
    :cond_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " results"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scannerId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isCallbackScan:Z

    if-eqz v4, :cond_16

    .line 600
    const-string v4, "CB "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 602
    :cond_16
    const-string v4, "PI "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    :goto_8
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBatchScan:Z

    if-eqz v4, :cond_17

    .line 605
    const-string v4, "Batch Scan"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 607
    :cond_17
    const-string v4, "Regular Scan"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    :goto_9
    iget-wide v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendStartTime:J

    cmp-long v4, v4, v26

    if-eqz v4, :cond_19

    .line 610
    iget-wide v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isSuspended:Z

    if-eqz v4, :cond_18

    iget-wide v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendStartTime:J

    goto :goto_a

    .line 611
    :cond_18
    nop

    :goto_a
    nop

    .line 612
    iget-wide v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->duration:J

    iget-wide v6, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    sub-long/2addr v4, v6

    .line 613
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n      \u2514 Suspended Time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "ms, Active Time:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_19
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n      \u2514 Scan Config: [ ScanMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scanMode:I

    .line 617
    invoke-static {v5}, Lcom/android/bluetooth/gatt/AppScanStats;->scanModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", callbackType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scanCallbackType:I

    .line 618
    invoke-static {v5}, Lcom/android/bluetooth/gatt/AppScanStats;->callbackTypeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 616
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-boolean v4, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isFilterScan:Z

    if-eqz v4, :cond_1a

    .line 620
    iget-object v3, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->filterString:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    :cond_1a
    goto/16 :goto_7

    .line 625
    :cond_1b
    iget-object v2, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mContextMap:Lcom/android/bluetooth/gatt/ContextMap;

    iget-object v3, v1, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/gatt/ContextMap;->getByName(Ljava/lang/String;)Lcom/android/bluetooth/gatt/ContextMap$App;

    move-result-object v2

    .line 626
    if-eqz v2, :cond_1c

    iget-boolean v3, v1, Lcom/android/bluetooth/gatt/AppScanStats;->isRegistered:Z

    if-eqz v3, :cond_1c

    .line 627
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  Application ID                     : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  UUID                               : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->uuid:Ljava/util/UUID;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget-object v3, v1, Lcom/android/bluetooth/gatt/AppScanStats;->mContextMap:Lcom/android/bluetooth/gatt/ContextMap;

    iget v2, v2, Lcom/android/bluetooth/gatt/ContextMap$App;->id:I

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/gatt/ContextMap;->getConnectionByApp(I)Ljava/util/List;

    move-result-object v2

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  Connections: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 635
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 636
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/gatt/ContextMap$Connection;

    .line 637
    iget-wide v4, v3, Lcom/android/bluetooth/gatt/ContextMap$Connection;->startTime:J

    sub-long v4, v16, v4

    .line 638
    new-instance v6, Ljava/util/Date;

    sub-long v7, v31, v16

    iget-wide v9, v3, Lcom/android/bluetooth/gatt/ContextMap$Connection;->startTime:J

    add-long/2addr v7, v9

    invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 639
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\n    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/bluetooth/gatt/AppScanStats;->DATE_FORMAT:Ljava/text/DateFormat;

    invoke-virtual {v8, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/bluetooth/gatt/ContextMap$Connection;->address:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Lcom/android/bluetooth/gatt/ContextMap$Connection;->connId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    goto :goto_b

    .line 644
    :cond_1c
    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    monitor-exit p0

    return-void

    .line 459
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getScanFromScannerId(I)Lcom/android/bluetooth/gatt/AppScanStats$LastScan;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mOngoingScans:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    return-object p1
.end method

.method isScanning()Z
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mOngoingScans:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method declared-synchronized isScanningTooFrequently()Z
    .locals 5

    monitor-enter p0

    .line 351
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLastScans:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 352
    monitor-exit p0

    return v2

    .line 355
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v3, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLastScans:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    iget-wide v3, v3, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timestamp:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x7530

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit p0

    return v2

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isScanningTooLong()Z
    .locals 6

    monitor-enter p0

    .line 360
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/AppScanStats;->isScanning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 361
    monitor-exit p0

    return v1

    .line 363
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mScanStartTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b7740

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized recordScanResume(I)V
    .locals 4

    monitor-enter p0

    .line 327
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AppScanStats;->getScanFromScannerId(I)Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    move-result-object p1

    .line 328
    nop

    .line 329
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isSuspended:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isSuspended:Z

    .line 333
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/bluetooth/gatt/AppScanStats;->stopTime:J

    .line 334
    iget-wide v2, p1, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendStartTime:J

    sub-long/2addr v0, v2

    .line 335
    iget-wide v2, p1, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    add-long/2addr v2, v0

    iput-wide v2, p1, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    .line 336
    iget-wide v2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalSuspendTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalSuspendTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 330
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 326
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized recordScanStart(Landroid/bluetooth/le/ScanSettings;Ljava/util/List;ZZI)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/le/ScanSettings;",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;ZZI)V"
        }
    .end annotation

    move-object v10, p0

    move/from16 v11, p5

    monitor-enter p0

    .line 183
    :try_start_0
    invoke-virtual {p0, v11}, Lcom/android/bluetooth/gatt/AppScanStats;->getScanFromScannerId(I)Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    monitor-exit p0

    return-void

    .line 187
    :cond_0
    :try_start_1
    iget v0, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mScansStarted:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    iput v0, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mScansStarted:I

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v10, Lcom/android/bluetooth/gatt/AppScanStats;->startTime:J

    .line 190
    new-instance v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    .line 191
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getScanMode()I

    move-result v8

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v9

    move-object v1, v13

    move-object v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;-><init>(Lcom/android/bluetooth/gatt/AppScanStats;JZZIII)V

    .line 192
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 193
    iget v1, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scanMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    move v1, v12

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    iput-boolean v1, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isOpportunisticScan:Z

    .line 194
    iget v1, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scanCallbackType:I

    const/4 v3, 0x2

    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    move v1, v12

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_1
    iput-boolean v1, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBackgroundScan:Z

    .line 196
    nop

    .line 197
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getCallbackType()I

    move-result v1

    if-ne v1, v12, :cond_3

    .line 198
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanSettings;->getReportDelayMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_3

    move v1, v12

    goto :goto_2

    :cond_3
    move v1, v0

    :goto_2
    iput-boolean v1, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBatchScan:Z

    .line 199
    iget v1, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scanMode:I

    if-eq v1, v2, :cond_7

    if-eqz v1, :cond_6

    if-eq v1, v12, :cond_5

    if-eq v1, v3, :cond_4

    goto :goto_3

    .line 210
    :cond_4
    iget v1, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mLowLantencyScan:I

    add-int/2addr v1, v12

    iput v1, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mLowLantencyScan:I

    goto :goto_3

    .line 207
    :cond_5
    iget v1, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mBalancedScan:I

    add-int/2addr v1, v12

    iput v1, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mBalancedScan:I

    .line 208
    goto :goto_3

    .line 204
    :cond_6
    iget v1, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mLowPowerScan:I

    add-int/2addr v1, v12

    iput v1, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mLowPowerScan:I

    .line 205
    goto :goto_3

    .line 201
    :cond_7
    iget v1, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mOppScan:I

    add-int/2addr v1, v12

    iput v1, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mOppScan:I

    .line 215
    :cond_8
    :goto_3
    if-eqz p3, :cond_9

    .line 216
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanFilter;

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->filterString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n      \u2514 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {v2}, Lcom/android/bluetooth/gatt/AppScanStats;->filterToStringWithoutNullParam(Landroid/bluetooth/le/ScanFilter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->filterString:Ljava/lang/String;

    .line 219
    goto :goto_4

    .line 222
    :cond_9
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->SCAN_EVENT_START:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    .line 223
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->setScanEventType(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TECH_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    .line 224
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->setScanTechnologyType(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    move-result-object v1

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->setEventTimeMillis(J)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    move-result-object v1

    iget-object v2, v10, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    .line 227
    invoke-direct {p0, v2}, Lcom/android/bluetooth/gatt/AppScanStats;->truncateAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->setInitiator(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    .line 228
    iget-object v2, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mGattService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/gatt/GattService;->addScanEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/AppScanStats;->isScanning()Z

    move-result v1

    if-nez v1, :cond_a

    .line 231
    iget-wide v1, v10, Lcom/android/bluetooth/gatt/AppScanStats;->startTime:J

    iput-wide v1, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mScanStartTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :cond_a
    :try_start_2
    iget-boolean v1, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isFilterScan:Z

    if-nez v1, :cond_b

    iget-boolean v1, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBackgroundScan:Z

    if-nez v1, :cond_b

    iget-boolean v1, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isOpportunisticScan:Z

    if-nez v1, :cond_b

    goto :goto_5

    :cond_b
    move v12, v0

    .line 236
    :goto_5
    iget-object v0, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1, v12}, Lcom/android/internal/app/IBatteryStats;->noteBleScanStarted(Landroid/os/WorkSource;Z)V

    .line 237
    sget-object v0, Lcom/android/bluetooth/gatt/AppScanStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLE_SCAN_STATE_CHANGED["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]noteBleScanStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 241
    goto :goto_6

    .line 238
    :catch_0
    move-exception v0

    .line 240
    :try_start_3
    sget-object v0, Lcom/android/bluetooth/gatt/AppScanStats;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]noteBleScanStarted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :goto_6
    const/4 v2, 0x2

    iget-object v3, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mWorkSource:Landroid/os/WorkSource;

    const/4 v4, 0x1

    iget-boolean v5, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isFilterScan:Z

    iget-boolean v6, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBackgroundScan:Z

    iget-boolean v7, v13, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isOpportunisticScan:Z

    invoke-static/range {v2 .. v7}, Lcom/android/bluetooth/BluetoothStatsLog;->write(ILandroid/os/WorkSource;IZZZ)V

    .line 246
    iget-object v0, v10, Lcom/android/bluetooth/gatt/AppScanStats;->mOngoingScans:Ljava/util/HashMap;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized recordScanStop(I)V
    .locals 9

    monitor-enter p0

    .line 250
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AppScanStats;->getScanFromScannerId(I)Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    if-nez v0, :cond_0

    .line 252
    monitor-exit p0

    return-void

    .line 254
    :cond_0
    :try_start_1
    iget v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mScansStopped:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mScansStopped:I

    .line 255
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/bluetooth/gatt/AppScanStats;->stopTime:J

    .line 256
    iget-wide v5, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->timestamp:J

    sub-long/2addr v3, v5

    .line 257
    iput-wide v3, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->duration:J

    .line 258
    iget-boolean v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isSuspended:Z

    if-eqz v1, :cond_1

    .line 259
    iget-wide v5, p0, Lcom/android/bluetooth/gatt/AppScanStats;->stopTime:J

    iget-wide v7, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendStartTime:J

    sub-long/2addr v5, v7

    .line 260
    iget-wide v7, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    .line 261
    iget-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalSuspendTime:J

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalSuspendTime:J

    .line 263
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mOngoingScans:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLastScans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-lt v1, v5, :cond_2

    .line 265
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLastScans:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 267
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLastScans:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;->newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    move-result-object v1

    sget-object v5, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;->SCAN_EVENT_STOP:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;

    .line 270
    invoke-virtual {v1, v5}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->setScanEventType(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanEventType;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    move-result-object v1

    sget-object v5, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;->SCAN_TECH_TYPE_LE:Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;

    .line 271
    invoke-virtual {v1, v5}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->setScanTechnologyType(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$ScanTechnologyType;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    move-result-object v1

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->setEventTimeMillis(J)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/bluetooth/gatt/AppScanStats;->appName:Ljava/lang/String;

    .line 274
    invoke-direct {p0, v5}, Lcom/android/bluetooth/gatt/AppScanStats;->truncateAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->setInitiator(Ljava/lang/String;)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    move-result-object v1

    iget v5, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    .line 275
    invoke-virtual {v1, v5}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->setNumberResults(I)Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;

    move-result-object v1

    .line 276
    invoke-virtual {v1}, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;

    .line 277
    iget-object v5, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mGattService:Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v5, v1}, Lcom/android/bluetooth/gatt/GattService;->addScanEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ScanEvent;)V

    .line 279
    iget-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalScanTime:J

    add-long/2addr v7, v3

    iput-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalScanTime:J

    .line 280
    iget-wide v7, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendDuration:J

    sub-long/2addr v3, v7

    .line 281
    iget-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalActiveTime:J

    add-long/2addr v7, v3

    iput-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mTotalActiveTime:J

    .line 282
    iget v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->scanMode:I

    const/4 v5, -0x1

    if-eq v1, v5, :cond_6

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    goto :goto_0

    .line 293
    :cond_3
    iget-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLowLantencyScanTime:J

    add-long/2addr v7, v3

    iput-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLowLantencyScanTime:J

    goto :goto_0

    .line 290
    :cond_4
    iget-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mBalancedScanTime:J

    add-long/2addr v7, v3

    iput-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mBalancedScanTime:J

    .line 291
    goto :goto_0

    .line 287
    :cond_5
    iget-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLowPowerScanTime:J

    add-long/2addr v7, v3

    iput-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mLowPowerScanTime:J

    .line 288
    goto :goto_0

    .line 284
    :cond_6
    iget-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mOppScanTime:J

    add-long/2addr v7, v3

    iput-wide v7, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mOppScanTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    nop

    .line 299
    :goto_0
    :try_start_2
    iget-boolean v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isFilterScan:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBackgroundScan:Z

    if-nez v1, :cond_7

    iget-boolean v1, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isOpportunisticScan:Z

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    move v2, v6

    .line 301
    :goto_1
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mWorkSource:Landroid/os/WorkSource;

    iget v4, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    rem-int/lit8 v4, v4, 0x64

    invoke-interface {v1, v3, v4}, Lcom/android/internal/app/IBatteryStats;->noteBleScanResults(Landroid/os/WorkSource;I)V

    .line 302
    sget-object v1, Lcom/android/bluetooth/gatt/AppScanStats;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BLE_SCAN_RESULT_RECEIVED["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]noteBleScanResults="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v3, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v1, v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteBleScanStopped(Landroid/os/WorkSource;Z)V

    .line 304
    sget-object v1, Lcom/android/bluetooth/gatt/AppScanStats;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BLE_SCAN_STATE_CHANGED["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]noteBleScanStopped="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 309
    goto :goto_2

    .line 305
    :catch_0
    move-exception v1

    .line 307
    :try_start_3
    sget-object v1, Lcom/android/bluetooth/gatt/AppScanStats;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]noteBleScanResults="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    sget-object v1, Lcom/android/bluetooth/gatt/AppScanStats;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]noteBleScanStopped"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_2
    const/4 p1, 0x4

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mWorkSource:Landroid/os/WorkSource;

    iget v2, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->results:I

    rem-int/lit8 v2, v2, 0x64

    invoke-static {p1, v1, v2}, Lcom/android/bluetooth/BluetoothStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 312
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/bluetooth/gatt/AppScanStats;->mWorkSource:Landroid/os/WorkSource;

    const/4 v5, 0x0

    iget-boolean v6, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isFilterScan:Z

    iget-boolean v7, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isBackgroundScan:Z

    iget-boolean v8, v0, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isOpportunisticScan:Z

    invoke-static/range {v3 .. v8}, Lcom/android/bluetooth/BluetoothStatsLog;->write(ILandroid/os/WorkSource;IZZZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 315
    monitor-exit p0

    return-void

    .line 249
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized recordScanSuspend(I)V
    .locals 2

    monitor-enter p0

    .line 318
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AppScanStats;->getScanFromScannerId(I)Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    move-result-object p1

    .line 319
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isSuspended:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 322
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->suspendStartTime:J

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isSuspended:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 320
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 317
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setScanTimeout(I)V
    .locals 1

    monitor-enter p0

    .line 340
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/gatt/AppScanStats;->isScanning()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 341
    monitor-exit p0

    return-void

    .line 344
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AppScanStats;->getScanFromScannerId(I)Lcom/android/bluetooth/gatt/AppScanStats$LastScan;

    move-result-object p1

    .line 345
    if-eqz p1, :cond_1

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/bluetooth/gatt/AppScanStats$LastScan;->isTimeout:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    :cond_1
    monitor-exit p0

    return-void

    .line 339
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
