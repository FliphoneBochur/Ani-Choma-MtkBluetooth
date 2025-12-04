.class public Lcom/android/bluetooth/hid/HidDeviceService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HidDeviceService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;,
        Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;,
        Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final FOREGROUND_IMPORTANCE_CUTOFF:I = 0xc8

.field static final HAL_CONN_STATE_CONNECTED:I = 0x0

.field static final HAL_CONN_STATE_CONNECTING:I = 0x1

.field static final HAL_CONN_STATE_DISCONNECTED:I = 0x2

.field static final HAL_CONN_STATE_DISCONNECTING:I = 0x3

.field private static final MESSAGE_APPLICATION_STATE_CHANGED:I = 0x1

.field private static final MESSAGE_CONNECT_STATE_CHANGED:I = 0x2

.field private static final MESSAGE_GET_REPORT:I = 0x3

.field private static final MESSAGE_IMPORTANCE_CHANGE:I = 0x8

.field private static final MESSAGE_INTR_DATA:I = 0x6

.field private static final MESSAGE_SET_PROTOCOL:I = 0x5

.field private static final MESSAGE_SET_REPORT:I = 0x4

.field private static final MESSAGE_VC_UNPLUG:I = 0x7

.field private static final TAG:Ljava/lang/String;

.field private static sHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

.field private mDeathRcpt:Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;

.field private mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

.field private mHidDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHidDeviceNativeInterface:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

.field private mHidDeviceState:I

.field private mNativeAvailable:Z

.field private mUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;

.field private mUserUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    nop

    .line 57
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    .line 59
    const-class v0, Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mNativeAvailable:Z

    .line 79
    iput v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceState:I

    .line 80
    iput v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mUserUid:I

    .line 265
    new-instance v0, Lcom/android/bluetooth/hid/HidDeviceService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidDeviceService$1;-><init>(Lcom/android/bluetooth/hid/HidDeviceService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 54
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/hid/HidDeviceService;)Z
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidDeviceService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/hid/HidDeviceService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hid/HidDeviceService;)Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/hid/HidDeviceService;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hid/HidDeviceService;)Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/hid/HidDeviceService;Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;)Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mDeathRcpt:Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceDeathRecipient;

    return-object p1
.end method

.method static synthetic access$500(I)I
    .locals 0

    .line 54
    invoke-static {p0}, Lcom/android/bluetooth/hid/HidDeviceService;->convertHalState(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/hid/HidDeviceService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidDeviceService;->setAndBroadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/hid/HidDeviceService;I)Z
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->unregisterAppUid(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/hid/HidDeviceService;)Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/hid/HidDeviceService;)Z
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidDeviceService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method private checkCallingUid()Z
    .locals 2

    .line 505
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 506
    iget v1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mUserUid:I

    if-eq v0, v1, :cond_0

    .line 507
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "checkCallingUid(): caller UID doesn\'t match registered user UID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const/4 v0, 0x0

    return v0

    .line 510
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private checkDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 501
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 498
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/4 p1, 0x0

    return p1
.end method

.method private static convertHalState(I)I
    .locals 1

    .line 945
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 955
    const/4 p0, 0x0

    return p0

    .line 953
    :cond_0
    return v0

    .line 949
    :cond_1
    return v0

    .line 947
    :cond_2
    const/4 p0, 0x2

    return p0
.end method

.method public static declared-synchronized getHidDeviceService()Lcom/android/bluetooth/hid/HidDeviceService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/hid/HidDeviceService;

    monitor-enter v0

    .line 782
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hid/HidDeviceService;->sHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 783
    sget-object v1, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v3, "getHidDeviceService(): service is NULL"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    monitor-exit v0

    return-object v2

    .line 786
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/hid/HidDeviceService;->sHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-virtual {v1}, Lcom/android/bluetooth/hid/HidDeviceService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 787
    sget-object v1, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v3, "getHidDeviceService(): service is not available"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    monitor-exit v0

    return-object v2

    .line 790
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/hid/HidDeviceService;->sHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 781
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setAndBroadcastConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 914
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 915
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAndBroadcastConnectionState(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " oldState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " newState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 920
    sget-object p1, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string p2, "Connection state changed for unknown device, ignoring"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return-void

    .line 924
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceState:I

    .line 925
    iput p2, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceState:I

    .line 927
    if-ne v0, p2, :cond_2

    .line 928
    sget-object p1, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string p2, "Connection state is unchanged, ignoring"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void

    .line 932
    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 933
    sget-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HID_DEVICE:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 936
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 937
    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 938
    const-string v0, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 939
    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 940
    const/high16 p1, 0x4000000

    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 941
    const-string p1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v1, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 942
    return-void
.end method

.method private static declared-synchronized setHidDeviceService(Lcom/android/bluetooth/hid/HidDeviceService;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/hid/HidDeviceService;

    monitor-enter v0

    .line 794
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v1, :cond_0

    .line 795
    sget-object v1, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHidDeviceService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_0
    sput-object p0, Lcom/android/bluetooth/hid/HidDeviceService;->sHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 798
    monitor-exit v0

    return-void

    .line 793
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private declared-synchronized unregisterAppUid(I)Z
    .locals 3

    monitor-enter p0

    .line 573
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 574
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterAppUid(): uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_0
    iget v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mUserUid:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mUserUid:I

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_2

    .line 578
    :cond_1
    iput v1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mUserUid:I

    .line 579
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceNativeInterface:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->unregisterApp()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 581
    :cond_2
    :try_start_1
    sget-boolean p1, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz p1, :cond_3

    .line 582
    sget-object p1, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v0, "unregisterAppUid(): caller UID doesn\'t match user UID"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    :cond_3
    monitor-exit p0

    return v1

    .line 572
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    monitor-enter p0

    .line 624
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 626
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService;->checkCallingUid()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceNativeInterface:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    .line 623
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    monitor-enter p0

    .line 639
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 641
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnect(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 645
    iget v1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mUserUid:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2710

    if-lt v0, v1, :cond_1

    .line 646
    sget-object p1, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v0, "disconnect(): caller UID doesn\'t match user UID"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 647
    monitor-exit p0

    return v2

    .line 649
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->checkDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceNativeInterface:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->disconnect()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    monitor-exit p0

    return v2

    .line 638
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 695
    if-eqz p1, :cond_0

    .line 698
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/16 v1, 0x13

    .line 701
    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 700
    return p1

    .line 696
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 809
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 811
    iget p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceState:I

    return p1

    .line 813
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 817
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 820
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    .line 821
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, p1, v2

    .line 822
    iget v4, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceState:I

    if-ne v3, v4, :cond_0

    .line 823
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    goto :goto_1

    .line 821
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    :cond_1
    :goto_1
    return-object v0
.end method

.method declared-synchronized getUserAppName()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 715
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    iget v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mUserUid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    .line 717
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 719
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidDeviceService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mUserUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 720
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 493
    new-instance v0, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hid/HidDeviceService$BluetoothHidDeviceBinder;-><init>(Lcom/android/bluetooth/hid/HidDeviceService;)V

    return-object v0
.end method

.method declared-synchronized onApplicationStateChangedFromNative(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 3

    monitor-enter p0

    .line 833
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 834
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onApplicationStateChanged(): registered="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 838
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 839
    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 840
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    monitor-exit p0

    return-void

    .line 832
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onConnectStateChangedFromNative(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    monitor-enter p0

    .line 844
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 845
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectStateChanged(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 850
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 851
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 852
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 853
    monitor-exit p0

    return-void

    .line 843
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onGetReportFromNative(BBS)V
    .locals 3

    monitor-enter p0

    .line 856
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 857
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetReport(): type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bufferSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 861
    if-lez p3, :cond_1

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p3}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 862
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 863
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 864
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 865
    monitor-exit p0

    return-void

    .line 855
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onInterruptDataFromNative(B[B)V
    .locals 3

    monitor-enter p0

    .line 892
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 893
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInterruptData(): reportId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 898
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 899
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 900
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 901
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 902
    monitor-exit p0

    return-void

    .line 891
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onSetProtocolFromNative(B)V
    .locals 3

    monitor-enter p0

    .line 882
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 883
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetProtocol(): protocol="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 887
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 888
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    monitor-exit p0

    return-void

    .line 881
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onSetReportFromNative(BB[B)V
    .locals 3

    monitor-enter p0

    .line 868
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 869
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetReport(): reportType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " reportId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    :cond_0
    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p3

    .line 874
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 875
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 876
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 877
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 878
    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 879
    monitor-exit p0

    return-void

    .line 867
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 772
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "Need to unregister app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {p0}, Lcom/android/bluetooth/hid/HidDeviceService;->unregisterApp()Z

    .line 774
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method declared-synchronized onVirtualCableUnplugFromNative()V
    .locals 2

    monitor-enter p0

    .line 905
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 906
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "onVirtualCableUnplug()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 910
    iget-object v1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 911
    monitor-exit p0

    return-void

    .line 904
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized registerApp(Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z
    .locals 17

    move-object/from16 v1, p0

    monitor-enter p0

    .line 516
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v2, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget v0, v1, Lcom/android/bluetooth/hid/HidDeviceService;->mUserUid:I

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 518
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v3, "registerApp(): failed because another app is registered"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    monitor-exit p0

    return v2

    .line 522
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 523
    sget-boolean v3, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v3, :cond_1

    .line 524
    sget-object v3, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerApp(): calling uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_1
    const/16 v3, 0x2710

    if-lt v0, v3, :cond_2

    iget-object v3, v1, Lcom/android/bluetooth/hid/HidDeviceService;->mActivityManager:Landroid/app/ActivityManager;

    .line 527
    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v3

    const/16 v4, 0xc8

    if-le v3, v4, :cond_2

    .line 528
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v3, "registerApp(): failed because the app is not foreground"

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 529
    monitor-exit p0

    return v2

    .line 531
    :cond_2
    :try_start_2
    iput v0, v1, Lcom/android/bluetooth/hid/HidDeviceService;->mUserUid:I

    .line 532
    move-object/from16 v0, p4

    iput-object v0, v1, Lcom/android/bluetooth/hid/HidDeviceService;->mCallback:Landroid/bluetooth/IBluetoothHidDeviceCallback;

    .line 534
    iget-object v3, v1, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceNativeInterface:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    .line 535
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->getName()Ljava/lang/String;

    move-result-object v4

    .line 536
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->getDescription()Ljava/lang/String;

    move-result-object v5

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->getProvider()Ljava/lang/String;

    move-result-object v6

    .line 538
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->getSubclass()B

    move-result v7

    .line 539
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->getDescriptors()[B

    move-result-object v8

    .line 540
    const/4 v0, 0x5

    const/4 v9, 0x4

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x6

    if-nez p2, :cond_3

    .line 541
    move-object v15, v13

    goto :goto_0

    .line 542
    :cond_3
    new-array v15, v14, [I

    .line 543
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getServiceType()I

    move-result v16

    aput v16, v15, v2

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getTokenRate()I

    move-result v16

    aput v16, v15, v12

    .line 545
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getTokenBucketSize()I

    move-result v16

    aput v16, v15, v11

    .line 546
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getPeakBandwidth()I

    move-result v16

    aput v16, v15, v10

    .line 547
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getLatency()I

    move-result v16

    aput v16, v15, v9

    .line 548
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getDelayVariation()I

    move-result v16

    aput v16, v15, v0

    .line 550
    :goto_0
    if-nez p3, :cond_4

    .line 551
    move-object v10, v13

    goto :goto_1

    .line 552
    :cond_4
    new-array v13, v14, [I

    .line 553
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getServiceType()I

    move-result v14

    aput v14, v13, v2

    .line 554
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getTokenRate()I

    move-result v2

    aput v2, v13, v12

    .line 555
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getTokenBucketSize()I

    move-result v2

    aput v2, v13, v11

    .line 556
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getPeakBandwidth()I

    move-result v2

    aput v2, v13, v10

    .line 557
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getLatency()I

    move-result v2

    aput v2, v13, v9

    .line 558
    invoke-virtual/range {p3 .. p3}, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->getDelayVariation()I

    move-result v2

    aput v2, v13, v0

    move-object v10, v13

    .line 534
    :goto_1
    move-object v9, v15

    invoke-virtual/range {v3 .. v10}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->registerApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B[I[I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z
    .locals 3

    monitor-enter p0

    .line 598
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 600
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

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

    .line 603
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->checkDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService;->checkCallingUid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceNativeInterface:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    .line 604
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->replyReport(BB[B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 603
    :goto_0
    monitor-exit p0

    return p1

    .line 597
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized reportError(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 3

    monitor-enter p0

    .line 705
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 707
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

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

    .line 710
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->checkDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService;->checkCallingUid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceNativeInterface:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    .line 711
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->reportError(B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 710
    :goto_0
    monitor-exit p0

    return p1

    .line 704
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z
    .locals 3

    monitor-enter p0

    .line 588
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 590
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendReport(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->checkDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService;->checkCallingUid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceNativeInterface:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    .line 594
    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->sendReport(I[B)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 593
    :goto_0
    monitor-exit p0

    return p1

    .line 587
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3

    .line 668
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 671
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Saved connectionPolicy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/16 v1, 0x13

    .line 674
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 675
    if-nez p2, :cond_1

    .line 676
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 677
    const/4 p1, 0x1

    return p1

    .line 679
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected start()Z
    .locals 4

    .line 725
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 726
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    :cond_0
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->sHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 731
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v2, "start() twice, just return!!!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return v1

    .line 735
    :cond_1
    new-instance v0, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;-><init>(Lcom/android/bluetooth/hid/HidDeviceService;Lcom/android/bluetooth/hid/HidDeviceService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHandler:Lcom/android/bluetooth/hid/HidDeviceService$HidDeviceServiceHandler;

    .line 736
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->getInstance()Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceNativeInterface:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    .line 737
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->init()V

    .line 738
    iput-boolean v1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mNativeAvailable:Z

    .line 739
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hid/HidDeviceService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mActivityManager:Landroid/app/ActivityManager;

    .line 740
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    const/16 v3, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V

    .line 742
    invoke-static {p0}, Lcom/android/bluetooth/hid/HidDeviceService;->setHidDeviceService(Lcom/android/bluetooth/hid/HidDeviceService;)V

    .line 743
    return v1
.end method

.method protected stop()Z
    .locals 3

    .line 748
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 749
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_0
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->sHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 753
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v2, "stop() called before start()"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    return v1

    .line 757
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->setHidDeviceService(Lcom/android/bluetooth/hid/HidDeviceService;)V

    .line 758
    iget-boolean v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mNativeAvailable:Z

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceNativeInterface:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->cleanup()V

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mNativeAvailable:Z

    .line 763
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_3

    .line 764
    iget-object v2, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mUidImportanceListener:Landroid/app/ActivityManager$OnUidImportanceListener;

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->removeOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;)V

    .line 767
    :cond_3
    return v1
.end method

.method declared-synchronized unplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    monitor-enter p0

    .line 608
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 610
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unplug(): device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->checkDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceService;->checkCallingUid()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/bluetooth/hid/HidDeviceService;->mHidDeviceNativeInterface:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    .line 614
    invoke-virtual {p1}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->unplug()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 613
    :goto_0
    monitor-exit p0

    return p1

    .line 607
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized unregisterApp()Z
    .locals 2

    monitor-enter p0

    .line 563
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hid/HidDeviceService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    sget-boolean v0, Lcom/android/bluetooth/hid/HidDeviceService;->DBG:Z

    if-eqz v0, :cond_0

    .line 565
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceService;->TAG:Ljava/lang/String;

    const-string v1, "unregisterApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 569
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hid/HidDeviceService;->unregisterAppUid(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 562
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
