.class public Lcom/android/bluetooth/btservice/AdapterService;
.super Landroid/app/Service;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;,
        Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTION_ALARM_WAKEUP:Ljava/lang/String; = "com.android.bluetooth.btservice.action.ALARM_WAKEUP"

.field public static final ACTION_LOAD_ADAPTER_PROPERTIES:Ljava/lang/String; = "com.android.bluetooth.btservice.action.LOAD_ADAPTER_PROPERTIES"

.field public static final ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "com.android.bluetooth.btservice.action.STATE_CHANGED"

.field public static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field static final BLUETOOTH_BTSNOOP_DEFAULT_MODE_PROPERTY:Ljava/lang/String; = "persist.bluetooth.btsnoopdefaultmode"

.field static final BLUETOOTH_BTSNOOP_LOG_MODE_PROPERTY:Ljava/lang/String; = "persist.bluetooth.btsnooplogmode"

.field static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final BLUETOOTH_PRIVILEGED:Ljava/lang/String; = "android.permission.BLUETOOTH_PRIVILEGED"

.field private static final CLEANUP_NATIVE_TIMEOUT_DELAY:I = 0xfa0

.field private static final CONTROLLER_ENERGY_UPDATE_TIMEOUT_MILLIS:I = 0x1e

.field private static final DBG:Z = true

.field public static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field static final LOCAL_MAC_ADDRESS_PERM:Ljava/lang/String; = "android.permission.LOCAL_MAC_ADDRESS"

.field private static final MESSAGE_ACCESS_PERMISSION_PREFERENCE_FILE:Ljava/lang/String; = "message_access_permission"

.field private static final MESSAGE_CLEANUP_NATIVE_TIMEOUT:I = 0x4

.field private static final MESSAGE_PROFILE_SERVICE_REGISTERED:I = 0x2

.field private static final MESSAGE_PROFILE_SERVICE_STATE_CHANGED:I = 0x1

.field private static final MESSAGE_PROFILE_SERVICE_UNREGISTERED:I = 0x3

.field private static final MIN_ADVT_INSTANCES_FOR_MA:I = 0x5

.field private static final MIN_OFFLOADED_FILTERS:I = 0xa

.field private static final MIN_OFFLOADED_SCAN_STORAGE_BYTES:I = 0x400

.field private static final PHONEBOOK_ACCESS_PERMISSION_PREFERENCE_FILE:Ljava/lang/String; = "phonebook_access_permission"

.field public static final PROFILE_CONN_REJECTED:I = 0x2

.field static final RECEIVE_MAP_PERM:Ljava/lang/String; = "android.permission.RECEIVE_BLUETOOTH_MAP"

.field private static final SIM_ACCESS_PERMISSION_PREFERENCE_FILE:Ljava/lang/String; = "sim_access_permission"

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapterService"

.field private static final VERBOSE:Z

.field private static final mDelayA2dpConnDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field public static final sUserSwitchedReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field private mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

.field private mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

.field private mActiveDeviceManager:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

.field private mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

.field private mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

.field private final mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

.field private mBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

.field private mBluetoothSocketManagerBinder:Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;

.field private mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/bluetooth/IBluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCleaningUp:Z

.field private mCurrentRequestId:I

.field private mDatabaseManager:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

.field private mDefaultSnoopLogSettingAtEnable:Ljava/lang/String;

.field private final mDiscoveringPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/btservice/DiscoveringPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnergyInfoLock:Ljava/lang/Object;

.field private mEnergyUsedTotalVoltAmpSecMicro:J

.field private mFwMonitor:Lcom/android/bluetooth/fwmonitor/FwMonitorService;

.field private final mHandler:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;

.field private mHandlerForCleanUpTimeout:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

.field private mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

.field private mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

.field private mHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;

.field private mHidHostService:Lcom/android/bluetooth/hid/HidHostService;

.field private mIdleTimeTotalMs:J

.field public mInteropDatabase:Lcom/android/bluetooth/interop/InteropDatabase;

.field private mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

.field private mMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

.field private mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

.field private final mMetadataListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/IBluetoothMetadataListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNativeAvailable:Z

.field private mPanService:Lcom/android/bluetooth/pan/PanService;

.field private mPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

.field private mPbapService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

.field private mPendingAlarm:Landroid/app/PendingIntent;

.field private mPhonePolicy:Lcom/android/bluetooth/btservice/PhonePolicy;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mProfileServicesState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQuietmode:Z

.field private final mRegisteredProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/btservice/ProfileService;",
            ">;"
        }
    .end annotation
.end field

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field private final mRunningProfiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/btservice/ProfileService;",
            ">;"
        }
    .end annotation
.end field

.field private mRxTimeTotalMs:J

.field private mSapService:Lcom/android/bluetooth/sap/SapService;

.field private mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

.field private mSilenceDeviceManager:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

.field private mSnoopLogSettingAtEnable:Ljava/lang/String;

.field private mStackReportedState:I

.field private mTxTimeTotalMs:J

.field private final mUidTraffic:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/bluetooth/UidTraffic;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 125
    nop

    .line 126
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->VERBOSE:Z

    .line 179
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->classInitNative()V

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/AdapterService;->mDelayA2dpConnDevices:Ljava/util/ArrayList;

    .line 186
    const-string v1, "E4:76:84"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->mDelayA2dpConnDevices:Ljava/util/ArrayList;

    const-string v1, "F0:5C:D5"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$3;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/AdapterService$3;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/AdapterService;->sUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyInfoLock:Ljava/lang/Object;

    .line 137
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRegisteredProfiles:Ljava/util/ArrayList;

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRunningProfiles:Ljava/util/ArrayList;

    .line 157
    const-string v0, "empty"

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSnoopLogSettingAtEnable:Ljava/lang/String;

    .line 158
    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDefaultSnoopLogSettingAtEnable:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDiscoveringPackages:Ljava/util/ArrayList;

    .line 193
    new-instance v0, Lcom/android/bluetooth/interop/InteropDatabase;

    invoke-direct {v0}, Lcom/android/bluetooth/interop/InteropDatabase;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mInteropDatabase:Lcom/android/bluetooth/interop/InteropDatabase;

    .line 196
    new-instance v0, Lcom/android/bluetooth/fwmonitor/FwMonitorService;

    invoke-direct {v0}, Lcom/android/bluetooth/fwmonitor/FwMonitorService;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mFwMonitor:Lcom/android/bluetooth/fwmonitor/FwMonitorService;

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMetadataListeners:Ljava/util/HashMap;

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    .line 234
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    .line 392
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;

    .line 3124
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$4;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$4;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->verboseLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRegisteredProfiles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1000(I)I
    .locals 0

    .line 122
    invoke-static {p0}, Lcom/android/bluetooth/btservice/AdapterService;->convertScanModeToHal(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/btservice/AdapterService;)Z
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscoveryNative()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/storage/DatabaseManager;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDatabaseManager:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/RemoteDevices;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/BondStateMachine;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/btservice/AdapterService;[BZI[B)Z
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->pinReplyNative([BZI[B)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/btservice/AdapterService;[BIZI)Z
    .locals 0

    .line 122
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterService;->sspReplyNative([BIZI)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/SilenceDeviceManager;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSilenceDeviceManager:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothSocketManagerBinder:Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/sdp/SdpManager;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/ArrayList;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRunningProfiles:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/btservice/AdapterService;)Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/btservice/AdapterService;)Ljava/util/HashMap;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMetadataListeners:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/android/bluetooth/btservice/AdapterService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->alarmFiredNative()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterProperties;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->initProfileServices()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterState;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/btservice/AdapterService;Ljava/lang/String;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->invalidateBluetoothGetStateCache()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/btservice/AdapterService;)Z
    .locals 0

    .line 122
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(I)Z
    .locals 0

    .line 122
    invoke-static {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isValidIoCapability(I)Z

    move-result p0

    return p0
.end method

.method private acquireWakeLock(Ljava/lang/String;)Z
    .locals 2

    .line 2918
    monitor-enter p0

    .line 2919
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2920
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLockName:Ljava/lang/String;

    .line 2921
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 2924
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2925
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2927
    :cond_1
    monitor-exit p0

    .line 2928
    return v1

    .line 2927
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private native alarmFiredNative()V
.end method

.method private native cancelDiscoveryNative()Z
.end method

.method static native classInitNative()V
.end method

.method private static declared-synchronized clearAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2

    const-class v0, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v0

    .line 212
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-ne v1, p0, :cond_0

    .line 213
    const/4 p0, 0x0

    sput-object p0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_0
    monitor-exit v0

    return-void

    .line 211
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private connectEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 1017
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 1018
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 1020
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    const/4 v3, 0x1

    const-string v4, "BluetoothAdapterService"

    if-eqz v2, :cond_0

    invoke-direct {p0, v1, v0, v3, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 1021
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1023
    const-string v2, "connectEnabledProfiles: Connecting Headset Profile"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1026
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v2, :cond_1

    const/16 v2, 0x10

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 1028
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-lez v2, :cond_1

    .line 1030
    const-string v2, "connectEnabledProfiles: Connecting HFP"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1033
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 1034
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-lez v2, :cond_2

    .line 1036
    const-string v2, "connectEnabledProfiles: Connecting A2dp"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1039
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    if-eqz v2, :cond_3

    const/16 v2, 0xb

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    .line 1040
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-lez v2, :cond_3

    .line 1042
    const-string v2, "connectEnabledProfiles: Connecting A2dp Sink"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1045
    :cond_3
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

    if-eqz v2, :cond_4

    const/16 v2, 0x12

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

    .line 1047
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-lez v2, :cond_4

    .line 1049
    const-string v2, "connectEnabledProfiles: Connecting MAP"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1052
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    if-eqz v2, :cond_5

    const/4 v2, 0x4

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    .line 1053
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-lez v2, :cond_5

    .line 1055
    const-string v2, "connectEnabledProfiles: Connecting Hid Host Profile"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hid/HidHostService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1058
    :cond_5
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPanService:Lcom/android/bluetooth/pan/PanService;

    if-eqz v2, :cond_6

    const/4 v2, 0x5

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPanService:Lcom/android/bluetooth/pan/PanService;

    .line 1059
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-lez v2, :cond_6

    .line 1061
    const-string v2, "connectEnabledProfiles: Connecting Pan Profile"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPanService:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/pan/PanService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1064
    :cond_6
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    if-eqz v2, :cond_7

    const/16 v2, 0x11

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    .line 1066
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-lez v2, :cond_7

    .line 1068
    const-string v2, "connectEnabledProfiles: Connecting Pbap"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1071
    :cond_7
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    if-eqz v2, :cond_8

    const/16 v2, 0x15

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    .line 1073
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_8

    .line 1075
    const-string v0, "connectEnabledProfiles: Connecting Hearing Aid Profile"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1079
    :cond_8
    return v3
.end method

.method static convertScanModeFromHal(I)I
    .locals 1

    .line 2879
    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 2888
    const/4 p0, -0x1

    return p0

    .line 2885
    :cond_0
    const/16 p0, 0x17

    return p0

    .line 2883
    :cond_1
    const/16 p0, 0x15

    return p0

    .line 2881
    :cond_2
    const/16 p0, 0x14

    return p0
.end method

.method private static convertScanModeToHal(I)I
    .locals 1

    .line 2866
    const/16 v0, 0x14

    if-eq p0, v0, :cond_2

    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x17

    if-eq p0, v0, :cond_0

    .line 2875
    const/4 p0, -0x1

    return p0

    .line 2872
    :cond_0
    const/4 p0, 0x2

    return p0

    .line 2870
    :cond_1
    const/4 p0, 0x1

    return p0

    .line 2868
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private debugLog(Ljava/lang/String;)V
    .locals 1

    .line 3110
    const-string v0, "BluetoothAdapterService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3112
    return-void
.end method

.method private dumpMetrics(Ljava/io/FileDescriptor;)V
    .locals 4

    .line 3083
    invoke-static {}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->newBuilder()Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;

    move-result-object v0

    .line 3084
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->dumpMetricsNative()[B

    move-result-object v1

    .line 3085
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpMetrics: native metrics size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 3086
    array-length v2, v1

    if-lez v2, :cond_0

    .line 3088
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->mergeFrom([B)Lcom/google/protobuf/AbstractMessageLite$Builder;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3092
    goto :goto_0

    .line 3089
    :catch_0
    move-exception p1

    .line 3090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpMetrics: problem parsing metrics protobuf, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAdapterService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    return-void

    .line 3094
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->setNumBondedDevices(I)Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;

    .line 3095
    invoke-static {v0}, Lcom/android/bluetooth/btservice/MetricsLogger;->dumpProto(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;)V

    .line 3096
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRegisteredProfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/btservice/ProfileService;

    .line 3097
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/btservice/ProfileService;->dumpProto(Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;)V

    .line 3098
    goto :goto_1

    .line 3099
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;

    invoke-virtual {v0}, Lcom/android/bluetooth/BluetoothMetricsProto$BluetoothLog;->toByteArray()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    .line 3100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpMetrics: combined metrics size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 3101
    :try_start_1
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3102
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3103
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 3105
    goto :goto_3

    .line 3101
    :catchall_0
    move-exception p1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 3103
    :catch_1
    move-exception p1

    .line 3104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpMetrics: error writing combined protobuf to fd, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 3106
    :goto_3
    return-void
.end method

.method private native dumpMetricsNative()[B
.end method

.method private native dumpNative(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
.end method

.method private energyInfoCallback(IIJJJJ[Landroid/bluetooth/UidTraffic;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2951
    move-object/from16 v1, p0

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p11

    if-ltz v2, :cond_3

    const/4 v0, 0x3

    if-gt v2, v0, :cond_3

    .line 2955
    const-wide/16 v10, 0x0

    cmp-long v0, p9, v10

    if-nez v0, :cond_0

    .line 2957
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getTxCurrentMa()I

    move-result v0

    int-to-long v10, v0

    invoke-static {v3, v4, v10, v11}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v10

    .line 2958
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getRxCurrentMa()I

    move-result v0

    int-to-long v12, v0

    invoke-static {v5, v6, v12, v13}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v12

    .line 2959
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getIdleCurrentMa()I

    move-result v0

    int-to-long v14, v0

    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->multiplyExact(JJ)J

    move-result-wide v14

    .line 2960
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v10

    long-to-double v10, v10

    .line 2961
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/AdapterService;->getOperatingVolt()D

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    mul-double/2addr v10, v12

    double-to-long v10, v10

    .line 2965
    goto :goto_0

    .line 2962
    :catch_0
    move-exception v0

    .line 2963
    const-string v10, "BluetoothAdapterService"

    const-string v11, "overflow in bluetooth energy callback"

    invoke-static {v10, v11, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2968
    :cond_0
    move-wide/from16 v10, p9

    :goto_0
    iget-object v12, v1, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyInfoLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2969
    :try_start_1
    iput v2, v1, Lcom/android/bluetooth/btservice/AdapterService;->mStackReportedState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2975
    :try_start_2
    iget-wide v13, v1, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:J

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v13

    .line 2976
    move-wide/from16 p9, v13

    iget-wide v13, v1, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:J

    invoke-static {v13, v14, v5, v6}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v13

    .line 2977
    move-wide v15, v13

    iget-wide v13, v1, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:J

    invoke-static {v13, v14, v7, v8}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v13

    .line 2978
    move-wide/from16 v17, v13

    iget-wide v13, v1, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:J

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->addExact(JJ)J

    move-result-wide v13
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2987
    move-wide v5, v13

    move-wide/from16 v7, v17

    move-wide/from16 v13, p9

    move-wide/from16 v19, v10

    move-wide v10, v15

    move-wide/from16 v15, v19

    goto :goto_1

    .line 2979
    :catch_1
    move-exception v0

    .line 2982
    :try_start_3
    const-string v13, "BluetoothAdapterService"

    const-string v14, "overflow in bluetooth energy callback"

    invoke-static {v13, v14, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2983
    iget-wide v13, v1, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:J

    .line 2984
    move-wide v15, v10

    iget-wide v10, v1, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:J

    .line 2985
    move-wide/from16 v17, v10

    iget-wide v10, v1, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:J

    .line 2986
    move-wide/from16 p9, v10

    iget-wide v10, v1, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:J

    move-wide/from16 v7, p9

    move-wide v5, v10

    move-wide/from16 v10, v17

    .line 2989
    :goto_1
    iput-wide v13, v1, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:J

    .line 2990
    iput-wide v10, v1, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:J

    .line 2991
    iput-wide v7, v1, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:J

    .line 2992
    iput-wide v5, v1, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:J

    .line 2994
    array-length v0, v9

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_2

    aget-object v6, v9, v5

    .line 2995
    iget-object v7, v1, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/UidTraffic;

    .line 2996
    if-nez v7, :cond_1

    .line 2997
    iget-object v7, v1, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 2999
    :cond_1
    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/bluetooth/UidTraffic;->addRxBytes(J)V

    .line 3000
    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/bluetooth/UidTraffic;->addTxBytes(J)V

    .line 2994
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 3003
    :cond_2
    iget-object v0, v1, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyInfoLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3004
    monitor-exit v12

    move-wide v5, v15

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 3007
    :cond_3
    move-wide/from16 v5, p9

    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "energyInfoCallback() status = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "txTime = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "rxTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "idleTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v3, p7

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "energyUsed = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ctrlState = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "traffic = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    invoke-static/range {p11 .. p11}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3007
    invoke-direct {v1, v0}, Lcom/android/bluetooth/btservice/AdapterService;->verboseLog(Ljava/lang/String;)V

    .line 3010
    return-void
.end method

.method private errorLog(Ljava/lang/String;)V
    .locals 1

    .line 3121
    const-string v0, "BluetoothAdapterService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3122
    return-void
.end method

.method public static declared-synchronized getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v0

    .line 199
    :try_start_0
    const-string v1, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdapterService() - returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    sget-object v1, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getIdleCurrentMa()I
    .locals 2

    .line 3031
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private native getMetricIdNative([B)I
.end method

.method private getOperatingVolt()D
    .locals 4

    .line 3043
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private getRxCurrentMa()I
    .locals 2

    .line 3039
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private getTxCurrentMa()I
    .locals 2

    .line 3035
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method private initProfileServices()V
    .locals 2

    .line 1101
    const-string v0, "BluetoothAdapterService"

    const-string v1, "initProfileServices: Initializing all bluetooth profile services"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 1103
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getA2dpSinkService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    .line 1104
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 1105
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    .line 1106
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getBluetoothMapService()Lcom/android/bluetooth/map/BluetoothMapService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    .line 1107
    invoke-static {}, Lcom/android/bluetooth/mapclient/MapClientService;->getMapClientService()Lcom/android/bluetooth/mapclient/MapClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

    .line 1108
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->getHidDeviceService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;

    .line 1109
    invoke-static {}, Lcom/android/bluetooth/hid/HidHostService;->getHidHostService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    .line 1110
    invoke-static {}, Lcom/android/bluetooth/pan/PanService;->getPanService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPanService:Lcom/android/bluetooth/pan/PanService;

    .line 1111
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getBluetoothPbapService()Lcom/android/bluetooth/pbap/BluetoothPbapService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .line 1112
    invoke-static {}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getPbapClientService()Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    .line 1113
    invoke-static {}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getHearingAidService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    .line 1114
    invoke-static {}, Lcom/android/bluetooth/sap/SapService;->getSapService()Lcom/android/bluetooth/sap/SapService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSapService:Lcom/android/bluetooth/sap/SapService;

    .line 1115
    return-void
.end method

.method private native interopDatabaseAddNative(I[BI)V
.end method

.method private native interopDatabaseClearNative()V
.end method

.method private invalidateBluetoothCaches()V
    .locals 0

    .line 867
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->invalidateGetProfileConnectionStateCache()V

    .line 868
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->invalidateIsOffloadedFilteringSupportedCache()V

    .line 869
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->invalidateBluetoothGetBondStateCache()V

    .line 870
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->invalidateBluetoothGetStateCache()V

    .line 871
    return-void
.end method

.method private invalidateBluetoothGetStateCache()V
    .locals 0

    .line 702
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->invalidateBluetoothGetStateCache()V

    .line 703
    return-void
.end method

.method private isAnyProfileEnabled(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_0

    .line 971
    return v1

    .line 973
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_1

    .line 975
    return v1

    .line 977
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_2

    .line 979
    return v1

    .line 981
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_3

    .line 983
    return v1

    .line 985
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_4

    .line 987
    return v1

    .line 989
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_5

    .line 991
    return v1

    .line 993
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPanService:Lcom/android/bluetooth/pan/PanService;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_6

    .line 995
    return v1

    .line 997
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-lez v0, :cond_7

    .line 999
    return v1

    .line 1001
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-lez p1, :cond_8

    .line 1003
    return v1

    .line 1006
    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method private isAvailable()Z
    .locals 1

    .line 1118
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isGuest()Z
    .locals 1

    .line 3135
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result v0

    return v0
.end method

.method private isNiapMode()Z
    .locals 2

    .line 3139
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 3140
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isCommonCriteriaModeEnabled(Landroid/content/ComponentName;)Z

    move-result v0

    .line 3139
    return v0
.end method

.method private isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 901
    const-string v0, "BluetoothAdapterService"

    if-eqz p2, :cond_0

    array-length v1, p2

    if-nez v1, :cond_1

    .line 902
    :cond_0
    const-string v1, "isSupported: Remote Device Uuids Empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_5

    .line 906
    sget-object p3, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 907
    invoke-static {p2, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    :cond_2
    sget-object p3, Landroid/bluetooth/BluetoothUuid;->HFP_AG:Landroid/os/ParcelUuid;

    .line 908
    invoke-static {p1, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    .line 909
    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    nop

    .line 906
    :goto_0
    return v1

    .line 911
    :cond_5
    const/16 v3, 0x10

    if-ne p3, v3, :cond_7

    .line 912
    sget-object p3, Landroid/bluetooth/BluetoothUuid;->HFP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    .line 913
    invoke-static {p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    move v1, v2

    goto :goto_1

    :cond_6
    nop

    .line 912
    :goto_1
    return v1

    .line 915
    :cond_7
    const/4 v3, 0x2

    if-ne p3, v3, :cond_a

    .line 916
    sget-object p1, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    .line 917
    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    :cond_8
    move v1, v2

    .line 916
    :cond_9
    return v1

    .line 919
    :cond_a
    const/16 v4, 0xb

    if-ne p3, v4, :cond_d

    .line 920
    sget-object p1, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    sget-object p1, Landroid/bluetooth/BluetoothUuid;->A2DP_SOURCE:Landroid/os/ParcelUuid;

    .line 921
    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_b
    move v1, v2

    .line 920
    :cond_c
    return v1

    .line 923
    :cond_d
    const/16 v4, 0x14

    if-ne p3, v4, :cond_e

    .line 924
    sget-object p1, Landroid/bluetooth/BluetoothUuid;->OBEX_OBJECT_PUSH:Landroid/os/ParcelUuid;

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 926
    :cond_e
    const/4 v4, 0x4

    if-ne p3, v4, :cond_11

    .line 927
    sget-object p1, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    sget-object p1, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    .line 928
    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_f
    move v1, v2

    .line 927
    :cond_10
    return v1

    .line 930
    :cond_11
    const/16 v4, 0x13

    if-ne p3, v4, :cond_13

    .line 931
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-virtual {p1, p4}, Lcom/android/bluetooth/hid/HidDeviceService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-nez p1, :cond_12

    move v1, v2

    :cond_12
    return v1

    .line 934
    :cond_13
    const/4 v4, 0x5

    if-ne p3, v4, :cond_14

    .line 935
    sget-object p1, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 937
    :cond_14
    const/16 v4, 0x9

    if-ne p3, v4, :cond_16

    .line 938
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {p1, p4}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-ne p1, v3, :cond_15

    move v1, v2

    :cond_15
    return v1

    .line 940
    :cond_16
    const/4 v4, 0x6

    if-ne p3, v4, :cond_18

    .line 941
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {p1, p4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-ne p1, v3, :cond_17

    move v1, v2

    :cond_17
    return v1

    .line 943
    :cond_18
    const/16 p4, 0x12

    if-ne p3, p4, :cond_19

    .line 944
    return v2

    .line 946
    :cond_19
    const/16 p4, 0x11

    if-ne p3, p4, :cond_1b

    .line 947
    sget-object p3, Landroid/bluetooth/BluetoothUuid;->PBAP_PCE:Landroid/os/ParcelUuid;

    invoke-static {p1, p3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    sget-object p1, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    .line 948
    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    move v1, v2

    goto :goto_2

    :cond_1a
    nop

    .line 947
    :goto_2
    return v1

    .line 950
    :cond_1b
    const/16 p1, 0x15

    if-ne p3, p1, :cond_1c

    .line 951
    sget-object p1, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 953
    :cond_1c
    const/16 p1, 0xa

    if-ne p3, p1, :cond_1d

    .line 954
    sget-object p1, Landroid/bluetooth/BluetoothUuid;->SAP:Landroid/os/ParcelUuid;

    invoke-static {p2, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 957
    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "isSupported: Unexpected profile passed in to function: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return v1
.end method

.method private static isValidIoCapability(I)Z
    .locals 2

    .line 2289
    if-ltz p0, :cond_1

    const/4 v0, 0x5

    if-lt p0, v0, :cond_0

    goto :goto_0

    .line 2294
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 2290
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid IO capability value - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BluetoothAdapterService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    const/4 p0, 0x0

    return p0
.end method

.method private native obfuscateAddressNative([B)[B
.end method

.method private native pinReplyNative([BZI[B)Z
.end method

.method private profileServicesRunning()Z
    .locals 2

    .line 1088
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRegisteredProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRegisteredProfiles:Ljava/util/ArrayList;

    .line 1089
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRunningProfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1090
    const/4 v0, 0x1

    return v0

    .line 1093
    :cond_0
    const-string v0, "BluetoothAdapterService"

    const-string v1, "profileServicesRunning: One or more supported services not running"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    const/4 v0, 0x0

    return v0
.end method

.method private native readEnergyInfo()I
.end method

.method private releaseWakeLock(Ljava/lang/String;)Z
    .locals 2

    .line 2936
    monitor-enter p0

    .line 2937
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 2938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Repeated wake lock release; aborting release: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 2939
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 2942
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2943
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2945
    :cond_1
    monitor-exit p0

    .line 2946
    const/4 p1, 0x1

    return p1

    .line 2945
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private reportActivityInfo()Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 15

    .line 2814
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 2815
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isActivityAndEnergyReportingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2820
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->readEnergyInfo()I

    .line 2822
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2824
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyInfoLock:Ljava/lang/Object;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2828
    goto :goto_0

    .line 2857
    :catchall_0
    move-exception v1

    goto/16 :goto_3

    .line 2825
    :catch_0
    move-exception v2

    .line 2830
    :goto_0
    :try_start_1
    new-instance v2, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 2831
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mStackReportedState:I

    iget-wide v7, p0, Lcom/android/bluetooth/btservice/AdapterService;->mTxTimeTotalMs:J

    iget-wide v9, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRxTimeTotalMs:J

    iget-wide v11, p0, Lcom/android/bluetooth/btservice/AdapterService;->mIdleTimeTotalMs:J

    iget-wide v13, p0, Lcom/android/bluetooth/btservice/AdapterService;->mEnergyUsedTotalVoltAmpSecMicro:J

    move-object v3, v2

    invoke-direct/range {v3 .. v14}, Landroid/bluetooth/BluetoothActivityEnergyInfo;-><init>(JIJJJJ)V

    .line 2836
    nop

    .line 2837
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    const-wide/16 v7, 0x0

    if-ge v4, v6, :cond_3

    .line 2838
    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/UidTraffic;

    .line 2839
    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v9

    cmp-long v9, v9, v7

    if-nez v9, :cond_1

    invoke-virtual {v6}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_2

    .line 2840
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 2837
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2845
    :cond_3
    if-lez v5, :cond_4

    new-array v1, v5, [Landroid/bluetooth/UidTraffic;

    .line 2846
    :cond_4
    nop

    .line 2847
    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 2848
    iget-object v5, p0, Lcom/android/bluetooth/btservice/AdapterService;->mUidTraffic:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/UidTraffic;

    .line 2849
    invoke-virtual {v5}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-nez v6, :cond_5

    invoke-virtual {v5}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v9

    cmp-long v6, v9, v7

    if-eqz v6, :cond_6

    .line 2850
    :cond_5
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5}, Landroid/bluetooth/UidTraffic;->clone()Landroid/bluetooth/UidTraffic;

    move-result-object v5

    aput-object v5, v1, v4

    move v4, v6

    .line 2847
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2854
    :cond_7
    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->setUidTraffic([Landroid/bluetooth/UidTraffic;)V

    .line 2856
    monitor-exit v0

    return-object v2

    .line 2857
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2816
    :cond_8
    :goto_4
    return-object v1
.end method

.method private retrieveBluetoothClassConfig()I
    .locals 3

    .line 659
    nop

    .line 660
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 659
    const-string v1, "bluetooth_class_of_device"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static declared-synchronized setAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter v0

    .line 204
    :try_start_0
    const-string v1, "BluetoothAdapterService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAdapterService() - trying to set service to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    if-nez p0, :cond_0

    .line 206
    monitor-exit v0

    return-void

    .line 208
    :cond_0
    :try_start_1
    sput-object p0, Lcom/android/bluetooth/btservice/AdapterService;->sAdapterService:Lcom/android/bluetooth/btservice/AdapterService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    monitor-exit v0

    return-void

    .line 203
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setAllProfileServiceStates([Ljava/lang/Class;I)V
    .locals 5

    .line 881
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 882
    const-class v3, Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 883
    goto :goto_1

    .line 885
    :cond_0
    invoke-direct {p0, v2, p2}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState(Ljava/lang/Class;I)V

    .line 881
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 887
    :cond_1
    return-void
.end method

.method private setProfileServiceState(Ljava/lang/Class;I)V
    .locals 2

    .line 874
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 875
    const-string p1, "action"

    const-string v1, "com.android.bluetooth.btservice.action.STATE_CHANGED"

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 876
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 877
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 878
    return-void
.end method

.method private setWakeAlarm(JZ)Z
    .locals 3

    .line 2895
    monitor-enter p0

    .line 2896
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 2897
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 2900
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 2901
    if-eqz p3, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    .line 2902
    :cond_1
    const/4 p1, 0x3

    .line 2904
    :goto_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.android.bluetooth.btservice.action.ALARM_WAKEUP"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2905
    const/4 p3, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    .line 2906
    invoke-static {p0, p3, p2, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    iput-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    .line 2907
    iget-object p3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p3, p1, v0, v1, p2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 2908
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 2909
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private native sspReplyNative([BIZI)Z
.end method

.method private native startDiscoveryNative()Z
.end method

.method private stopGattProfileService()V
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBleDisable()V

    .line 694
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRunningProfiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 695
    const-string v0, "stopGattProfileService() - No profiles services to stop."

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    .line 698
    :cond_0
    const-class v0, Lcom/android/bluetooth/gatt/GattService;

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState(Ljava/lang/Class;I)V

    .line 699
    return-void
.end method

.method private updateInteropDatabase()V
    .locals 15

    .line 395
    const-string v0, "\'"

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->interopDatabaseClearNative()V

    .line 397
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_interoperability_list"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 399
    if-nez v1, :cond_0

    .line 400
    return-void

    .line 402
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateInteropDatabase: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothAdapterService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 405
    array-length v2, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_7

    aget-object v6, v1, v5

    .line 406
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 407
    array-length v7, v6

    const/4 v8, 0x2

    if-eq v7, v8, :cond_1

    .line 408
    goto/16 :goto_3

    .line 412
    :cond_1
    nop

    .line 414
    const/4 v7, 0x1

    :try_start_0
    aget-object v8, v6, v7

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 418
    nop

    .line 421
    aget-object v9, v6, v4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v9, v7

    div-int/lit8 v9, v9, 0x3

    .line 422
    if-lt v9, v7, :cond_6

    const/4 v7, 0x6

    if-le v9, v7, :cond_2

    goto :goto_2

    .line 427
    :cond_2
    new-array v7, v7, [B

    .line 428
    nop

    .line 429
    move v10, v4

    move v11, v10

    :goto_1
    aget-object v12, v6, v4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v10, v12, :cond_4

    .line 430
    aget-object v12, v6, v4

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v13, 0x3a

    if-ne v12, v13, :cond_3

    .line 431
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 434
    :cond_3
    add-int/lit8 v12, v11, 0x1

    :try_start_1
    aget-object v13, v6, v4

    add-int/lit8 v14, v10, 0x2

    invoke-virtual {v13, v10, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x10

    invoke-static {v10, v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v10

    int-to-byte v10, v10

    aput-byte v10, v7, v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    nop

    .line 439
    move v11, v12

    move v10, v14

    goto :goto_1

    .line 435
    :catch_0
    move-exception v6

    .line 436
    nop

    .line 437
    move v11, v4

    .line 444
    :cond_4
    if-nez v11, :cond_5

    .line 445
    goto :goto_3

    .line 449
    :cond_5
    invoke-direct {p0, v8, v7, v9}, Lcom/android/bluetooth/btservice/AdapterService;->interopDatabaseAddNative(I[BI)V

    goto :goto_3

    .line 423
    :cond_6
    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateInteropDatabase: Malformed address string \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v4

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    goto :goto_3

    .line 415
    :catch_1
    move-exception v8

    .line 416
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateInteropDatabase: Invalid feature \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v6, v7

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    nop

    .line 405
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 451
    :cond_7
    return-void
.end method

.method private verboseLog(Ljava/lang/String;)V
    .locals 1

    .line 3115
    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 3116
    const-string v0, "BluetoothAdapterService"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    :cond_0
    return-void
.end method


# virtual methods
.method public addProfile(Lcom/android/bluetooth/btservice/ProfileService;)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 274
    return-void
.end method

.method bringDownBle()V
    .locals 0

    .line 634
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->stopGattProfileService()V

    .line 635
    return-void
.end method

.method bringUpBle()V
    .locals 9

    .line 597
    const-string v0, "bleOnProcessStart()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 599
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/Config;->init(Landroid/content/Context;)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->reset()V

    .line 614
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->init(Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 616
    const-string v0, "bleOnProcessStart() - Make Bond State Machine"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {p0, v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->make(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;Lcom/android/bluetooth/btservice/RemoteDevices;)Lcom/android/bluetooth/btservice/BondStateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    .line 619
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/btservice/JniCallbacks;->init(Lcom/android/bluetooth/btservice/BondStateMachine;Lcom/android/bluetooth/btservice/RemoteDevices;)V

    .line 622
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteResetBleScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 625
    goto :goto_0

    .line 623
    :catch_0
    move-exception v0

    .line 624
    const-string v0, "BluetoothAdapterService"

    const-string v1, "RemoteException trying to send a reset to BatteryStats"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_0
    const/4 v2, 0x2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/bluetooth/BluetoothStatsLog;->write_non_chained(IILjava/lang/String;IZZZ)V

    .line 630
    const-class v0, Lcom/android/bluetooth/gatt/GattService;

    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setProfileServiceState(Ljava/lang/Class;I)V

    .line 631
    return-void
.end method

.method native cancelBondNative([B)Z
.end method

.method cleanup()V
    .locals 5

    .line 760
    const-string v0, "cleanup()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 761
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    if-eqz v0, :cond_0

    .line 762
    const-string v0, "cleanup() - Service already starting to cleanup, ignoring request..."

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->errorLog(Ljava/lang/String;)V

    .line 763
    return-void

    .line 766
    :cond_0
    invoke-static {p0}, Lcom/android/bluetooth/btservice/AdapterService;->clearAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCleaningUp:Z

    .line 769
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->invalidateBluetoothCaches()V

    .line 771
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 773
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 774
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 775
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPendingAlarm:Landroid/app/PendingIntent;

    .line 780
    :cond_1
    monitor-enter p0

    .line 781
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 782
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 785
    :cond_2
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 787
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 789
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDatabaseManager:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    if-eqz v0, :cond_4

    .line 790
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->cleanup()V

    .line 793
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    if-eqz v0, :cond_5

    .line 794
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterState;->doQuit()V

    .line 797
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    if-eqz v0, :cond_6

    .line 798
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->doQuit()V

    .line 801
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    if-eqz v0, :cond_7

    .line 802
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->cleanup()V

    .line 805
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    if-eqz v0, :cond_8

    .line 806
    invoke-virtual {v0}, Lcom/android/bluetooth/sdp/SdpManager;->cleanup()V

    .line 807
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 810
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    if-eqz v0, :cond_9

    .line 811
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->cleanup()V

    .line 814
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v0, :cond_a

    .line 815
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->cleanup()V

    .line 818
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    if-eqz v0, :cond_b

    .line 819
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/JniCallbacks;->cleanup()V

    .line 822
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPhonePolicy:Lcom/android/bluetooth/btservice/PhonePolicy;

    if-eqz v0, :cond_c

    .line 823
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->cleanup()V

    .line 826
    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSilenceDeviceManager:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    if-eqz v0, :cond_d

    .line 827
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->cleanup()V

    .line 830
    :cond_d
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mActiveDeviceManager:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    if-eqz v0, :cond_e

    .line 831
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->cleanup()V

    .line 834
    :cond_e
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mProfileServicesState:Ljava/util/HashMap;

    if-eqz v0, :cond_f

    .line 835
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 838
    :cond_f
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothSocketManagerBinder:Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;

    if-eqz v0, :cond_10

    .line 839
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;->cleanUp()V

    .line 840
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothSocketManagerBinder:Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;

    .line 843
    :cond_10
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    if-eqz v0, :cond_11

    .line 844
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;->cleanup()V

    .line 845
    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    .line 848
    :cond_11
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_12

    .line 849
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 852
    :cond_12
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mInteropDatabase:Lcom/android/bluetooth/interop/InteropDatabase;

    if-eqz v0, :cond_13

    .line 853
    invoke-virtual {v0}, Lcom/android/bluetooth/interop/InteropDatabase;->cleanupNative()V

    .line 855
    :cond_13
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    if-eqz v0, :cond_14

    .line 856
    const-string v0, "cleanup() - Cleaning up adapter native"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 857
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandlerForCleanUpTimeout:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 858
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandlerForCleanUpTimeout:Landroid/os/Handler;

    const-wide/16 v3, 0xfa0

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 859
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanupNative()V

    .line 860
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandlerForCleanUpTimeout:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    .line 864
    :cond_14
    return-void

    .line 787
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method native cleanupNative()V
.end method

.method clearDiscoveringPackages()V
    .locals 2

    .line 2302
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDiscoveringPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2303
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDiscoveringPackages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2304
    monitor-exit v0

    .line 2305
    return-void

    .line 2304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public connectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7

    .line 2518
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->profileServicesRunning()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BluetoothAdapterService"

    if-nez v0, :cond_0

    .line 2519
    const-string p1, "connectAllEnabledProfiles: Not all profile services running"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2520
    return v1

    .line 2524
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isAnyProfileEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2525
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->connectEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1

    .line 2528
    :cond_1
    nop

    .line 2529
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 2530
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 2532
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    const/16 v5, 0x64

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    invoke-direct {p0, v3, v0, v6, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2534
    const-string v1, "connectAllEnabledProfiles: Connecting Headset Profile"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v1, p1, v5}, Lcom/android/bluetooth/hfp/HeadsetService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 2536
    move v1, v6

    .line 2538
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v4, :cond_3

    const/16 v4, 0x10

    invoke-direct {p0, v3, v0, v4, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2540
    const-string v4, "connectAllEnabledProfiles: Connecting HFP"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2541
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v4, p1, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 2543
    add-int/lit8 v1, v1, 0x1

    .line 2545
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    invoke-direct {p0, v3, v0, v4, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2547
    const-string v4, "connectAllEnabledProfiles: Connecting A2dp"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v4, p1, v5}, Lcom/android/bluetooth/a2dp/A2dpService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 2550
    add-int/lit8 v1, v1, 0x1

    .line 2552
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    if-eqz v4, :cond_5

    const/16 v4, 0xb

    invoke-direct {p0, v3, v0, v4, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2554
    const-string v4, "connectAllEnabledProfiles: Connecting A2dp Sink"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v4, p1, v5}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 2557
    add-int/lit8 v1, v1, 0x1

    .line 2559
    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

    if-eqz v4, :cond_6

    const/16 v4, 0x12

    invoke-direct {p0, v3, v0, v4, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2561
    const-string v4, "connectAllEnabledProfiles: Connecting MAP"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2562
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

    invoke-virtual {v4, p1, v5}, Lcom/android/bluetooth/mapclient/MapClientService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 2564
    add-int/lit8 v1, v1, 0x1

    .line 2566
    :cond_6
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    if-eqz v4, :cond_7

    const/4 v4, 0x4

    invoke-direct {p0, v3, v0, v4, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2568
    const-string v4, "connectAllEnabledProfiles: Connecting Hid Host Profile"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2569
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    invoke-virtual {v4, p1, v5}, Lcom/android/bluetooth/hid/HidHostService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 2570
    add-int/lit8 v1, v1, 0x1

    .line 2572
    :cond_7
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPanService:Lcom/android/bluetooth/pan/PanService;

    if-eqz v4, :cond_8

    const/4 v4, 0x5

    invoke-direct {p0, v3, v0, v4, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2574
    const-string v4, "connectAllEnabledProfiles: Connecting Pan Profile"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPanService:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v4, p1, v5}, Lcom/android/bluetooth/pan/PanService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 2576
    add-int/lit8 v1, v1, 0x1

    .line 2578
    :cond_8
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    if-eqz v4, :cond_9

    const/16 v4, 0x11

    invoke-direct {p0, v3, v0, v4, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 2580
    const-string v4, "connectAllEnabledProfiles: Connecting Pbap"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2581
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-virtual {v4, p1, v5}, Lcom/android/bluetooth/pbapclient/PbapClientService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 2583
    add-int/lit8 v1, v1, 0x1

    .line 2585
    :cond_9
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    if-eqz v4, :cond_a

    const/16 v4, 0x15

    invoke-direct {p0, v3, v0, v4, p1}, Lcom/android/bluetooth/btservice/AdapterService;->isSupported([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2587
    const-string v0, "connectAllEnabledProfiles: Connecting Hearing Aid Profile"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2588
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    invoke-virtual {v0, p1, v5}, Lcom/android/bluetooth/hearingaid/HearingAidService;->setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 2590
    add-int/lit8 v1, v1, 0x1

    .line 2593
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "connectAllEnabledProfiles: Number of Profiles Connected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2596
    return v6
.end method

.method native connectSocketNative([BI[BIII)I
.end method

.method createBond(Landroid/bluetooth/BluetoothDevice;ILandroid/bluetooth/OobData;)Z
    .locals 3

    .line 2357
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v0

    .line 2358
    const/4 v1, 0x0

    const/16 v2, 0xa

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 2359
    return v1

    .line 2363
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v2, 0xe

    if-eq v0, v2, :cond_3

    .line 2364
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 2369
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->setBondingInitiatedLocally([B)V

    .line 2373
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscoveryNative()Z

    .line 2375
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2376
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2377
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2379
    if-eqz p3, :cond_2

    .line 2380
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2381
    const-string p2, "oobdata"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2382
    invoke-virtual {v0, p1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2384
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2385
    return v1

    .line 2366
    :cond_3
    :goto_0
    return v1
.end method

.method native createBondNative([BI)Z
.end method

.method native createBondOutOfBandNative([BILandroid/bluetooth/OobData;)Z
.end method

.method native createSocketChannelNative(ILjava/lang/String;[BIII)I
.end method

.method public deviceUuidUpdated(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 2412
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/BondStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2413
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2414
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBondStateMachine:Lcom/android/bluetooth/btservice/BondStateMachine;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/BondStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2415
    return-void
.end method

.method disable()Z
    .locals 2

    .line 2279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disable() called with mRunningProfiles.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRunningProfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 2280
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    .line 2281
    const/4 v0, 0x1

    return v0
.end method

.method native disableNative()Z
.end method

.method public disconnectAllEnabledProfiles(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 2606
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->profileServicesRunning()Z

    move-result v0

    const-string v1, "BluetoothAdapterService"

    if-nez v0, :cond_0

    .line 2607
    const-string p1, "disconnectAllEnabledProfiles: Not all profile services bound"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    const/4 p1, 0x0

    return p1

    .line 2611
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2613
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting Headset Profile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2615
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2617
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 2619
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting HFP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2624
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->isDelayA2dpConnDevice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2625
    const-string v0, "isDelayA2dpConnDevice sleep 400ms"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    const-wide/16 v3, 0x190

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 2630
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 2632
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting A2dp"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2635
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 2637
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting A2dp Sink"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpSinkService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2640
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 2642
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting MAP Client"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2645
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 2647
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting MAP"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 2650
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 2652
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting Hid Device Profile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2653
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidDeviceService:Lcom/android/bluetooth/hid/HidDeviceService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2655
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_9

    .line 2657
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting Hid Host Profile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHidHostService:Lcom/android/bluetooth/hid/HidHostService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2660
    :cond_9
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPanService:Lcom/android/bluetooth/pan/PanService;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 2662
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting Pan Profile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2663
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPanService:Lcom/android/bluetooth/pan/PanService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pan/PanService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2665
    :cond_a
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    if-eqz v0, :cond_b

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 2667
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting Pbap Client"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2668
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2670
    :cond_b
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_c

    .line 2672
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting Pbap Server"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2673
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPbapService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 2675
    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    if-eqz v0, :cond_d

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 2677
    const-string v0, "disconnectAllEnabledProfiles: Disconnecting Hearing Aid Profile"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2678
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2681
    :cond_d
    const/4 p1, 0x1

    return p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 3048
    array-length v0, p3

    if-nez v0, :cond_0

    .line 3049
    const-string p1, "Skipping dump in APP SERVICES, see bluetooth_manager section."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3050
    const-string p1, "Use --print argument for dumpsys direct from AdapterService."

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3051
    return-void

    .line 3054
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpsys arguments, check for protobuf output: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-static {v1, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->verboseLog(Ljava/lang/String;)V

    .line 3055
    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--proto-bin"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3056
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->dumpMetrics(Ljava/io/FileDescriptor;)V

    .line 3057
    return-void

    .line 3060
    :cond_1
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3061
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSnoopLogSettingAtEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSnoopLogSettingAtEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDefaultSnoopLogSettingAtEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDefaultSnoopLogSettingAtEnable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3066
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/btservice/AdapterState;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3068
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3069
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRegisteredProfiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/btservice/ProfileService;

    .line 3070
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 3071
    goto :goto_0

    .line 3072
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSilenceDeviceManager:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 3073
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDatabaseManager:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->dump(Ljava/io/PrintWriter;)V

    .line 3075
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 3076
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 3078
    invoke-direct {p0, p1, p3}, Lcom/android/bluetooth/btservice/AdapterService;->dumpNative(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 3079
    return-void
.end method

.method public declared-synchronized enable(Z)Z
    .locals 3

    monitor-enter p0

    .line 2267
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_bluetooth"

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2268
    const-string p1, "enable() called when Bluetooth was disallowed"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2269
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 2272
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enable() - Enable called with quiet mode status =  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 2273
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    .line 2274
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2275
    const/4 p1, 0x1

    monitor-exit p0

    return p1

    .line 2266
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method native enableNative()Z
.end method

.method native factoryResetNative()Z
.end method

.method native getAdapterPropertiesNative()Z
.end method

.method native getAdapterPropertyNative(I)Z
.end method

.method public getBondState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 2428
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object p1

    .line 2429
    if-nez p1, :cond_0

    .line 2430
    const/16 p1, 0xa

    return p1

    .line 2432
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getBondState()I

    move-result p1

    return p1
.end method

.method public getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 2343
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0
.end method

.method getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 2436
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->addressToBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getConnectionStateNative([B)I

    move-result p1

    return p1
.end method

.method native getConnectionStateNative([B)I
.end method

.method public getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;
    .locals 1

    .line 2353
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDatabaseManager:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    return-object v0
.end method

.method getDeviceAccessFromPrefs(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)I
    .locals 2

    .line 2725
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    .line 2726
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2727
    return v0

    .line 2729
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2730
    const/4 p1, 0x1

    goto :goto_0

    .line 2731
    :cond_1
    const/4 p1, 0x2

    .line 2729
    :goto_0
    return p1
.end method

.method native getDevicePropertyNative([BI)Z
.end method

.method getDiscoveringPackages()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/btservice/DiscoveringPackage;",
            ">;"
        }
    .end annotation

    .line 2298
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDiscoveringPackages:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLeMaximumAdvertisingDataLength()I
    .locals 1

    .line 2792
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getLeMaximumAdvertisingDataLength()I

    move-result v0

    return v0
.end method

.method public getMaxConnectedAudioDevices()I
    .locals 1

    .line 2801
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getMaxConnectedAudioDevices()I

    move-result v0

    return v0
.end method

.method public getMetricId(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 3164
    if-nez p1, :cond_0

    .line 3165
    const/4 p1, 0x0

    return p1

    .line 3167
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricIdNative([B)I

    move-result p1

    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2285
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumOfOffloadedIrkSupported()I
    .locals 1

    .line 2763
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 2764
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getNumOfOffloadedIrkSupported()I

    move-result v0

    return v0
.end method

.method public getNumOfOffloadedScanFilterSupported()I
    .locals 1

    .line 2768
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getNumOfOffloadedScanFilterSupported()I

    move-result v0

    return v0
.end method

.method public getOffloadedScanResultStorage()I
    .locals 1

    .line 2772
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getOffloadedScanResultStorage()I

    move-result v0

    return v0
.end method

.method native getRemoteMasInstancesNative([B)Z
.end method

.method public getRemoteName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    .line 2691
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2692
    return-object v1

    .line 2694
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object p1

    .line 2695
    if-nez p1, :cond_1

    .line 2696
    return-object v1

    .line 2698
    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method native getRemoteServicesNative([B)Z
.end method

.method public getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;
    .locals 1

    .line 2709
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object p1

    .line 2710
    if-nez p1, :cond_0

    .line 2711
    const/4 p1, 0x0

    return-object p1

    .line 2713
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    return-object p1
.end method

.method public getState()I
    .locals 1

    .line 2259
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    if-eqz v0, :cond_0

    .line 2260
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v0

    return v0

    .line 2262
    :cond_0
    const/16 v0, 0xa

    return v0
.end method

.method public getTotalNumOfTrackableAdvertisements()I
    .locals 1

    .line 2861
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 2862
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getTotalNumOfTrackableAdvertisements()I

    move-result v0

    return v0
.end method

.method native initNative(ZZIZ)Z
.end method

.method public isA2dpOffloadEnabled()Z
    .locals 1

    .line 2810
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isA2dpOffloadEnabled()Z

    move-result v0

    return v0
.end method

.method isDelayA2dpConnDevice(Ljava/lang/String;)Z
    .locals 4

    .line 3272
    sget-object v0, Lcom/android/bluetooth/btservice/AdapterService;->mDelayA2dpConnDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3273
    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3274
    const/4 p1, 0x1

    return p1

    .line 3276
    :cond_0
    goto :goto_0

    .line 3277
    :cond_1
    return v2
.end method

.method public isLe2MPhySupported()Z
    .locals 1

    .line 2776
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isLe2MPhySupported()Z

    move-result v0

    return v0
.end method

.method public isLeCodedPhySupported()Z
    .locals 1

    .line 2780
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isLeCodedPhySupported()Z

    move-result v0

    return v0
.end method

.method public isLeExtendedAdvertisingSupported()Z
    .locals 1

    .line 2784
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isLeExtendedAdvertisingSupported()Z

    move-result v0

    return v0
.end method

.method public isLePeriodicAdvertisingSupported()Z
    .locals 1

    .line 2788
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isLePeriodicAdvertisingSupported()Z

    move-result v0

    return v0
.end method

.method public isMock()Z
    .locals 1

    .line 3267
    const/4 v0, 0x0

    return v0
.end method

.method public isQuietModeEnabled()Z
    .locals 2

    .line 2389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isQuetModeEnabled() - Enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 2390
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mQuietmode:Z

    return v0
.end method

.method public isRpaOffloadSupported()Z
    .locals 1

    .line 2758
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->enforceBluetoothPermission(Landroid/content/Context;)V

    .line 2759
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->isRpaOffloadSupported()Z

    move-result v0

    return v0
.end method

.method logUserBondResponse(Landroid/bluetooth/BluetoothDevice;ZI)V
    .locals 8

    .line 2717
    nop

    .line 2718
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v4

    .line 2721
    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    move v7, p1

    .line 2717
    const/16 v0, 0xa5

    const-wide/16 v2, 0x0

    const/16 v5, 0xb

    move v6, p3

    invoke-static/range {v0 .. v7}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BJIIII)V

    .line 2722
    return-void
.end method

.method public metadataChanged(Ljava/lang/String;I[B)V
    .locals 3

    .line 3017
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 3018
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMetadataListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3019
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mMetadataListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3020
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/IBluetoothMetadataListener;

    .line 3022
    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Landroid/bluetooth/IBluetoothMetadataListener;->onMetadataChanged(Landroid/bluetooth/BluetoothDevice;I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3025
    goto :goto_1

    .line 3023
    :catch_0
    move-exception v1

    .line 3024
    const-string v1, "BluetoothAdapterService"

    const-string v2, "RemoteException when onMetadataChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3026
    :goto_1
    goto :goto_0

    .line 3028
    :cond_0
    return-void
.end method

.method public obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 0

    .line 3151
    if-nez p1, :cond_0

    .line 3152
    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1

    .line 3154
    :cond_0
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddressNative([B)[B

    move-result-object p1

    return-object p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 564
    const-string p1, "onBind()"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 565
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 455
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 456
    const-string v0, "onCreate()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 457
    new-instance v0, Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 458
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/RemoteDevices;->init()V

    .line 459
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->clearDiscoveringPackages()V

    .line 460
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBinder:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceBinder;

    .line 461
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterProperties;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    .line 462
    invoke-static {p0}, Lcom/android/bluetooth/btservice/AdapterState;->make(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/btservice/AdapterState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    .line 463
    new-instance v0, Lcom/android/bluetooth/btservice/JniCallbacks;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/JniCallbacks;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/AdapterProperties;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mJniCallbacks:Lcom/android/bluetooth/btservice/JniCallbacks;

    .line 464
    new-instance v0, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isNiapMode()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;-><init>(Z)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    .line 465
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->start()V

    .line 466
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->getCompareResult()I

    move-result v0

    .line 469
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.leanback_only"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 471
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isGuest()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isNiapMode()Z

    move-result v3

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->initNative(ZZIZ)Z

    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mNativeAvailable:Z

    .line 473
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 474
    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAppOps:Landroid/app/AppOpsManager;

    .line 476
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    .line 477
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    .line 478
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterPropertyNative(I)Z

    .line 479
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 480
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPowerManager:Landroid/os/PowerManager;

    .line 481
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mUserManager:Landroid/os/UserManager;

    .line 482
    nop

    .line 483
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 482
    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 485
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothKeystoreService:Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/bluetoothkeystore/BluetoothKeystoreService;->initJni()V

    .line 487
    invoke-static {p0}, Lcom/android/bluetooth/sdp/SdpManager;->init(Lcom/android/bluetooth/btservice/AdapterService;)Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSdpManager:Lcom/android/bluetooth/sdp/SdpManager;

    .line 488
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAlarmBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.bluetooth.btservice.action.ALARM_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 492
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const-string v1, "BluetoothAdapterService"

    if-eqz v0, :cond_0

    .line 493
    const-string v0, "Phone policy enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v0, Lcom/android/bluetooth/btservice/PhonePolicy;

    new-instance v2, Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-direct {v2}, Lcom/android/bluetooth/btservice/ServiceFactory;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/btservice/PhonePolicy;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/ServiceFactory;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mPhonePolicy:Lcom/android/bluetooth/btservice/PhonePolicy;

    .line 495
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->start()V

    goto :goto_0

    .line 497
    :cond_0
    const-string v0, "Phone policy disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    :goto_0
    new-instance v0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    new-instance v2, Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-direct {v2}, Lcom/android/bluetooth/btservice/ServiceFactory;-><init>()V

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/ServiceFactory;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mActiveDeviceManager:Lcom/android/bluetooth/btservice/ActiveDeviceManager;

    .line 501
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->start()V

    .line 503
    new-instance v0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDatabaseManager:Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    .line 504
    invoke-static {p0}, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->createDatabase(Landroid/content/Context;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->start(Lcom/android/bluetooth/btservice/storage/MetadataDatabase;)V

    .line 506
    new-instance v0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    new-instance v2, Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-direct {v2}, Lcom/android/bluetooth/btservice/ServiceFactory;-><init>()V

    .line 507
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/ServiceFactory;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSilenceDeviceManager:Lcom/android/bluetooth/btservice/SilenceDeviceManager;

    .line 508
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->start()V

    .line 510
    new-instance v0, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mBluetoothSocketManagerBinder:Lcom/android/bluetooth/btservice/BluetoothSocketManagerBinder;

    .line 512
    invoke-static {p0}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterService(Lcom/android/bluetooth/btservice/AdapterService;)V

    .line 514
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->invalidateBluetoothCaches()V

    .line 519
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterService$1;-><init>(Lcom/android/bluetooth/btservice/AdapterService;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 529
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/btservice/AdapterService$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 530
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "CLEANUP_NATIVE_TIMEOUT_THREAD"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 531
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 532
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterService$2;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/bluetooth/btservice/AdapterService$2;-><init>(Lcom/android/bluetooth/btservice/AdapterService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandlerForCleanUpTimeout:Landroid/os/Handler;

    .line 547
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.android.systemui"

    const/high16 v3, 0x100000

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 550
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->setSystemUiUid(I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    goto :goto_1

    .line 551
    :catch_0
    move-exception v0

    .line 553
    const-string v2, "Unable to resolve SystemUI\'s UID."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    :goto_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/bluetooth/btservice/AdapterService;->sUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 558
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 559
    invoke-static {v0}, Lcom/android/bluetooth/Utils;->setForegroundUserId(I)V

    .line 560
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 577
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 579
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->isMock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    const-string v0, "BluetoothAdapterService"

    const-string v1, "Force exit to cleanup internal state in Bluetooth stack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 584
    :cond_0
    return-void
.end method

.method public onProfileServiceStateChanged(Lcom/android/bluetooth/btservice/ProfileService;I)V
    .locals 2

    .line 292
    const/16 v0, 0xc

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 295
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 296
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 298
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 570
    const-string v0, "onUnbind() - calling cleanup"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 571
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cleanup()V

    .line 572
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method native removeBondNative([B)Z
.end method

.method public removeProfile(Lcom/android/bluetooth/btservice/ProfileService;)V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHandler:Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService$AdapterServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 283
    return-void
.end method

.method native requestMaximumTxDataLengthNative([B)V
.end method

.method native sdpSearchNative([B[B)Z
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    .line 2451
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2455
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "BluetoothAdapterService"

    const/16 v3, 0xd

    if-eq v0, v3, :cond_d

    .line 2456
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_0

    goto/16 :goto_1

    .line 2462
    :cond_0
    nop

    .line 2463
    nop

    .line 2466
    const/4 v0, 0x1

    if-eqz p2, :cond_3

    if-eq p2, v0, :cond_2

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    .line 2478
    return v1

    .line 2474
    :cond_1
    nop

    .line 2475
    nop

    .line 2476
    move p2, v0

    move v1, p2

    goto :goto_0

    .line 2471
    :cond_2
    nop

    .line 2472
    move p2, v0

    goto :goto_0

    .line 2468
    :cond_3
    nop

    .line 2469
    move p2, v1

    move v1, v0

    .line 2481
    :goto_0
    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    if-eqz v1, :cond_6

    if-eqz p1, :cond_4

    .line 2482
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 2484
    :cond_4
    sget-boolean v1, Lcom/android/bluetooth/btservice/AdapterService;->VERBOSE:Z

    if-eqz v1, :cond_5

    .line 2485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveDevice: Setting active A2dp device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2490
    :cond_6
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_7

    .line 2491
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-eqz v1, :cond_9

    .line 2493
    :cond_7
    sget-boolean v1, Lcom/android/bluetooth/btservice/AdapterService;->VERBOSE:Z

    if-eqz v1, :cond_8

    .line 2494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveDevice: Setting active Hearing Aid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    :cond_8
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2499
    :cond_9
    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    if-eqz p2, :cond_c

    if-eqz p1, :cond_a

    .line 2500
    invoke-virtual {p2, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-eqz p2, :cond_c

    .line 2502
    :cond_a
    sget-boolean p2, Lcom/android/bluetooth/btservice/AdapterService;->VERBOSE:Z

    if-eqz p2, :cond_b

    .line 2503
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveDevice: Setting active Headset "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    :cond_b
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 2508
    :cond_c
    return v0

    .line 2457
    :cond_d
    :goto_1
    const-string p1, "setActiveDevice: bluetooth turning off now,return"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    return v1
.end method

.method native setAdapterPropertyNative(I)Z
.end method

.method native setAdapterPropertyNative(I[B)Z
.end method

.method setBluetoothClassFromConfig()V
    .locals 3

    .line 652
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->retrieveBluetoothClassConfig()I

    move-result v0

    .line 653
    if-eqz v0, :cond_0

    .line 654
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    new-instance v2, Landroid/bluetooth/BluetoothClass;

    invoke-direct {v2, v0}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->setBluetoothClass(Landroid/bluetooth/BluetoothClass;)Z

    .line 656
    :cond_0
    return-void
.end method

.method setDeviceAccessFromPrefs(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .locals 2

    .line 2735
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p3

    .line 2736
    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 2737
    if-nez p2, :cond_0

    .line 2738
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 2740
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2742
    :goto_0
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2743
    return-void
.end method

.method native setDevicePropertyNative([BI[B)Z
.end method

.method setMessageAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 2750
    const-string v0, "message_access_permission"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->setDeviceAccessFromPrefs(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    .line 2751
    return-void
.end method

.method setPhonebookAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 2746
    const-string v0, "phonebook_access_permission"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->setDeviceAccessFromPrefs(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    .line 2747
    return-void
.end method

.method setSimAccessPermission(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 2754
    const-string v0, "sim_access_permission"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->setDeviceAccessFromPrefs(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    .line 2755
    return-void
.end method

.method startDiscovery(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 2308
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 2309
    const-string v1, "startDiscovery"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 2310
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2311
    invoke-static {p0, p1}, Lcom/android/bluetooth/Utils;->isQApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2312
    nop

    .line 2313
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->checkCallerHasNetworkSettingsPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2314
    const-string p2, "android.permission.NETWORK_SETTINGS"

    goto :goto_0

    .line 2315
    :cond_0
    invoke-static {p0}, Lcom/android/bluetooth/Utils;->checkCallerHasNetworkSetupWizardPermission(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2316
    const-string p2, "android.permission.NETWORK_SETUP_WIZARD"

    goto :goto_0

    .line 2317
    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 2318
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {p0, v1, p1, p2, v0}, Lcom/android/bluetooth/Utils;->checkCallerHasFineLocation(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 2320
    return v2

    .line 2322
    :cond_2
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    goto :goto_0

    .line 2324
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-static {p0, v1, p1, p2, v0}, Lcom/android/bluetooth/Utils;->checkCallerHasCoarseLocation(Landroid/content/Context;Landroid/app/AppOpsManager;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 2326
    return v2

    .line 2328
    :cond_4
    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 2331
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDiscoveringPackages:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2332
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDiscoveringPackages:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/bluetooth/btservice/DiscoveringPackage;

    invoke-direct {v2, p1, p2}, Lcom/android/bluetooth/btservice/DiscoveringPackage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2333
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2334
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->startDiscoveryNative()Z

    move-result p1

    return p1

    .line 2333
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method startProfileServices()V
    .locals 3

    .line 664
    const-string v0, "startCoreServices()"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 665
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v0

    .line 666
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-class v1, Lcom/android/bluetooth/gatt/GattService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    .line 667
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBluetoothReady()V

    .line 669
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->updateUuids()V

    .line 670
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->setBluetoothClassFromConfig()V

    .line 671
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    goto :goto_0

    .line 673
    :cond_0
    const/16 v1, 0xc

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setAllProfileServiceStates([Ljava/lang/Class;I)V

    .line 675
    :goto_0
    return-void
.end method

.method stateChangeCallback(I)V
    .locals 2

    .line 638
    if-nez p1, :cond_0

    .line 639
    const-string p1, "stateChangeCallback: disableNative() completed"

    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 640
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    goto :goto_0

    .line 641
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 642
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    goto :goto_0

    .line 644
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in stateChangeCallback"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothAdapterService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :goto_0
    return-void
.end method

.method stopProfileServices()V
    .locals 4

    .line 679
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->cancelDiscoveryNative()Z

    .line 680
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    .line 682
    invoke-static {}, Lcom/android/bluetooth/btservice/Config;->getSupportedProfiles()[Ljava/lang/Class;

    move-result-object v0

    .line 683
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRunningProfiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    const-class v2, Lcom/android/bluetooth/gatt/GattService;

    .line 684
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRunningProfiles:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/btservice/ProfileService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/ProfileService;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 685
    const-string v0, "stopProfileServices() - No profiles services to stop or already stopped."

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    goto :goto_0

    .line 688
    :cond_0
    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->setAllProfileServiceStates([Ljava/lang/Class;I)V

    .line 690
    :goto_0
    return-void
.end method

.method updateAdapterState(II)V
    .locals 5

    .line 706
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->setState(I)V

    .line 707
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/AdapterService;->invalidateBluetoothGetStateCache()V

    .line 708
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdapterState() - Broadcasting state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " receivers."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 712
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 714
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/IBluetoothCallback;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetoothCallback;->onBluetoothStateChange(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    goto :goto_1

    .line 715
    :catch_0
    move-exception v2

    .line 716
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAdapterState() - Callback #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " failed ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 712
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 722
    :cond_1
    const/16 v0, 0xf

    if-ne p2, v0, :cond_2

    const/16 v1, 0xd

    if-ne p1, v1, :cond_2

    .line 725
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterProperties:Lcom/android/bluetooth/btservice/AdapterProperties;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBluetoothDisableDone()V

    .line 728
    :cond_2
    const/16 v1, 0xc

    if-ne p2, v1, :cond_3

    .line 729
    const-string v1, "Bluetooth ON,call initNative"

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 730
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mInteropDatabase:Lcom/android/bluetooth/interop/InteropDatabase;

    invoke-virtual {v1}, Lcom/android/bluetooth/interop/InteropDatabase;->initializeNative()V

    .line 731
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mFwMonitor:Lcom/android/bluetooth/fwmonitor/FwMonitorService;

    invoke-virtual {v1}, Lcom/android/bluetooth/fwmonitor/FwMonitorService;->initNative()V

    .line 735
    :cond_3
    const/16 v1, 0xe

    const-string v2, "bluetooth_btsnoop_default_mode"

    const-string v3, "empty"

    const-string v4, "persist.bluetooth.btsnooplogmode"

    if-ne p2, v1, :cond_4

    .line 736
    nop

    .line 737
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSnoopLogSettingAtEnable:Ljava/lang/String;

    .line 738
    nop

    .line 739
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDefaultSnoopLogSettingAtEnable:Ljava/lang/String;

    .line 741
    const-string p2, "persist.bluetooth.btsnoopdefaultmode"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 743
    :cond_4
    if-ne p2, v0, :cond_6

    const/16 p2, 0xa

    if-eq p1, p2, :cond_6

    .line 745
    nop

    .line 746
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 747
    nop

    .line 748
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 751
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterService;->mSnoopLogSettingAtEnable:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mDefaultSnoopLogSettingAtEnable:Ljava/lang/String;

    .line 752
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 754
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService;->mAdapterStateMachine:Lcom/android/bluetooth/btservice/AdapterState;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/AdapterState;->sendMessage(I)V

    .line 757
    :cond_6
    :goto_2
    return-void
.end method

.method public updateUuids()V
    .locals 5

    .line 2394
    const-string v0, "updateUuids() - Updating UUIDs for bonded devices"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/AdapterService;->debugLog(Ljava/lang/String;)V

    .line 2395
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 2396
    if-nez v0, :cond_0

    .line 2397
    return-void

    .line 2400
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2401
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterService;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v4, v3}, Lcom/android/bluetooth/btservice/RemoteDevices;->updateUuids(Landroid/bluetooth/BluetoothDevice;)V

    .line 2400
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2403
    :cond_1
    return-void
.end method
