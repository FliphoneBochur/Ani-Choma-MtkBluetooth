.class Lcom/android/bluetooth/btservice/PhonePolicy;
.super Ljava/lang/Object;
.source "PhonePolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MESSAGE_ADAPTER_STATE_TURNED_ON:I = 0x4

.field private static final MESSAGE_CONNECT_OTHER_PROFILES:I = 0x3

.field private static final MESSAGE_DELAY_AUTO_CONNECT:I = 0x7

.field private static final MESSAGE_DEVICE_CONNECTED:I = 0x6

.field private static final MESSAGE_PROFILE_ACTIVE_DEVICE_CHANGED:I = 0x5

.field private static final MESSAGE_PROFILE_CONNECTION_STATE_CHANGED:I = 0x1

.field private static final MESSAGE_PROFILE_INIT_PRIORITIES:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothPhonePolicy"

.field private static final mDelayAutoConnect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sConnectOtherProfilesTimeoutMillis:I

.field static sDelayAutoConnectTimeoutMillis:I


# instance fields
.field private final mA2dpRetrySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private final mConnectOtherProfilesDeviceSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

.field private final mHandler:Landroid/os/Handler;

.field private final mHeadsetRetrySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOnlyHfpSupported:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 80
    nop

    .line 81
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/PhonePolicy;->DBG:Z

    .line 94
    const/16 v0, 0x1770

    sput v0, Lcom/android/bluetooth/btservice/PhonePolicy;->sConnectOtherProfilesTimeoutMillis:I

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/btservice/PhonePolicy;->mDelayAutoConnect:Ljava/util/ArrayList;

    .line 109
    const-string v1, "38:C0:96"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    const/16 v0, 0xbb8

    sput v0, Lcom/android/bluetooth/btservice/PhonePolicy;->sDelayAutoConnectTimeoutMillis:I

    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/ServiceFactory;)V
    .locals 1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHeadsetRetrySet:Ljava/util/HashSet;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mA2dpRetrySet:Ljava/util/HashSet;

    .line 101
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mConnectOtherProfilesDeviceSet:Ljava/util/HashSet;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mIsOnlyHfpSupported:Z

    .line 116
    new-instance v0, Lcom/android/bluetooth/btservice/PhonePolicy$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/PhonePolicy$1;-><init>(Lcom/android/bluetooth/btservice/PhonePolicy;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 268
    iput-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 269
    iput-object p2, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    .line 270
    new-instance p2, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy$PhonePolicyHandler;-><init>(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHandler:Landroid/os/Handler;

    .line 271
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/android/bluetooth/btservice/PhonePolicy;->errorLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/btservice/PhonePolicy;)Landroid/os/Handler;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->autoConnectHeadset(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->autoConnectA2dp(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->processDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-static {p0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/PhonePolicy;->processInitProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;III)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/btservice/PhonePolicy;->processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/PhonePolicy;->processActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/btservice/PhonePolicy;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/btservice/PhonePolicy;)Ljava/util/HashSet;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mConnectOtherProfilesDeviceSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/btservice/PhonePolicy;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/PhonePolicy;->resetStates()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/btservice/PhonePolicy;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/PhonePolicy;->autoConnect()V

    return-void
.end method

.method private autoConnect()V
    .locals 4

    .line 447
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 448
    const-string v0, "autoConnect: BT is not ON. Exiting autoConnect"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->errorLog(Ljava/lang/String;)V

    .line 449
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 453
    const-string v0, "autoConnect: Initiate auto connection on BT on..."

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 455
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getMostRecentlyConnectedA2dpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 456
    if-nez v0, :cond_1

    .line 457
    const-string v0, "autoConnect: most recently active a2dp device is null"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->errorLog(Ljava/lang/String;)V

    .line 458
    return-void

    .line 460
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoConnect: Device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " attempting auto connection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/PhonePolicy;->isAutoConnectDelayDevice(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 463
    iget-object v1, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 464
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 465
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/android/bluetooth/btservice/PhonePolicy;->sDelayAutoConnectTimeoutMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 466
    const-string v0, "autoConnect() delay"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 467
    goto :goto_0

    .line 468
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->autoConnectHeadset(Landroid/bluetooth/BluetoothDevice;)V

    .line 469
    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->autoConnectA2dp(Landroid/bluetooth/BluetoothDevice;)V

    .line 471
    :goto_0
    goto :goto_1

    .line 472
    :cond_3
    const-string v0, "autoConnect() - BT is in quiet mode. Not initiating auto connections"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 474
    :goto_1
    return-void
.end method

.method private autoConnectA2dp(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 478
    if-nez v0, :cond_0

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoConnectA2dp: service is null, failed to connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->warnLog(Ljava/lang/String;)V

    .line 480
    return-void

    .line 482
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 483
    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoConnectA2dp: connecting A2DP with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 486
    const-wide/16 v1, 0x32

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 487
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 489
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoConnectA2dp: skipped auto-connect A2DP with device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " connectionPolicy "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 492
    :goto_0
    return-void
.end method

.method private autoConnectHeadset(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 496
    if-nez v0, :cond_0

    .line 497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoConnectHeadset: service is null, failed to connect to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->warnLog(Ljava/lang/String;)V

    .line 498
    return-void

    .line 500
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 501
    const/16 v2, 0x64

    if-ne v1, v2, :cond_1

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoConnectHeadset: Connecting HFP with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 505
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "autoConnectHeadset: skipped auto-connect HFP with device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " connectionPolicy "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 508
    :goto_0
    return-void
.end method

.method private connectOtherProfile(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 511
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectOtherProfile: in quiet mode, skip connect other profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 513
    return-void

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mConnectOtherProfilesDeviceSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectOtherProfile: already scheduled callback for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 517
    return-void

    .line 519
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mConnectOtherProfilesDeviceSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 520
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 521
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 522
    iget-object p1, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHandler:Landroid/os/Handler;

    sget v1, Lcom/android/bluetooth/btservice/PhonePolicy;->sConnectOtherProfilesTimeoutMillis:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 523
    return-void
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1

    .line 581
    sget-boolean v0, Lcom/android/bluetooth/btservice/PhonePolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 582
    const-string v0, "BluetoothPhonePolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    return-void
.end method

.method private static errorLog(Ljava/lang/String;)V
    .locals 1

    .line 595
    const-string v0, "BluetoothPhonePolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    return-void
.end method

.method private handleAllProfilesDisconnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7

    .line 403
    nop

    .line 404
    nop

    .line 405
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 406
    iget-object v1, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/ServiceFactory;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    .line 407
    iget-object v2, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/ServiceFactory;->getPanService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v2

    .line 409
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 411
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v5

    and-int/2addr v5, v3

    .line 412
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v0, v4

    goto :goto_0

    .line 409
    :cond_0
    move v5, v3

    move v0, v4

    .line 414
    :goto_0
    if-eqz v1, :cond_1

    .line 415
    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 416
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    and-int/2addr v5, v6

    .line 417
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 419
    :cond_1
    if-eqz v2, :cond_2

    .line 420
    invoke-virtual {v2}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 421
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    and-int/2addr v5, v2

    .line 422
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 425
    :cond_2
    if-nez v0, :cond_4

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleAllProfilesDisconnected: all profiles disconnected for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHeadsetRetrySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 429
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mA2dpRetrySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 430
    if-eqz v5, :cond_3

    .line 431
    const-string p1, "handleAllProfilesDisconnected: all profiles disconnected for all devices"

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 434
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/PhonePolicy;->resetStates()V

    .line 436
    :cond_3
    return v3

    .line 438
    :cond_4
    return v4
.end method

.method private processActiveDeviceChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processActiveDeviceChanged, device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", profile="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 385
    if-eqz p1, :cond_2

    .line 387
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mIsOnlyHfpSupported:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-ne p2, v2, :cond_0

    .line 388
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isA2dpDevice = true"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 389
    iget-object p2, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p2}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setConnection(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 390
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, p1, v2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setConnection(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 395
    :cond_2
    return-void
.end method

.method private processConnectOtherProfiles(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processConnectOtherProfiles, device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 531
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 533
    const-string p1, "processConnectOtherProfiles, adapter is not ON "

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->warnLog(Ljava/lang/String;)V

    .line 535
    return-void

    .line 537
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->handleAllProfilesDisconnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processConnectOtherProfiles: all profiles disconnected for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 539
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/ServiceFactory;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    .line 544
    iget-object v2, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/ServiceFactory;->getPanService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v2

    .line 546
    const/16 v3, 0x64

    if-eqz v0, :cond_2

    .line 547
    iget-object v4, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHeadsetRetrySet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-ne v4, v3, :cond_2

    .line 549
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    if-nez v4, :cond_2

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retrying connection to Headset with device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 552
    iget-object v4, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHeadsetRetrySet:Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 556
    :cond_2
    if-eqz v1, :cond_3

    .line 557
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mA2dpRetrySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 559
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_3

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrying connection to A2DP with device "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mA2dpRetrySet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 563
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 566
    :cond_3
    if-eqz v2, :cond_4

    .line 567
    invoke-virtual {v2}, Lcom/android/bluetooth/pan/PanService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 570
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 572
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-nez v0, :cond_4

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrying connection to PAN with device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 575
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/pan/PanService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 578
    :cond_4
    return-void
.end method

.method private processDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processDeviceConnected, device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setConnection(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 400
    return-void
.end method

.method private processInitProfilePriorities(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V
    .locals 9

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processInitProfilePriorities() - device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getHidHostService()Lcom/android/bluetooth/hid/HidHostService;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/ServiceFactory;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    .line 278
    iget-object v2, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/ServiceFactory;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v2

    .line 279
    iget-object v3, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/ServiceFactory;->getPanService()Lcom/android/bluetooth/pan/PanService;

    move-result-object v3

    .line 280
    iget-object v4, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v4}, Lcom/android/bluetooth/btservice/ServiceFactory;->getHearingAidService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v4

    .line 284
    const/16 v5, 0x64

    const/4 v6, -0x1

    if-eqz v0, :cond_1

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->HID:Landroid/os/ParcelUuid;

    invoke-static {p2, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->HOGP:Landroid/os/ParcelUuid;

    .line 285
    invoke-static {p2, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 286
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidHostService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, v6, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/4 v7, 0x4

    invoke-virtual {v0, p1, v7, v5}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 293
    :cond_1
    const/4 v0, 0x1

    if-eqz v2, :cond_3

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p2, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    .line 294
    invoke-static {p2, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 295
    :cond_2
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    if-ne v7, v6, :cond_3

    .line 297
    iget-object v7, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v7

    invoke-virtual {v7, p1, v0, v5}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 301
    :cond_3
    if-eqz v1, :cond_5

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    invoke-static {p2, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    .line 302
    invoke-static {p2, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 303
    :cond_4
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    if-ne v7, v6, :cond_5

    .line 305
    iget-object v7, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v7, p1, v8, v5}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 309
    :cond_5
    if-eqz v3, :cond_6

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-static {p2, v7}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 310
    invoke-virtual {v3, p1}, Lcom/android/bluetooth/pan/PanService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v3, v6, :cond_6

    iget-object v3, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 312
    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x1110035

    .line 313
    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 314
    iget-object v3, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v3

    const/4 v7, 0x5

    invoke-virtual {v3, p1, v7, v5}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 318
    :cond_6
    if-eqz v4, :cond_7

    sget-object v3, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {p2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 319
    invoke-virtual {v4, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-ne v3, v6, :cond_7

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting hearing aid profile priority for device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 322
    iget-object v3, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v3

    const/16 v4, 0x15

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 327
    :cond_7
    if-eqz v2, :cond_9

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    .line 328
    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    if-eqz v1, :cond_9

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    .line 329
    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->ADV_AUDIO_DIST:Landroid/os/ParcelUuid;

    .line 330
    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 331
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Only hfp profile supported "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 332
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mIsOnlyHfpSupported:Z

    .line 335
    :cond_9
    return-void
.end method

.method private processProfileStateChanged(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 4

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processProfileStateChanged, device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 341
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    if-ne p2, v1, :cond_8

    .line 342
    :cond_0
    if-ne p3, v0, :cond_3

    .line 343
    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mA2dpRetrySet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 346
    goto :goto_0

    .line 348
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHeadsetRetrySet:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 351
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->connectOtherProfile(Landroid/bluetooth/BluetoothDevice;)V

    .line 353
    :cond_3
    if-nez p3, :cond_8

    .line 356
    iget-boolean p3, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mIsOnlyHfpSupported:Z

    const/4 v2, 0x3

    if-eqz p3, :cond_5

    if-ne p2, v1, :cond_5

    if-eq p4, v1, :cond_4

    if-ne p4, v2, :cond_5

    .line 359
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processProfileStateChanged setDisconnection "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/bluetooth/btservice/PhonePolicy;->debugLog(Ljava/lang/String;)V

    .line 360
    iget-object p3, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p3}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setDisconnection(Landroid/bluetooth/BluetoothDevice;)V

    .line 365
    :cond_5
    if-ne p2, v0, :cond_7

    if-eq p4, v1, :cond_6

    if-ne p4, v2, :cond_7

    .line 368
    :cond_6
    iget-object p2, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p2}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setDisconnection(Landroid/bluetooth/BluetoothDevice;)V

    .line 371
    :cond_7
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/PhonePolicy;->handleAllProfilesDisconnected(Landroid/bluetooth/BluetoothDevice;)Z

    .line 374
    :cond_8
    return-void
.end method

.method private resetStates()V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mHeadsetRetrySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 443
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mA2dpRetrySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 444
    return-void
.end method

.method private static warnLog(Ljava/lang/String;)V
    .locals 1

    .line 588
    sget-boolean v0, Lcom/android/bluetooth/btservice/PhonePolicy;->DBG:Z

    if-eqz v0, :cond_0

    .line 589
    const-string v0, "BluetoothPhonePolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    return-void
.end method


# virtual methods
.method protected cleanup()V
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 264
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/PhonePolicy;->resetStates()V

    .line 265
    return-void
.end method

.method getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method isAutoConnectDelayDevice(Ljava/lang/String;)Z
    .locals 4

    .line 599
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 600
    sget-object v1, Lcom/android/bluetooth/btservice/PhonePolicy;->mDelayAutoConnect:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 601
    const/16 v3, 0x8

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    const/4 p1, 0x1

    return p1

    .line 604
    :cond_0
    goto :goto_0

    .line 606
    :cond_1
    return v0
.end method

.method protected start()V
    .locals 3

    .line 250
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 256
    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 257
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string v1, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object v1, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/PhonePolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 260
    return-void
.end method
