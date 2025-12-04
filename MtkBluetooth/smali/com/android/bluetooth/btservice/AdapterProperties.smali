.class Lcom/android/bluetooth/btservice/AdapterProperties;
.super Ljava/lang/Object;
.source "AdapterProperties.java"


# static fields
.field private static final A2DP_OFFLOAD_DISABLED_PROPERTY:Ljava/lang/String; = "persist.bluetooth.a2dp_offload.disabled"

.field private static final A2DP_OFFLOAD_SUPPORTED_PROPERTY:Ljava/lang/String; = "ro.bluetooth.a2dp_offload.supported"

.field private static final BD_ADDR_LEN:I = 0x6

.field private static final DBG:Z = true

.field private static final DEFAULT_DISCOVERY_TIMEOUT_MS:J = 0x3200L

.field static final MAX_CONNECTED_AUDIO_DEVICES_LOWER_BOND:I = 0x1

.field private static final MAX_CONNECTED_AUDIO_DEVICES_PROPERTY:Ljava/lang/String; = "persist.bluetooth.maxconnectedaudiodevices"

.field private static final MAX_CONNECTED_AUDIO_DEVICES_UPPER_BOUND:I = 0x5

.field private static final TAG:Ljava/lang/String; = "AdapterProperties"

.field private static final VDBG:Z


# instance fields
.field private mA2dpOffloadEnabled:Z

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private volatile mAddress:[B

.field private volatile mBluetoothClass:Landroid/bluetooth/BluetoothClass;

.field private mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConnectionState:I

.field private volatile mDiscoverableTimeout:I

.field private mDiscovering:Z

.field private mDiscoveryEndMs:J

.field private mIsActivityAndEnergyReporting:Z

.field private mIsDebugLogSupported:Z

.field private mIsExtendedScanSupported:Z

.field private mIsLe2MPhySupported:Z

.field private mIsLeCodedPhySupported:Z

.field private mIsLeExtendedAdvertisingSupported:Z

.field private mIsLePeriodicAdvertisingSupported:Z

.field private mLeMaximumAdvertisingDataLength:I

.field private volatile mLocalIOCapability:I

.field private volatile mLocalIOCapabilityBLE:I

.field private mMaxConnectedAudioDevices:I

.field private volatile mName:Ljava/lang/String;

.field private mNumOfAdvertisementInstancesSupported:I

.field private mNumOfOffloadedIrkSupported:I

.field private mNumOfOffloadedScanFilterSupported:I

.field private final mObject:Ljava/lang/Object;

.field private mOffloadedScanResultStorageBytes:I

.field private final mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProfilesConnected:I

.field private mProfilesConnecting:I

.field private mProfilesDisconnecting:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

.field private mRpaOffloadSupported:Z

.field private volatile mScanMode:I

.field private mService:Lcom/android/bluetooth/btservice/AdapterService;

.field private volatile mState:I

.field private mTotNumOfTrackableAdv:I

.field private volatile mUuids:[Landroid/os/ParcelUuid;

.field private mVersSupported:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    nop

    .line 61
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLocalIOCapability:I

    .line 83
    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLocalIOCapabilityBLE:I

    .line 85
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    .line 92
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    .line 93
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    .line 94
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mMaxConnectedAudioDevices:I

    .line 95
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mA2dpOffloadEnabled:Z

    .line 120
    new-instance v0, Lcom/android/bluetooth/btservice/AdapterProperties$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/AdapterProperties$1;-><init>(Lcom/android/bluetooth/btservice/AdapterProperties;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    .line 184
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 185
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 186
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterProperties;->invalidateBluetoothCaches()V

    .line 187
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/btservice/AdapterProperties;ILandroid/content/Intent;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->sendConnectionStateChange(ILandroid/content/Intent;)V

    return-void
.end method

.method private static convertToAdapterState(I)I
    .locals 2

    .line 716
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertToAdapterState, unknow state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdapterProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/4 p0, -0x1

    return p0

    .line 720
    :cond_0
    return v0

    .line 722
    :cond_1
    return v0

    .line 724
    :cond_2
    return v0

    .line 718
    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1

    .line 1116
    const-string v0, "AdapterProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    return-void
.end method

.method private dumpConnectionState(I)Ljava/lang/String;
    .locals 2

    .line 1081
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1091
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Connection State "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1085
    :cond_0
    const-string p1, "STATE_DISCONNECTING"

    return-object p1

    .line 1089
    :cond_1
    const-string p1, "STATE_CONNECTED"

    return-object p1

    .line 1087
    :cond_2
    const-string p1, "STATE_CONNECTING"

    return-object p1

    .line 1083
    :cond_3
    const-string p1, "STATE_DISCONNECTED"

    return-object p1
.end method

.method private dumpDeviceType(I)Ljava/lang/String;
    .locals 2

    .line 1066
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid device type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1074
    :cond_0
    const-string p1, " DUAL "

    return-object p1

    .line 1072
    :cond_1
    const-string p1, "  LE  "

    return-object p1

    .line 1070
    :cond_2
    const-string p1, "BR/EDR"

    return-object p1

    .line 1068
    :cond_3
    const-string p1, " ???? "

    return-object p1
.end method

.method private dumpScanMode(I)Ljava/lang/String;
    .locals 2

    .line 1096
    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    .line 1104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Scan Mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1102
    :cond_0
    const-string p1, "SCAN_MODE_CONNECTABLE_DISCOVERABLE"

    return-object p1

    .line 1100
    :cond_1
    const-string p1, "SCAN_MODE_CONNECTABLE"

    return-object p1

    .line 1098
    :cond_2
    const-string p1, "SCAN_MODE_NONE"

    return-object p1
.end method

.method private static errorLog(Ljava/lang/String;)V
    .locals 1

    .line 1121
    const-string v0, "AdapterProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    return-void
.end method

.method private static infoLog(Ljava/lang/String;)V
    .locals 1

    .line 1109
    sget-boolean v0, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    if-eqz v0, :cond_0

    .line 1110
    const-string v0, "AdapterProperties"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_0
    return-void
.end method

.method private static invalidateBluetoothCaches()V
    .locals 0

    .line 260
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterProperties;->invalidateGetProfileConnectionStateCache()V

    .line 261
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterProperties;->invalidateIsOffloadedFilteringSupportedCache()V

    .line 262
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterProperties;->invalidateGetBondStateCache()V

    .line 263
    return-void
.end method

.method private static invalidateGetBondStateCache()V
    .locals 0

    .line 257
    invoke-static {}, Landroid/bluetooth/BluetoothDevice;->invalidateBluetoothGetBondStateCache()V

    .line 258
    return-void
.end method

.method private static invalidateGetProfileConnectionStateCache()V
    .locals 0

    .line 251
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->invalidateGetProfileConnectionStateCache()V

    .line 252
    return-void
.end method

.method private static invalidateIsOffloadedFilteringSupportedCache()V
    .locals 0

    .line 254
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->invalidateIsOffloadedFilteringSupportedCache()V

    .line 255
    return-void
.end method

.method private static isNormalStateTransition(II)Z
    .locals 4

    .line 731
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_5

    const/4 v2, 0x2

    if-eq p0, v1, :cond_2

    const/4 v3, 0x3

    if-eq p0, v2, :cond_0

    if-eq p0, v3, :cond_2

    .line 741
    return v0

    .line 735
    :cond_0
    if-ne p1, v3, :cond_1

    move v0, v1

    :cond_1
    return v0

    .line 738
    :cond_2
    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_4

    :cond_3
    move v0, v1

    :cond_4
    return v0

    .line 733
    :cond_5
    if-ne p1, v1, :cond_6

    move v0, v1

    :cond_6
    return v0
.end method

.method private sendConnectionStateChange(ILandroid/content/Intent;)V
    .locals 13

    .line 622
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 623
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 624
    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 626
    sget-boolean v2, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    const-string v3, " -> "

    const-string v10, ", "

    const-string v11, ", device="

    const-string v12, "AdapterProperties"

    if-eqz v2, :cond_0

    .line 627
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROFILE_CONNECTION_STATE_CHANGE: profile="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    const/16 v4, 0x44

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 633
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 634
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v9

    .line 632
    move v5, p2

    move v7, p1

    invoke-static/range {v4 .. v9}, Lcom/android/bluetooth/BluetoothStatsLog;->write(IIII[BI)V

    .line 636
    invoke-static {v1, p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->isNormalStateTransition(II)Z

    move-result v2

    if-nez v2, :cond_2

    .line 638
    sget-boolean v2, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    if-eqz v2, :cond_1

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROFILE_CONNECTION_STATE_CHANGE: unexpected transition for profile="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_1
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    if-nez p2, :cond_2

    .line 647
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->getProfileConnectionState(I)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 649
    const-string p1, "PROFILE_CONNECTION_STATE_CHANGE: Only handle 2-->0 except hfp has connected before."

    invoke-static {v12, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    return-void

    .line 654
    :cond_2
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V

    .line 655
    return-void
.end method

.method private updateCountersAndCheckForConnectionStateChange(II)Z
    .locals 7

    .line 746
    const/4 v0, 0x3

    const/4 v1, 0x2

    const-string v2, " -> "

    const-string v3, "Invalid state transition, "

    const-string v4, "AdapterProperties"

    const/4 v5, 0x1

    if-eq p2, v5, :cond_4

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_0

    goto/16 :goto_0

    .line 768
    :cond_0
    iget v6, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    if-lez v6, :cond_1

    .line 769
    sub-int/2addr v6, v5

    iput v6, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    goto :goto_0

    .line 771
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProfilesDisconnecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 758
    :cond_2
    iget v6, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-lez v6, :cond_3

    .line 759
    sub-int/2addr v6, v5

    iput v6, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    goto :goto_0

    .line 761
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProfilesConnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 748
    :cond_4
    iget v6, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-lez v6, :cond_d

    .line 749
    sub-int/2addr v6, v5

    iput v6, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    .line 778
    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_b

    if-eq p1, v5, :cond_9

    if-eq p1, v1, :cond_7

    if-eq p1, v0, :cond_5

    .line 795
    return v5

    .line 788
    :cond_5
    iget p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    .line 789
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v0, :cond_6

    if-ne p1, v5, :cond_6

    goto :goto_1

    :cond_6
    move v5, p2

    :goto_1
    return v5

    .line 784
    :cond_7
    iget p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    .line 785
    if-ne p1, v5, :cond_8

    goto :goto_2

    :cond_8
    move v5, p2

    :goto_2
    return v5

    .line 780
    :cond_9
    iget p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    .line 781
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v0, :cond_a

    if-ne p1, v5, :cond_a

    goto :goto_3

    :cond_a
    move v5, p2

    :goto_3
    return v5

    .line 792
    :cond_b
    iget p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez p1, :cond_c

    iget p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    move v5, p2

    :goto_4
    return v5

    .line 751
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProfilesConnecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateFeatureSupport([B)V
    .locals 5

    .line 944
    const/4 v0, 0x1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x8

    shl-int/2addr v1, v2

    const/4 v3, 0x0

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mVersSupported:I

    .line 945
    const/4 v1, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    .line 946
    const/4 v1, 0x4

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    .line 947
    const/4 v1, 0x5

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    .line 948
    const/4 v1, 0x6

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    .line 949
    const/4 v1, 0x7

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    .line 950
    const/16 v1, 0x9

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    .line 951
    const/16 v1, 0xb

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/2addr v1, v2

    const/16 v4, 0xa

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mTotNumOfTrackableAdv:I

    .line 952
    const/16 v1, 0xc

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsExtendedScanSupported:Z

    .line 953
    const/16 v1, 0xd

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsDebugLogSupported:Z

    .line 954
    const/16 v1, 0xe

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLe2MPhySupported:Z

    .line 955
    const/16 v1, 0xf

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLeCodedPhySupported:Z

    .line 956
    const/16 v1, 0x10

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLeExtendedAdvertisingSupported:Z

    .line 957
    const/16 v1, 0x11

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    if-eqz v1, :cond_7

    goto :goto_7

    :cond_7
    move v0, v3

    :goto_7
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLePeriodicAdvertisingSupported:Z

    .line 958
    const/16 v0, 0x12

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x13

    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    shl-int/2addr p1, v2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLeMaximumAdvertisingDataLength:I

    .line 961
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BT_PROPERTY_LOCAL_LE_FEATURES: update from BT controller mNumOfAdvertisementInstancesSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mRpaOffloadSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mNumOfOffloadedIrkSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mNumOfOffloadedScanFilterSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mOffloadedScanResultStorageBytes= "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsActivityAndEnergyReporting = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mVersSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mVersSupported:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mTotNumOfTrackableAdv = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mTotNumOfTrackableAdv:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mIsExtendedScanSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsExtendedScanSupported:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsDebugLogSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsDebugLogSupported:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsLe2MPhySupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLe2MPhySupported:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsLeCodedPhySupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLeCodedPhySupported:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsLeExtendedAdvertisingSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLeExtendedAdvertisingSupported:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsLePeriodicAdvertisingSupported = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLePeriodicAdvertisingSupported:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mLeMaximumAdvertisingDataLength = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLeMaximumAdvertisingDataLength:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterProperties;->invalidateIsOffloadedFilteringSupportedCache()V

    .line 977
    return-void
.end method

.method private updateProfileConnectionState(III)V
    .locals 4

    .line 805
    nop

    .line 806
    nop

    .line 807
    nop

    .line 819
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 820
    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 821
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 822
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 824
    if-ne p2, v2, :cond_0

    .line 825
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 826
    :cond_0
    const/4 v3, 0x2

    if-eq p2, v3, :cond_5

    if-ne p2, v1, :cond_1

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 830
    :cond_1
    if-ne v0, v1, :cond_2

    if-ne p3, v2, :cond_2

    .line 831
    goto :goto_1

    .line 832
    :cond_2
    if-le v0, v1, :cond_4

    if-ne p3, v2, :cond_4

    .line 833
    add-int/lit8 v0, v0, -0x1

    .line 835
    if-eq v2, v3, :cond_3

    if-ne v2, v1, :cond_7

    .line 837
    :cond_3
    move p2, v2

    goto :goto_1

    .line 840
    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    .line 829
    :cond_5
    :goto_0
    move v0, v1

    goto :goto_1

    .line 820
    :cond_6
    move v0, v1

    .line 844
    :cond_7
    :goto_1
    if-eqz v1, :cond_8

    .line 845
    iget-object p3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterProperties;->invalidateGetProfileConnectionStateCache()V

    .line 848
    :cond_8
    return-void
.end method

.method private validateProfileConnectionState(I)Z
    .locals 2

    .line 709
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method adapterPropertyChangedCallback([I[[B)V
    .locals 10

    .line 854
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 855
    aget-object v2, p2, v1

    .line 856
    aget v3, p1, v1

    .line 857
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adapterPropertyChangedCallback with type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 858
    iget-object v4, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v4

    .line 859
    const/high16 v5, 0x4000000

    packed-switch v3, :pswitch_data_0

    .line 937
    :pswitch_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 932
    :pswitch_1
    invoke-static {v2}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLocalIOCapabilityBLE:I

    .line 933
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLocalIOCapabilityBLE set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLocalIOCapabilityBLE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 934
    goto/16 :goto_4

    .line 927
    :pswitch_2
    invoke-static {v2}, Lcom/android/bluetooth/Utils;->byteArrayToInt([B)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLocalIOCapability:I

    .line 928
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mLocalIOCapability set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLocalIOCapability:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 929
    goto/16 :goto_4

    .line 923
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateFeatureSupport([B)V

    .line 924
    goto/16 :goto_4

    .line 918
    :pswitch_4
    invoke-static {v2, v0}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discoverable Timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 920
    goto/16 :goto_4

    .line 908
    :pswitch_5
    array-length v3, v2

    const/4 v5, 0x6

    div-int/2addr v3, v5

    .line 909
    new-array v6, v5, [B

    .line 910
    move v7, v0

    :goto_1
    if-ge v7, v3, :cond_0

    .line 911
    mul-int/lit8 v8, v7, 0x6

    invoke-static {v2, v8, v6, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 912
    iget-object v8, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 913
    invoke-static {v6}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v9

    .line 912
    invoke-virtual {v8, v9}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v8

    const/16 v9, 0xc

    invoke-virtual {p0, v8, v9}, Lcom/android/bluetooth/btservice/AdapterProperties;->onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V

    .line 910
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 916
    :cond_0
    goto/16 :goto_4

    .line 896
    :pswitch_6
    invoke-static {v2, v0}, Lcom/android/bluetooth/Utils;->byteArrayToInt([BI)I

    move-result v2

    .line 897
    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterService;->convertScanModeFromHal(I)I

    move-result v2

    iput v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    .line 898
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    const-string v3, "android.bluetooth.adapter.extra.SCAN_MODE"

    iget v6, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 900
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 901
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v5, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v5}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 902
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan Mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 903
    goto/16 :goto_4

    .line 884
    :pswitch_7
    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v5, 0x3

    if-eq v3, v5, :cond_1

    goto :goto_2

    .line 888
    :cond_1
    aget-byte v3, v2, v0

    shl-int/lit8 v3, v3, 0x10

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v3, v5

    const/4 v5, 0x2

    aget-byte v2, v2, v5

    add-int/2addr v3, v2

    .line 890
    if-eqz v3, :cond_2

    .line 891
    new-instance v2, Landroid/bluetooth/BluetoothClass;

    invoke-direct {v2, v3}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    .line 893
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT Class:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 894
    goto/16 :goto_4

    .line 885
    :cond_3
    :goto_2
    const-string p1, "Invalid BT CoD value from stack."

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 886
    monitor-exit v4

    return-void

    .line 905
    :pswitch_8
    invoke-static {v2}, Lcom/android/bluetooth/Utils;->byteArrayToUuid([B)[Landroid/os/ParcelUuid;

    move-result-object v2

    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;

    .line 906
    goto/16 :goto_4

    .line 870
    :pswitch_9
    iput-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    .line 871
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    invoke-static {v2}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object v2

    .line 873
    sget-boolean v3, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    if-eqz v3, :cond_4

    .line 874
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Address is:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 877
    :cond_4
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 878
    const-string v6, "android.bluetooth.adapter.extra.BLUETOOTH_ADDRESS"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 880
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 882
    goto :goto_4

    .line 861
    :pswitch_a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    .line 862
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    const-string v3, "android.bluetooth.adapter.extra.LOCAL_NAME"

    iget-object v6, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 864
    invoke-virtual {v2, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 865
    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 867
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 868
    goto :goto_4

    .line 939
    :catchall_0
    move-exception p1

    goto :goto_5

    .line 937
    :goto_3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property change not handled in Java land:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 939
    :goto_4
    monitor-exit v4

    .line 854
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 939
    :goto_5
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 941
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public cleanup()V
    .locals 3

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 240
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 241
    iget-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mReceiverRegistered:Z

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 243
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mReceiverRegistered:Z

    .line 245
    :cond_0
    iput-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 246
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 247
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterProperties;->invalidateBluetoothCaches()V

    .line 248
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 267
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method discoveryEndMillis()J
    .locals 2

    .line 614
    iget-wide v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoveryEndMs:J

    return-wide v0
.end method

.method discoveryStateChangeCallback(I)V
    .locals 5

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback:discoveryStateChangeCallback with state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 1023
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1025
    if-nez p1, :cond_0

    .line 1026
    const/4 p1, 0x0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    .line 1027
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/AdapterService;->clearDiscoveringPackages()V

    .line 1028
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoveryEndMs:J

    .line 1029
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1030
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, p1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0

    .line 1037
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1031
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1032
    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    .line 1033
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3200

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoveryEndMs:J

    .line 1034
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1035
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, p1, v2}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1037
    :cond_1
    :goto_0
    monitor-exit v0

    .line 1038
    return-void

    .line 1037
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1041
    const-string p1, "AdapterProperties"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1042
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Name: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    sget-boolean p1, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    if-eqz p1, :cond_0

    .line 1045
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Address: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    invoke-static {p3}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  BluetoothClass: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  ScanMode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getScanMode()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->dumpScanMode(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  ConnectionState: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getConnectionState()I

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->dumpConnectionState(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1051
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  State: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result p3

    invoke-static {p3}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1052
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  MaxConnectedAudioDevices: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getMaxConnectedAudioDevices()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  A2dpOffloadEnabled: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mA2dpOffloadEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Discovering: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  DiscoveryEndMs: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoveryEndMs:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    const-string p1, "  Bonded devices:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1058
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/bluetooth/BluetoothDevice;

    .line 1059
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1060
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->dumpDeviceType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1061
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1059
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    goto :goto_0

    .line 1063
    :cond_1
    return-void
.end method

.method getAddress()[B
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mAddress:[B

    return-object v0
.end method

.method getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    monitor-exit v0

    return-object v1

    .line 321
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getBondedDevices()[Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 530
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/bluetooth/BluetoothDevice;

    .line 532
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    move-object v0, v1

    goto :goto_0

    .line 533
    :catch_0
    move-exception v1

    .line 534
    const-string v1, "Error retrieving bonded device array"

    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 536
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBondedDevices: length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->infoLog(Ljava/lang/String;)V

    .line 537
    return-object v0
.end method

.method getConnectionState()I
    .locals 1

    .line 410
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    return v0
.end method

.method getDiscoverableTimeout()I
    .locals 1

    .line 589
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    return v0
.end method

.method getIoCapability()I
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 339
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLocalIOCapability:I

    monitor-exit v0

    return v1

    .line 340
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLeIoCapability()I
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLocalIOCapabilityBLE:I

    monitor-exit v0

    return v1

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getLeMaximumAdvertisingDataLength()I
    .locals 1

    .line 502
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLeMaximumAdvertisingDataLength:I

    return v0
.end method

.method getMaxConnectedAudioDevices()I
    .locals 1

    .line 516
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mMaxConnectedAudioDevices:I

    return v0
.end method

.method getName()Ljava/lang/String;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mName:Ljava/lang/String;

    return-object v0
.end method

.method getNumOfAdvertisementInstancesSupported()I
    .locals 1

    .line 432
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfAdvertisementInstancesSupported:I

    return v0
.end method

.method getNumOfOffloadedIrkSupported()I
    .locals 1

    .line 446
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedIrkSupported:I

    return v0
.end method

.method getNumOfOffloadedScanFilterSupported()I
    .locals 1

    .line 453
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mNumOfOffloadedScanFilterSupported:I

    return v0
.end method

.method getOffloadedScanResultStorage()I
    .locals 1

    .line 460
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mOffloadedScanResultStorageBytes:I

    return v0
.end method

.method getProfileConnectionState(I)I
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 605
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/Pair;

    .line 606
    if-eqz p1, :cond_0

    .line 607
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    monitor-exit v0

    return p1

    .line 609
    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 610
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getScanMode()I
    .locals 1

    .line 367
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    return v0
.end method

.method getState()I
    .locals 1

    .line 425
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    return v0
.end method

.method getTotalNumOfTrackableAdvertisements()I
    .locals 1

    .line 509
    iget v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mTotNumOfTrackableAdv:I

    return v0
.end method

.method getUuids()[Landroid/os/ParcelUuid;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mUuids:[Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public init(Lcom/android/bluetooth/btservice/RemoteDevices;)V
    .locals 4

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 191
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    .line 195
    nop

    .line 196
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    .line 197
    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/AdapterService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x10e001c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    .line 196
    :cond_0
    move p1, v0

    .line 202
    :goto_0
    nop

    .line 203
    const-string v1, "persist.bluetooth.maxconnectedaudiodevices"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 206
    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mMaxConnectedAudioDevices:I

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init(), maxConnectedAudioDevices, default="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", propertyOverlayed="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", finalValue="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mMaxConnectedAudioDevices:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AdapterProperties"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    nop

    .line 214
    const-string p1, "ro.bluetooth.a2dp_offload.supported"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 215
    const-string p1, "persist.bluetooth.a2dp_offload.disabled"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    nop

    :goto_1
    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mA2dpOffloadEnabled:Z

    .line 217
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v0, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v0, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    const-string v0, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 223
    const-string v0, "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v0, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v0, "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v0, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v0, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v0, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v0, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v0, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_2

    .line 232
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 233
    iput-boolean v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mReceiverRegistered:Z

    .line 235
    :cond_2
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterProperties;->invalidateBluetoothCaches()V

    .line 236
    return-void
.end method

.method isA2dpOffloadEnabled()Z
    .locals 1

    .line 523
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mA2dpOffloadEnabled:Z

    return v0
.end method

.method isActivityAndEnergyReportingSupported()Z
    .locals 1

    .line 467
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsActivityAndEnergyReporting:Z

    return v0
.end method

.method isDiscovering()Z
    .locals 1

    .line 618
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscovering:Z

    return v0
.end method

.method isLe2MPhySupported()Z
    .locals 1

    .line 474
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLe2MPhySupported:Z

    return v0
.end method

.method isLeCodedPhySupported()Z
    .locals 1

    .line 481
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLeCodedPhySupported:Z

    return v0
.end method

.method isLeExtendedAdvertisingSupported()Z
    .locals 1

    .line 488
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLeExtendedAdvertisingSupported:Z

    return v0
.end method

.method isLePeriodicAdvertisingSupported()Z
    .locals 1

    .line 495
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mIsLePeriodicAdvertisingSupported:Z

    return v0
.end method

.method isRpaOffloadSupported()Z
    .locals 1

    .line 439
    iget-boolean v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRpaOffloadSupported:Z

    return v0
.end method

.method onBleDisable()V
    .locals 1

    .line 1002
    const-string v0, "onBleDisable"

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 1004
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    .line 1005
    return-void
.end method

.method onBluetoothDisableDone()V
    .locals 3

    .line 1010
    const-string v0, "Reset adapter and profile connection states."

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1012
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setConnectionState(I)V

    .line 1013
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 1014
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterProperties;->invalidateGetProfileConnectionStateCache()V

    .line 1015
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    .line 1016
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    .line 1017
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    .line 1018
    monitor-exit v0

    .line 1019
    return-void

    .line 1018
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onBluetoothReady()V
    .locals 3

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBluetoothReady, state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/AdapterProperties;->getState()I

    move-result v1

    invoke-static {v1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ScanMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mScanMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 983
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 985
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    if-nez v1, :cond_0

    .line 986
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setConnectionState(I)V

    .line 987
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 988
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterProperties;->invalidateGetProfileConnectionStateCache()V

    .line 989
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnected:I

    .line 990
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesConnecting:I

    .line 991
    iput v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mProfilesDisconnecting:I

    .line 994
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setScanMode(I)Z

    .line 996
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mDiscoverableTimeout:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setDiscoverableTimeout(I)Z

    .line 997
    monitor-exit v0

    .line 998
    return-void

    .line 997
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onBondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 3

    .line 544
    const-string v0, "AdapterProperties"

    if-nez p1, :cond_0

    .line 545
    const-string p1, "onBondStateChanged, device is null"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void

    .line 549
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    .line 550
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/RemoteDevices;->getDeviceProperties(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 551
    if-nez v2, :cond_1

    .line 552
    iget-object v2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mRemoteDevices:Lcom/android/bluetooth/btservice/RemoteDevices;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/btservice/RemoteDevices;->addDeviceProperties([B)Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;

    move-result-object v2

    .line 554
    :cond_1
    invoke-virtual {v2, p2}, Lcom/android/bluetooth/btservice/RemoteDevices$DeviceProperties;->setBondState(I)V

    .line 556
    const/16 v1, 0xc

    if-ne p2, v1, :cond_3

    .line 558
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 560
    sget-boolean p2, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    if-eqz p2, :cond_2

    .line 561
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding bonded device:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 564
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 566
    :cond_3
    const/16 v1, 0xa

    if-ne p2, v1, :cond_5

    .line 568
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBondedDevices:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 570
    sget-boolean p2, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    if-eqz p2, :cond_5

    .line 571
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing bonded device:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    goto :goto_0

    .line 576
    :cond_4
    sget-boolean p2, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    if-eqz p2, :cond_5

    .line 577
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to remove device: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 582
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterProperties;->invalidateGetBondStateCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    goto :goto_1

    .line 583
    :catch_0
    move-exception p1

    .line 584
    const-string p2, "onBondStateChanged: Exception "

    invoke-static {v0, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 586
    :goto_1
    return-void
.end method

.method sendConnectionStateChange(Landroid/bluetooth/BluetoothDevice;III)V
    .locals 7

    .line 658
    invoke-direct {p0, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->validateProfileConnectionState(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->validateProfileConnectionState(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    const/16 v2, 0xf

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_5

    iget v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    goto/16 :goto_0

    .line 677
    :cond_1
    invoke-direct {p0, p2, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateProfileConnectionState(III)V

    .line 679
    invoke-direct {p0, p3, p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->updateCountersAndCheckForConnectionStateChange(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 680
    invoke-static {p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->convertToAdapterState(I)I

    move-result v1

    .line 681
    invoke-static {p4}, Lcom/android/bluetooth/btservice/AdapterProperties;->convertToAdapterState(I)I

    move-result v2

    .line 682
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/btservice/AdapterProperties;->setConnectionState(I)V

    .line 684
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 685
    const-string v4, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 686
    const-string v4, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 687
    const-string v4, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 690
    sget-boolean v4, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    if-eqz v4, :cond_2

    .line 691
    const-string v4, "AdapterProperties"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ADAPTER_CONNECTION_STATE_CHANGE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_2
    invoke-static {p4, p3}, Lcom/android/bluetooth/btservice/AdapterProperties;->isNormalStateTransition(II)Z

    move-result v1

    if-nez v1, :cond_3

    .line 697
    sget-boolean v1, Lcom/android/bluetooth/btservice/AdapterProperties;->VDBG:Z

    if-eqz v1, :cond_3

    .line 698
    const-string v1, "AdapterProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ADAPTER_CONNECTION_STATE_CHANGE: unexpected transition for profile="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", device="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object p2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p3, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v3, p2, p3}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 705
    :cond_4
    monitor-exit v0

    .line 706
    return-void

    .line 673
    :cond_5
    :goto_0
    const-string p1, "Do not update connection state after turn off to ble on"

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 674
    monitor-exit v0

    return-void

    .line 705
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 663
    :cond_6
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendConnectionStateChange: invalid state transition "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/btservice/AdapterProperties;->errorLog(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method setBluetoothClass(Landroid/bluetooth/BluetoothClass;)Z
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x4

    .line 305
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getClassOfDeviceBytes()[B

    move-result-object v3

    .line 304
    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result v1

    .line 307
    if-eqz v1, :cond_0

    .line 308
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mBluetoothClass:Landroid/bluetooth/BluetoothClass;

    .line 311
    :cond_0
    monitor-exit v0

    return v1

    .line 312
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setConnectionState(I)V
    .locals 0

    .line 403
    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mConnectionState:I

    .line 404
    return-void
.end method

.method setDiscoverableTimeout(I)Z
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 594
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/16 v2, 0x9

    .line 597
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object p1

    .line 595
    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 599
    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 600
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setIoCapability(I)Z
    .locals 4

    .line 325
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/16 v2, 0xe

    .line 327
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v3

    .line 326
    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result v1

    .line 329
    if-eqz v1, :cond_0

    .line 330
    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLocalIOCapability:I

    .line 333
    :cond_0
    monitor-exit v0

    return v1

    .line 334
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setLeIoCapability(I)Z
    .locals 4

    .line 344
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 345
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/16 v2, 0xf

    .line 347
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object v3

    .line 345
    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result v1

    .line 349
    if-eqz v1, :cond_0

    .line 350
    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mLocalIOCapabilityBLE:I

    .line 353
    :cond_0
    monitor-exit v0

    return v1

    .line 354
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setName(Ljava/lang/String;)Z
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x1

    .line 284
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 283
    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 285
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setScanMode(I)Z
    .locals 3

    .line 376
    iget-object v0, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mObject:Ljava/lang/Object;

    monitor-enter v0

    .line 377
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v1, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v2, 0x7

    .line 379
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->intToByteArray(I)[B

    move-result-object p1

    .line 378
    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->setAdapterPropertyNative(I[B)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 381
    :cond_0
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 382
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setState(I)V
    .locals 2

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting state to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/btservice/AdapterProperties;->debugLog(Ljava/lang/String;)V

    .line 418
    iput p1, p0, Lcom/android/bluetooth/btservice/AdapterProperties;->mState:I

    .line 419
    return-void
.end method
