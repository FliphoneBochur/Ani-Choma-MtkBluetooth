.class public Lcom/android/bluetooth/map/BluetoothMapService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "BluetoothMapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;,
        Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;,
        Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;
    }
.end annotation


# static fields
.field static final ACTION_SHOW_MAPS_SETTINGS:Ljava/lang/String; = "android.btmap.intent.action.SHOW_MAPS_SETTINGS"

.field private static final BLUETOOTH_ADMIN_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH_ADMIN"

.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field public static final DEBUG:Z

.field private static final DISCONNECT_MAP:I = 0x3

.field private static final MAP_UUIDS:[Landroid/os/ParcelUuid;

.field private static final MAS_ID_SMS_MMS:I = 0x0

.field static final MSG_ACQUIRE_WAKE_LOCK:I = 0x138d

.field static final MSG_MAS_CONNECT:I = 0x138b

.field static final MSG_MAS_CONNECT_CANCEL:I = 0x138c

.field static final MSG_MNS_SDP_SEARCH:I = 0x138f

.field static final MSG_OBSERVER_REGISTRATION:I = 0x1390

.field static final MSG_RELEASE_WAKE_LOCK:I = 0x138e

.field static final MSG_SERVERSESSION_CLOSE:I = 0x1388

.field static final MSG_SESSION_DISCONNECTED:I = 0x138a

.field static final MSG_SESSION_ESTABLISHED:I = 0x1389

.field private static final RELEASE_WAKE_LOCK_DELAY:I = 0x2710

.field private static final SHUTDOWN:I = 0x4

.field private static final START_LISTENER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothMapService"

.field private static final UPDATE_MAS_INSTANCES:I = 0x5

.field static final UPDATE_MAS_INSTANCES_ACCOUNT_ADDED:I = 0x0

.field static final UPDATE_MAS_INSTANCES_ACCOUNT_DISCONNECT:I = 0x3

.field static final UPDATE_MAS_INSTANCES_ACCOUNT_REMOVED:I = 0x1

.field static final UPDATE_MAS_INSTANCES_ACCOUNT_RENAMED:I = 0x2

.field public static final USER_CONFIRM_TIMEOUT_ACTION:Ljava/lang/String; = "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

.field private static final USER_CONFIRM_TIMEOUT_VALUE:I = 0x61a8

.field private static final USER_TIMEOUT:I = 0x2

.field public static final VERBOSE:Z

.field private static sBluetoothMapService:Lcom/android/bluetooth/map/BluetoothMapService;

.field private static sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private mAccountChanged:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

.field private mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

.field private mEnabledAccounts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            ">;"
        }
    .end annotation
.end field

.field private mIsWaitingAuthorization:Z

.field private mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

.field private mMasInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/bluetooth/map/BluetoothMapAccountItem;",
            "Lcom/android/bluetooth/map/BluetoothMapMasInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mMasInstances:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/bluetooth/map/BluetoothMapMasInstance;",
            ">;"
        }
    .end annotation
.end field

.field private mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

.field private mPermission:I

.field private mRegisteredMapReceiver:Z

.field private mRemoveTimeoutMsg:Z

.field private mSdpSearchInitiated:Z

.field private mServiceStarted:Z

.field private mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

.field private mSmsCapable:Z

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    const-string v0, "ro.build.type"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    .line 74
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    .line 129
    const/4 v0, 0x0

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 132
    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 152
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    aput-object v3, v0, v1

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 156
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 119
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 122
    new-instance v1, Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    .line 125
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    .line 131
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    .line 135
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    .line 136
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 138
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    .line 140
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    .line 141
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 142
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    .line 143
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    .line 144
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    .line 146
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServiceStarted:Z

    .line 150
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSmsCapable:Z

    .line 1040
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-direct {v2, p0, v0}, Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Lcom/android/bluetooth/map/BluetoothMapService$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    .line 157
    iput v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstancesHandler()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->startSocketListeners(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/util/SparseArray;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectTimeoutMessage()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/bluetooth/map/BluetoothMapService;I)I
    .locals 0

    .line 62
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectCancelMessage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/bluetooth/SdpMnsRecord;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/bluetooth/SdpMnsRecord;)Landroid/bluetooth/SdpMnsRecord;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->onConnectHandler(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMnsObexClient;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectMessage(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSmsCapable:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lcom/android/bluetooth/map/BluetoothMapService;)Ljava/util/List;
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/map/BluetoothMapService;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSessions(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/map/BluetoothMapService;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/map/BluetoothMapService;Z)Z
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    return p1
.end method

.method static synthetic access$500()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 62
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->cancelUserTimeoutAlarm()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->closeService()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/map/BluetoothMapService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/bluetooth/map/BluetoothMapService;)Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    return-object p0
.end method

.method private cancelUserTimeoutAlarm()V
    .locals 3

    .line 944
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 945
    const-string v0, "BluetoothMapService"

    const-string v1, "cancelUserTimeOutAlarm()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 948
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 949
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 951
    const-string v2, "alarm"

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 952
    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 953
    iput-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    .line 954
    return-void
.end method

.method private declared-synchronized closeService()V
    .locals 5

    monitor-enter p0

    .line 161
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 162
    const-string v0, "BluetoothMapService"

    const-string v1, "closeService() in"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 166
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 169
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 170
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->shutdown()V

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 174
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 175
    iput v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 176
    invoke-direct {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 180
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_3

    .line 181
    const-string v0, "BluetoothMapService"

    const-string v2, "CloseService(): Release Wake Lock"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_3
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 186
    :cond_4
    sput-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 188
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_5

    .line 189
    monitor-exit p0

    return-void

    .line 193
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_6

    .line 196
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 197
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_6

    .line 198
    const-string v0, "BluetoothMapService"

    const-string v2, "Quit looper"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_6
    iput-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    .line 203
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_7

    .line 204
    const-string v0, "BluetoothMapService"

    const-string v1, "MAP Service closeService out"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :cond_7
    monitor-exit p0

    return-void

    .line 160
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private createMasInstances()V
    .locals 11

    .line 824
    nop

    .line 826
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSmsCapable:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 828
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V

    .line 830
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 831
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    move v2, v1

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 837
    new-instance v10, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    const/4 v8, 0x0

    move-object v3, v10

    move-object v4, p0

    move-object v5, p0

    move-object v6, v9

    move v7, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V

    .line 839
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v10}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 840
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    add-int/2addr v2, v1

    .line 842
    goto :goto_0

    .line 843
    :cond_1
    return-void
.end method

.method public static declared-synchronized getBluetoothMapService()Lcom/android/bluetooth/map/BluetoothMapService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/map/BluetoothMapService;

    monitor-enter v0

    .line 690
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->sBluetoothMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 691
    const-string v1, "BluetoothMapService"

    const-string v3, "getBluetoothMapService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    monitor-exit v0

    return-object v2

    .line 694
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->sBluetoothMapService:Lcom/android/bluetooth/map/BluetoothMapService;

    invoke-virtual {v1}, Lcom/android/bluetooth/map/BluetoothMapService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 695
    const-string v1, "BluetoothMapService"

    const-string v3, "getBluetoothMapService(): service is not available"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 696
    monitor-exit v0

    return-object v2

    .line 698
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->sBluetoothMapService:Lcom/android/bluetooth/map/BluetoothMapService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 689
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 551
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 552
    monitor-enter p0

    .line 553
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_0

    .line 554
    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_0
    monitor-exit p0

    .line 557
    return-object v0

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getNextMasId()I
    .locals 4

    .line 804
    nop

    .line 805
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 806
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 807
    if-le v3, v2, :cond_0

    .line 808
    move v2, v3

    .line 805
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 811
    :cond_1
    const/16 v0, 0xff

    const/4 v1, 0x1

    if-ge v2, v0, :cond_2

    .line 812
    add-int/2addr v2, v1

    return v2

    .line 815
    :cond_2
    nop

    :goto_1
    if-gt v1, v0, :cond_4

    .line 816
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 817
    return v1

    .line 815
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 820
    :cond_4
    return v0
.end method

.method public static getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 502
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method private onConnectHandler(I)V
    .locals 3

    .line 470
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 475
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    const-string v1, "BluetoothMapService"

    if-eqz v0, :cond_1

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPermission = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_1
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 480
    :try_start_0
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "incoming connection accepted from: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " automatically as trusted device"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 485
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z

    goto :goto_0

    .line 487
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->startObexServerSessions()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception p1

    .line 492
    const-string v0, "catch RemoteException starting obex server session"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 489
    :catch_1
    move-exception p1

    .line 490
    const-string v0, "catch IOException starting obex server session"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    :cond_4
    :goto_0
    return-void

    .line 471
    :cond_5
    :goto_1
    return-void
.end method

.method private sendConnectCancelMessage()V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v0, :cond_0

    .line 996
    const/16 v1, 0x138c

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 997
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 999
    :cond_0
    return-void
.end method

.method private sendConnectMessage(I)V
    .locals 3

    .line 975
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v0, :cond_0

    .line 976
    const/16 v1, 0x138b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 980
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 982
    :cond_0
    return-void
.end method

.method private sendConnectTimeoutMessage()V
    .locals 2

    .line 985
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 986
    const-string v0, "BluetoothMapService"

    const-string v1, "sendConnectTimeoutMessage()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v0, :cond_1

    .line 989
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 990
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 992
    :cond_1
    return-void
.end method

.method private sendShutdownMessage()V
    .locals 4

    .line 1003
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    if-eqz v0, :cond_0

    .line 1004
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1005
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1006
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 1007
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->cancelUserTimeoutAlarm()V

    .line 1009
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const-string v1, "BluetoothMapService"

    if-nez v0, :cond_1

    .line 1010
    const-string v0, "mSessionStatusHandler is null"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    return-void

    .line 1013
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1014
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1015
    const-string v0, "mSessionStatusHandler shutdown message already in Queue"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_2
    return-void

    .line 1021
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1023
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1024
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1028
    const-string v0, "mSessionStatusHandler shutdown message could not be sent"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1030
    :cond_4
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_5

    .line 1031
    const-string v0, "mSessionStatusHandler.sendMessage() dispatched shutdown message"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :cond_5
    :goto_0
    goto :goto_1

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    const-string v2, "mSessionStatusHandler already null, no need send shutdown msg"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    :goto_1
    return-void
.end method

.method private static declared-synchronized setBluetoothMapService(Lcom/android/bluetooth/map/BluetoothMapService;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/map/BluetoothMapService;

    monitor-enter v0

    .line 702
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 703
    const-string v1, "BluetoothMapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBluetoothMapService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    sput-object p0, Lcom/android/bluetooth/map/BluetoothMapService;->sBluetoothMapService:Lcom/android/bluetooth/map/BluetoothMapService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    monitor-exit v0

    return-void

    .line 701
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setState(I)V
    .locals 1

    .line 506
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(II)V

    .line 507
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 3

    monitor-enter p0

    .line 510
    :try_start_0
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    if-eq p1, v0, :cond_1

    .line 511
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 512
    const-string v0, "BluetoothMapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Map state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    iget p2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 515
    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    .line 516
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    const-string v0, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    const-string p2, "android.bluetooth.profile.extra.STATE"

    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string p2, "android.bluetooth.device.extra.DEVICE"

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 520
    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    :cond_1
    monitor-exit p0

    return-void

    .line 509
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setUserTimeoutAlarm()V
    .locals 7

    .line 930
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 931
    const-string v0, "BluetoothMapService"

    const-string v1, "SetUserTimeOutAlarm()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_1

    .line 934
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 936
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    .line 937
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 939
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 940
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x61a8

    add-long/2addr v3, v5

    .line 939
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 941
    return-void
.end method

.method private startObexServerSessions()V
    .locals 7

    .line 237
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    const-string v1, "BluetoothMapService"

    if-eqz v0, :cond_0

    .line 238
    const-string v0, "Map Service START ObexServerSessions()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 243
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 244
    nop

    .line 245
    const-string v4, "StartingObexMapTransaction"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 246
    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 247
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 248
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 249
    const-string v0, "startObexSessions(): Acquire Wake Lock"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    if-nez v0, :cond_2

    .line 254
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMnsRecord:Landroid/bluetooth/SdpMnsRecord;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    invoke-direct {v0, v4, v5, v6}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/SdpMnsRecord;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 258
    :cond_2
    nop

    .line 259
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v4, v2

    :goto_0
    if-ge v2, v0, :cond_4

    .line 261
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startObexServerSession(Lcom/android/bluetooth/map/BluetoothMnsObexClient;)Z

    move-result v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_3

    .line 262
    move v4, v3

    .line 272
    :cond_3
    :goto_1
    goto :goto_2

    .line 268
    :catch_0
    move-exception v5

    .line 269
    const-string v6, "RemoteException occured while starting an obexServerSession restarting the listener"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    goto :goto_2

    .line 264
    :catch_1
    move-exception v5

    .line 265
    const-string v6, "IOException occured while starting an obexServerSession restarting the listener"

    invoke-static {v1, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    goto :goto_1

    .line 259
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_4
    if-eqz v4, :cond_5

    .line 275
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    .line 278
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v2, 0x138e

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 279
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    .line 280
    invoke-virtual {v0, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x2710

    .line 279
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 283
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_6

    .line 284
    const-string v0, "startObexServerSessions() success!"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_6
    return-void
.end method

.method private startSocketListeners(I)V
    .locals 3

    .line 215
    const/4 v0, -0x1

    const-string v1, "BluetoothMapService"

    if-ne p1, v0, :cond_0

    .line 216
    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_0
    if-ge p1, v0, :cond_2

    .line 217
    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startSocketListeners()V

    .line 216
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 221
    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startSocketListeners()V

    goto :goto_1

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startSocketListeners(): Invalid MasId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_2
    :goto_1
    goto :goto_2

    .line 227
    :catch_0
    move-exception p1

    .line 228
    const-string v0, "startSocketListeners(): Security failed: "

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    :goto_2
    return-void
.end method

.method private stopObexServerSessions(I)V
    .locals 8

    .line 297
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    const-string v1, "BluetoothMapService"

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "MAP Service STOP ObexServerSessions()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_0
    nop

    .line 303
    const/4 v0, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_2

    .line 304
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_2

    .line 305
    iget-object v6, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 306
    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v7

    if-eq v7, p1, :cond_1

    invoke-virtual {v6}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->isStarted()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 307
    move v2, v3

    .line 304
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 313
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 314
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->shutdown()V

    .line 315
    iput-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    .line 318
    :cond_3
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 319
    if-eqz v4, :cond_4

    .line 320
    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    goto :goto_2

    .line 321
    :cond_4
    if-ne p1, v0, :cond_5

    .line 322
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    move v0, v3

    :goto_1
    if-ge v0, p1, :cond_5

    .line 323
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    invoke-virtual {v4}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->restartObexServerSession()V

    .line 322
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 327
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 328
    invoke-direct {p0, v3}, Lcom/android/bluetooth/map/BluetoothMapService;->setState(I)V

    .line 329
    iput v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 330
    sput-object v5, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 331
    iget-boolean p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    if-eqz p1, :cond_6

    .line 332
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->updateMasInstances(I)V

    .line 337
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    .line 338
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v0, 0x138d

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 339
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/16 v0, 0x138e

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->removeMessages(I)V

    .line 340
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 341
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz p1, :cond_7

    .line 342
    const-string p1, "stopObexServerSessions(): Release Wake Lock"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_7
    return-void
.end method

.method private updateMasInstancesHandler()V
    .locals 12

    .line 734
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    const-string v1, "BluetoothMapService"

    if-eqz v0, :cond_0

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateMasInstancesHandler() state = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 739
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    .line 740
    return-void

    .line 743
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->getEnabledAccountItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 744
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 746
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 747
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 748
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_2
    goto :goto_0

    .line 753
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 754
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 755
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 756
    sget-boolean v6, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v6, :cond_4

    .line 757
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Removing account: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " masInst = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_4
    if-eqz v5, :cond_5

    .line 760
    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->shutdown()V

    .line 761
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 763
    :cond_5
    goto :goto_1

    .line 767
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 768
    sget-boolean v4, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v4, :cond_7

    .line 769
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Adding account: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_7
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getNextMasId()I

    move-result v10

    .line 772
    new-instance v11, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    const/4 v9, 0x0

    move-object v4, v11

    move-object v5, p0

    move-object v6, p0

    move-object v7, v3

    move v8, v10

    invoke-direct/range {v4 .. v9}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapAccountItem;IZ)V

    .line 774
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v4, v10, v11}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 775
    iget-object v4, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    iget-object v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 778
    invoke-virtual {v11}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->startSocketListeners()V

    .line 780
    :cond_8
    goto :goto_2

    .line 782
    :cond_9
    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    .line 783
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 784
    const-string v0, "  Enabled accounts:"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "   "

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 786
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    goto :goto_3

    .line 788
    :cond_a
    const-string v0, "  Active MAS instances:"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    move v3, v2

    :goto_4
    if-ge v3, v0, :cond_b

    .line 790
    iget-object v5, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstances:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/bluetooth/map/BluetoothMapMasInstance;

    .line 791
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 794
    :cond_b
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    .line 795
    return-void
.end method


# virtual methods
.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    .line 531
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 530
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 532
    return-void
.end method

.method disconnectMap(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 535
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 536
    const-string v0, "BluetoothMapService"

    const-string v1, "disconnectMap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 539
    iget p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 542
    :cond_1
    const/4 p1, -0x1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->stopObexServerSessions(I)V

    .line 548
    :cond_2
    :goto_0
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1327
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 1328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRemoteDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sRemoteDeviceName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAppObserver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsWaitingAuthorization: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRemoveTimeoutMsg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRemoveTimeoutMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPermission: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAccountChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAccountChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBluetoothMnsObexClient: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mBluetoothMnsObexClient:Lcom/android/bluetooth/map/BluetoothMnsObexClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1337
    const-string v0, "mMasInstanceMap:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "  "

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMasInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1340
    goto :goto_0

    .line 1341
    :cond_0
    const-string v0, "mEnabledAccounts:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1342
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/map/BluetoothMapAccountItem;

    .line 1343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1344
    goto :goto_1

    .line 1345
    :cond_1
    return-void
.end method

.method getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 627
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 630
    const/16 v1, 0x9

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 629
    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 591
    monitor-enter p0

    .line 592
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/bluetooth/map/BluetoothMapService;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 593
    monitor-exit p0

    return v1

    .line 595
    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 597
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 561
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 562
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 563
    if-nez v1, :cond_0

    .line 564
    return-object v0

    .line 566
    :cond_0
    monitor-enter p0

    .line 567
    :try_start_0
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 568
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 569
    sget-object v4, Lcom/android/bluetooth/map/BluetoothMapService;->MAP_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v3, v4}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 570
    goto :goto_0

    .line 572
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 573
    array-length v4, p1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, p1, v5

    .line 574
    if-ne v3, v6, :cond_2

    .line 575
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 578
    :cond_3
    goto :goto_0

    .line 579
    :cond_4
    monitor-exit p0

    .line 580
    return-object v0

    .line 579
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 498
    iget v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mState:I

    return v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 635
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/map/BluetoothMapService$BluetoothMapBinder;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;)V

    return-object v0
.end method

.method public onConnect(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/map/BluetoothMapMasInstance;)Z
    .locals 3

    .line 874
    nop

    .line 875
    nop

    .line 878
    monitor-enter p0

    .line 879
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 880
    sput-object p1, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 881
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 883
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 884
    const p1, 0x7f0e0033

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->getString(I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    .line 887
    :cond_0
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    .line 888
    if-nez p1, :cond_1

    .line 889
    nop

    .line 890
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mIsWaitingAuthorization:Z

    .line 891
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->setUserTimeoutAlarm()V

    move p1, v1

    move v1, v2

    goto :goto_2

    .line 892
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 893
    move p1, v2

    goto :goto_2

    .line 894
    :cond_2
    if-ne p1, v2, :cond_5

    .line 895
    sget-object p1, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    sget-object v0, Lcom/android/bluetooth/map/BluetoothMnsObexClient;->BLUETOOTH_UUID_OBEX_MNS:Landroid/os/ParcelUuid;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    .line 896
    iput-boolean v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSdpSearchInitiated:Z

    goto :goto_1

    .line 898
    :cond_3
    sget-object v0, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 899
    const-string p2, "BluetoothMapService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected connection from a second Remote Device received. name: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    if-nez p1, :cond_4

    const-string p1, "unknown"

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 899
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    monitor-exit p0

    return v1

    .line 903
    :cond_5
    :goto_1
    move p1, v1

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 905
    if-eqz v1, :cond_7

    .line 907
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 908
    const p2, 0x7f0e0069

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/map/BluetoothMapService;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    const/4 p2, 0x3

    const-string v0, "android.bluetooth.device.extra.ACCESS_REQUEST_TYPE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 911
    sget-object p2, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 912
    const-string p2, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/map/BluetoothMapService;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 914
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz p1, :cond_6

    .line 915
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "waiting for authorization for connection from: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/android/bluetooth/map/BluetoothMapService;->sRemoteDeviceName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BluetoothMapService"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_6
    goto :goto_3

    :cond_7
    if-eqz p1, :cond_8

    .line 920
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectCancelMessage()V

    goto :goto_3

    .line 921
    :cond_8
    iget p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mPermission:I

    if-ne p1, v2, :cond_9

    .line 923
    invoke-virtual {p2}, Lcom/android/bluetooth/map/BluetoothMapMasInstance;->getMasId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->sendConnectMessage(I)V

    .line 924
    sget-object p1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->MAP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {p1}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 926
    :cond_9
    :goto_3
    return v2

    .line 903
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method sendStartListenerMessage(I)V
    .locals 3

    .line 961
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 966
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 967
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    if-eqz p1, :cond_1

    .line 968
    sget-boolean p1, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz p1, :cond_2

    .line 969
    const-string p1, "BluetoothMapService"

    const-string v0, "mSessionStatusHandler START_LISTENER message already in Queue"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 967
    :cond_1
    :goto_0
    nop

    .line 972
    :cond_2
    :goto_1
    return-void
.end method

.method setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 601
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/map/BluetoothMapService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saved connectionPolicy "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothMapService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/16 v1, 0x9

    .line 607
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 608
    if-nez p2, :cond_1

    .line 609
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/map/BluetoothMapService;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 611
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected start()Z
    .locals 5

    .line 640
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    const-string v1, "BluetoothMapService"

    if-eqz v0, :cond_0

    .line 641
    const-string v0, "start()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "BluetoothMapHandler"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 645
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 646
    new-instance v2, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;-><init>(Lcom/android/bluetooth/map/BluetoothMapService;Landroid/os/Looper;Lcom/android/bluetooth/map/BluetoothMapService$1;)V

    iput-object v2, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    .line 648
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 649
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 651
    const-string v2, "android.bluetooth.device.action.SDP_RECORD"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 652
    const-string v2, "android.btmap.intent.action.SHOW_MAPS_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    const-string v2, "com.android.bluetooth.map.USER_CONFIRM_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 656
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 657
    const-string v3, "com.android.bluetooth.BluetoothMapContentObserver.action.MESSAGE_SENT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    :try_start_0
    const-string v3, "message/*"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    goto :goto_0

    .line 660
    :catch_0
    move-exception v3

    .line 661
    const-string v4, "Wrong mime type!!!"

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 663
    :goto_0
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 664
    iget-object v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 665
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v0, v2}, Lcom/android/bluetooth/map/BluetoothMapService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 666
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    .line 668
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 669
    new-instance v0, Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-direct {v0, p0, p0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;-><init>(Landroid/content/Context;Lcom/android/bluetooth/map/BluetoothMapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    .line 671
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 672
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSmsCapable:Z

    .line 674
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->getEnabledAccountItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mEnabledAccounts:Ljava/util/ArrayList;

    .line 675
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->createMasInstances()V

    .line 677
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendStartListenerMessage(I)V

    .line 678
    invoke-static {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->setBluetoothMapService(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 679
    iput-boolean v3, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServiceStarted:Z

    .line 680
    return v3
.end method

.method protected stop()Z
    .locals 3

    .line 847
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    const-string v1, "BluetoothMapService"

    if-eqz v0, :cond_0

    .line 848
    const-string v0, "stop()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServiceStarted:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 851
    sget-boolean v0, Lcom/android/bluetooth/map/BluetoothMapService;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 852
    const-string v0, "mServiceStarted is false - Ignoring"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_1
    return v2

    .line 856
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/map/BluetoothMapService;->setBluetoothMapService(Lcom/android/bluetooth/map/BluetoothMapService;)V

    .line 857
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mServiceStarted:Z

    .line 858
    iget-boolean v1, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    if-eqz v1, :cond_3

    .line 859
    iput-boolean v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mRegisteredMapReceiver:Z

    .line 860
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mMapReceiver:Lcom/android/bluetooth/map/BluetoothMapService$MapBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/map/BluetoothMapService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 861
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mAppObserver:Lcom/android/bluetooth/map/BluetoothMapAppObserver;

    invoke-virtual {v0}, Lcom/android/bluetooth/map/BluetoothMapAppObserver;->shutdown()V

    .line 863
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/map/BluetoothMapService;->sendShutdownMessage()V

    .line 864
    return v2
.end method

.method updateMasInstances(I)V
    .locals 3

    .line 713
    iget-object v0, p0, Lcom/android/bluetooth/map/BluetoothMapService;->mSessionStatusHandler:Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/bluetooth/map/BluetoothMapService$MapServiceMessageHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 714
    return-void
.end method
