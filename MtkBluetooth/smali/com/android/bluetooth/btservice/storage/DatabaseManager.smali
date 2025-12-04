.class public Lcom/android/bluetooth/btservice/storage/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;
    }
.end annotation


# static fields
.field private static final LEGACY_A2DP_OPTIONAL_CODECS_ENABLED_PREFIX:Ljava/lang/String; = "bluetooth_a2dp_optional_codecs_enabled_"

.field private static final LEGACY_A2DP_SINK_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_a2dp_sink_priority_"

.field private static final LEGACY_A2DP_SRC_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_a2dp_src_priority_"

.field private static final LEGACY_A2DP_SUPPORTS_OPTIONAL_CODECS_PREFIX:Ljava/lang/String; = "bluetooth_a2dp_supports_optional_codecs_"

.field private static final LEGACY_BTSNOOP_DEFAULT_MODE:Ljava/lang/String; = "bluetooth_btsnoop_default_mode"

.field private static final LEGACY_HEADSET_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_headset_priority_"

.field private static final LEGACY_HEARING_AID_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_hearing_aid_priority_"

.field private static final LEGACY_INPUT_DEVICE_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_input_device_priority_"

.field private static final LEGACY_MAP_CLIENT_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_map_client_priority_"

.field private static final LEGACY_MAP_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_map_priority_"

.field private static final LEGACY_PAN_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_pan_priority_"

.field private static final LEGACY_PBAP_CLIENT_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_pbap_client_priority_"

.field private static final LEGACY_SAP_PRIORITY_PREFIX:Ljava/lang/String; = "bluetooth_sap_priority_"

.field private static final LOAD_DATABASE_TIMEOUT:I = 0x1f4

.field private static final LOCAL_STORAGE:Ljava/lang/String; = "LocalStorage"

.field private static final METADATA_CHANGED_LOG_MAX_SIZE:I = 0x14

.field private static final MSG_CLEAR_DATABASE:I = 0x64

.field private static final MSG_DELETE_DATABASE:I = 0x2

.field private static final MSG_LOAD_DATABASE:I = 0x0

.field private static final MSG_UPDATE_DATABASE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothDatabase"

.field private static final VDBG:Z


# instance fields
.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mDatabase:Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field final mMetadataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/bluetooth/btservice/storage/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetadataChangedLog:Lcom/google/common/collect/EvictingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/EvictingQueue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMigratedFromSettingsGlobal:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSemaphore:Ljava/util/concurrent/Semaphore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    nop

    .line 66
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    .line 65
    return-void
.end method

.method public constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 69
    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 70
    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mDatabase:Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMigratedFromSettingsGlobal:Z

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    .line 170
    new-instance v0, Lcom/android/bluetooth/btservice/storage/DatabaseManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager$1;-><init>(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 119
    const/16 p1, 0x14

    invoke-static {p1}, Lcom/google/common/collect/EvictingQueue;->create(I)Lcom/google/common/collect/EvictingQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataChangedLog:Lcom/google/common/collect/EvictingQueue;

    .line 120
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mDatabase:Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/btservice/storage/DatabaseManager;Lcom/android/bluetooth/btservice/storage/MetadataDatabase;)Lcom/android/bluetooth/btservice/storage/MetadataDatabase;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mDatabase:Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Lcom/android/bluetooth/btservice/AdapterService;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/btservice/storage/DatabaseManager;Ljava/util/List;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->compactLastConnectionTime(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/storage/DatabaseManager;)Z
    .locals 0

    .line 62
    iget-boolean p0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMigratedFromSettingsGlobal:Z

    return p0
.end method

.method private compactLastConnectionTime(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/btservice/storage/Metadata;",
            ">;)V"
        }
    .end annotation

    .line 730
    const-string v0, "BluetoothDatabase"

    const-string v1, "compactLastConnectionTime: Compacting metadata after load"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    const/4 v1, 0x0

    sput v1, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->sCurrentConnectionNumber:I

    .line 733
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 734
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 735
    iget-wide v3, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->last_active_time:J

    sget v5, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->sCurrentConnectionNumber:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 737
    sget-boolean v3, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz v3, :cond_0

    .line 738
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "compactLastConnectionTime: Setting last_active_item for device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->last_active_time:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->sCurrentConnectionNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 738
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_0
    sget v3, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->sCurrentConnectionNumber:I

    int-to-long v3, v3

    iput-wide v3, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->last_active_time:J

    .line 745
    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 746
    sget v2, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->sCurrentConnectionNumber:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->sCurrentConnectionNumber:I

    .line 733
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 749
    :cond_2
    return-void
.end method

.method private static getLegacyA2dpOptionalCodecsEnabledKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1008
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_a2dp_optional_codecs_enabled_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1009
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1008
    return-object p0
.end method

.method private static getLegacyA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_a2dp_sink_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLegacyA2dpSrcPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_a2dp_src_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLegacyA2dpSupportsOptionalCodecsKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_a2dp_supports_optional_codecs_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 1000
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 999
    return-object p0
.end method

.method private static getLegacyHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_headset_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLegacyHearingAidPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_hearing_aid_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLegacyHidHostPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_input_device_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLegacyMapClientPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_map_client_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLegacyMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_map_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLegacyPanPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_pan_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLegacyPbapClientPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1051
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_pbap_client_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getLegacySapPriorityKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bluetooth_sap_priority_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getMostRecentlyConnectedDevices$0(Lcom/android/bluetooth/btservice/storage/Metadata;Lcom/android/bluetooth/btservice/storage/Metadata;)I
    .locals 2

    .line 680
    iget-wide v0, p1, Lcom/android/bluetooth/btservice/storage/Metadata;->last_active_time:J

    iget-wide p0, p0, Lcom/android/bluetooth/btservice/storage/Metadata;->last_active_time:J

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Long;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeUnusedMetadata$1(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 839
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private loadDatabase()V
    .locals 5

    .line 1062
    const-string v0, "BluetoothDatabase"

    const-string v1, "Load Database"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1064
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1067
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    goto :goto_0

    .line 1068
    :catch_0
    move-exception v1

    .line 1069
    const-string v1, "loadDatabase: semaphore acquire failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :goto_0
    return-void
.end method

.method private logManufacturerInfo(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 11

    .line 1103
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1104
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1103
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 1105
    nop

    .line 1106
    nop

    .line 1107
    nop

    .line 1108
    nop

    .line 1109
    invoke-static {p3}, Lcom/android/bluetooth/Utils;->byteArrayToUtf8String([B)Ljava/lang/String;

    move-result-object p3

    .line 1110
    const-string v0, ""

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 1125
    return-void

    .line 1118
    :cond_0
    nop

    .line 1119
    move-object v8, p3

    move-object v6, v0

    move-object v7, v6

    move-object v9, v7

    goto :goto_0

    .line 1121
    :cond_1
    nop

    .line 1122
    move-object v9, p3

    move-object v6, v0

    move-object v7, v6

    move-object v8, v7

    goto :goto_0

    .line 1115
    :cond_2
    nop

    .line 1116
    move-object v7, p3

    move-object v6, v0

    move-object v8, v6

    move-object v9, v8

    goto :goto_0

    .line 1112
    :cond_3
    nop

    .line 1113
    move-object v6, p3

    move-object v7, v0

    move-object v8, v7

    move-object v9, v8

    .line 1127
    :goto_0
    const/16 v2, 0xa2

    iget-object p2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 1128
    invoke-virtual {p2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    const/4 v4, 0x2

    iget-object p2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 1130
    invoke-virtual {p2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v10

    .line 1127
    invoke-static/range {v2 .. v10}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1131
    return-void
.end method

.method private logMetadataChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1134
    invoke-static {}, Lcom/android/bluetooth/Utils;->getLocalTimeString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    .line 1136
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataChangedLog:Lcom/google/common/collect/EvictingQueue;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/common/collect/EvictingQueue;->add(Ljava/lang/Object;)Z

    .line 1137
    return-void
.end method

.method private resetActiveA2dpDevice()V
    .locals 5

    .line 656
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 657
    :try_start_0
    const-string v1, "BluetoothDatabase"

    const-string v2, "resetActiveA2dpDevice()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 659
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 660
    iget-boolean v3, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->is_active_a2dp_device:Z

    if-eqz v3, :cond_0

    .line 661
    const-string v3, "BluetoothDatabase"

    const-string v4, "resetActiveA2dpDevice"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->is_active_a2dp_device:Z

    .line 663
    invoke-direct {p0, v2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 665
    :cond_0
    goto :goto_0

    .line 666
    :cond_1
    monitor-exit v0

    .line 667
    return-void

    .line 666
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V
    .locals 3

    .line 1074
    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothDatabase"

    if-nez v0, :cond_0

    .line 1075
    const-string p1, "updateDatabase: address is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    return-void

    .line 1079
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz v0, :cond_1

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDatabase "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1085
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1086
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1087
    return-void
.end method


# virtual methods
.method bondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 204
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 205
    const/16 v1, 0xa

    if-eq p2, v1, :cond_1

    .line 206
    iget-object p2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 207
    monitor-exit v0

    return-void

    .line 209
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->createMetadata(Ljava/lang/String;Z)V

    goto :goto_0

    .line 211
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 212
    if-eqz p2, :cond_2

    .line 213
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->deleteDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 217
    :cond_2
    :goto_0
    monitor-exit v0

    .line 218
    return-void

    .line 217
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method cacheMetadata(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/btservice/storage/Metadata;",
            ">;)V"
        }
    .end annotation

    .line 856
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 857
    :try_start_0
    const-string v1, "BluetoothDatabase"

    const-string v2, "cacheMetadata"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    .line 861
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->isMigrated(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 863
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMigratedFromSettingsGlobal:Z

    .line 864
    monitor-exit v0

    return-void

    .line 866
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMigratedFromSettingsGlobal:Z

    .line 867
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 868
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 870
    sget-boolean v3, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz v3, :cond_1

    .line 871
    const-string v3, "BluetoothDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cacheMetadata: found device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_1
    iget-object v3, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    goto :goto_0

    .line 876
    :cond_2
    const-string p1, "BluetoothDatabase"

    const-string v1, "cacheMetadata: Database is ready"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    monitor-exit v0

    .line 878
    return-void

    .line 877
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public cleanup()V
    .locals 2

    .line 815
    invoke-virtual {p0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->removeUnusedMetadata()V

    .line 816
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 817
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 819
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 822
    return-void
.end method

.method createMetadata(Ljava/lang/String;Z)V
    .locals 1

    .line 825
    new-instance v0, Lcom/android/bluetooth/btservice/storage/Metadata;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/btservice/storage/Metadata;-><init>(Ljava/lang/String;)V

    .line 826
    iput-boolean p2, v0, Lcom/android/bluetooth/btservice/storage/Metadata;->is_active_a2dp_device:Z

    .line 827
    iget-object p2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 828
    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 829
    const-string p2, "Metadata created"

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->logMetadataChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    return-void
.end method

.method deleteDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V
    .locals 2

    .line 1091
    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1092
    if-nez v0, :cond_0

    .line 1093
    const-string p1, "BluetoothDatabase"

    const-string v0, "deleteDatabase: address is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    return-void

    .line 1096
    :cond_0
    const-string v1, "Metadata deleted"

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->logMetadataChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1098
    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1099
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1100
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    .line 1145
    const-string v0, "\nBluetoothDatabase:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1146
    const-string v0, "  Metadata Changes:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1147
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataChangedLog:Lcom/google/common/collect/EvictingQueue;

    invoke-virtual {v0}, Lcom/google/common/collect/EvictingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "    "

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1148
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1149
    goto :goto_0

    .line 1150
    :cond_0
    const-string v0, "\nMetadata:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1152
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "LocalStorage"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1154
    goto :goto_1

    .line 1156
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    goto :goto_1

    .line 1158
    :cond_2
    return-void
.end method

.method public factoryReset()V
    .locals 2

    .line 806
    const-string v0, "BluetoothDatabase"

    const-string v1, "factoryReset"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 808
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 809
    return-void
.end method

.method public getA2dpOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5

    .line 544
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 545
    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 546
    :try_start_0
    const-string p1, "BluetoothDatabase"

    const-string v2, "getA2dpOptionalCodecEnabled: device is null"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    monitor-exit v0

    return v1

    .line 550
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 552
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 554
    sget-boolean v2, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz v2, :cond_1

    .line 555
    const-string v2, "BluetoothDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getA2dpOptionalCodecEnabled: device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in cache"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_1
    monitor-exit v0

    return v1

    .line 562
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 563
    iget p1, p1, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpOptionalCodecsEnabled:I

    monitor-exit v0

    return p1

    .line 564
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getA2dpSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5

    .line 468
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 469
    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 470
    :try_start_0
    const-string p1, "BluetoothDatabase"

    const-string v2, "setA2dpOptionalCodec: device is null"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    monitor-exit v0

    return v1

    .line 474
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 476
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 478
    sget-boolean v2, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz v2, :cond_1

    .line 479
    const-string v2, "BluetoothDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getA2dpOptionalCodec: device "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in cache"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_1
    monitor-exit v0

    return v1

    .line 486
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 487
    iget p1, p1, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpSupportsOptionalCodecs:I

    monitor-exit v0

    return p1

    .line 488
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCustomMeta(Landroid/bluetooth/BluetoothDevice;I)[B
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 286
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 287
    :try_start_0
    const-string p1, "BluetoothDatabase"

    const-string p2, "getCustomMeta: device is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v0

    return-object v1

    .line 290
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->isValidMetaKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    const-string p1, "BluetoothDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomMeta: meta key invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    monitor-exit v0

    return-object v1

    .line 295
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 297
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 299
    sget-boolean p2, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz p2, :cond_2

    .line 300
    const-string p2, "BluetoothDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomMeta: device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in cache"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_2
    monitor-exit v0

    return-object v1

    .line 306
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 307
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/storage/Metadata;->getCustomizedMeta(I)[B

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 308
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getDatabaseAbsolutePath()Ljava/lang/String;
    .locals 2

    .line 798
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const-string v1, "bluetooth_db"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 798
    return-object v0
.end method

.method public getHandlerLooper()Landroid/os/Looper;
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 760
    const/4 v0, 0x0

    return-object v0

    .line 762
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getMostRecentlyConnectedA2dpDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 6

    .line 704
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 706
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 707
    iget-boolean v3, v2, Lcom/android/bluetooth/btservice/storage/Metadata;->is_active_a2dp_device:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 709
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 710
    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v4

    .line 709
    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    .line 711
    :catch_0
    move-exception v3

    .line 713
    sget-boolean v3, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz v3, :cond_0

    .line 714
    const-string v3, "BluetoothDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMostRecentlyConnectedA2dpDevice: Invalid address for device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 714
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    goto :goto_0

    .line 721
    :cond_1
    monitor-exit v0

    .line 722
    const/4 v0, 0x0

    return-object v0

    .line 721
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getMostRecentlyConnectedDevices()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 678
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v1

    .line 679
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 680
    sget-object v3, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$r_7GExCVut1JQUvZHgpYBa0J7oc;->INSTANCE:Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$r_7GExCVut1JQUvZHgpYBa0J7oc;

    invoke-interface {v2, v3}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 681
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/btservice/storage/Metadata;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 684
    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 683
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    goto :goto_1

    .line 685
    :catch_0
    move-exception v4

    .line 687
    :try_start_2
    sget-boolean v4, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz v4, :cond_0

    .line 688
    const-string v4, "BluetoothDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBondedDevicesOrdered: Invalid address for device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    invoke-virtual {v3}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 688
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_0
    :goto_1
    goto :goto_0

    .line 694
    :cond_1
    monitor-exit v1

    .line 695
    return-object v0

    .line 694
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 386
    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 387
    :try_start_0
    const-string p1, "BluetoothDatabase"

    const-string p2, "getProfileConnectionPolicy: device is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    monitor-exit v0

    return v1

    .line 391
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 393
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 395
    sget-boolean p2, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz p2, :cond_1

    .line 396
    const-string p2, "BluetoothDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProfileConnectionPolicy: device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not in cache"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1
    monitor-exit v0

    return v1

    .line 402
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 403
    invoke-virtual {v1, p2}, Lcom/android/bluetooth/btservice/storage/Metadata;->getProfileConnectionPolicy(I)I

    move-result v1

    .line 406
    sget-boolean v2, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz v2, :cond_3

    .line 407
    const-string v2, "BluetoothDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getProfileConnectionPolicy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", profile="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", connectionPolicy = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_3
    monitor-exit v0

    return v1

    .line 412
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method isMigrated(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/btservice/storage/Metadata;",
            ">;)Z"
        }
    .end annotation

    .line 881
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 882
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/storage/Metadata;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 883
    const-string v2, "LocalStorage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/bluetooth/btservice/storage/Metadata;->migrated:Z

    if-eqz v0, :cond_0

    .line 884
    const/4 p1, 0x1

    return p1

    .line 886
    :cond_0
    goto :goto_0

    .line 887
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method isValidMetaKey(I)Z
    .locals 2

    .line 221
    packed-switch p1, :pswitch_data_0

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid metadata key "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BluetoothDatabase"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/4 p1, 0x0

    return p1

    .line 239
    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$removeUnusedMetadata$2$DatabaseManager([Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Lcom/android/bluetooth/btservice/storage/Metadata;)V
    .locals 2

    .line 837
    const-string v0, "LocalStorage"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 838
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$8ZM9KhytIScv7B0DkWUR4N7efHg;

    invoke-direct {v0, p2}, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$8ZM9KhytIScv7B0DkWUR4N7efHg;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 840
    invoke-virtual {p3}, Lcom/android/bluetooth/btservice/storage/Metadata;->getChangedCustomizedMeta()Ljava/util/List;

    move-result-object p1

    .line 841
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 842
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Lcom/android/bluetooth/btservice/AdapterService;->metadataChanged(Ljava/lang/String;I[B)V

    .line 843
    goto :goto_0

    .line 845
    :cond_0
    sget-boolean p1, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz p1, :cond_1

    .line 846
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "remove unpaired device from database "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "BluetoothDatabase"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/btservice/storage/Metadata;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->deleteDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 851
    :cond_2
    return-void
.end method

.method migrateSettingsGlobal()V
    .locals 21

    .line 891
    move-object/from16 v0, p0

    const-string v1, "BluetoothDatabase"

    const-string v2, "migrateSettingGlobal"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v1, v0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 894
    iget-object v2, v0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 896
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v6, v1, v4

    .line 897
    nop

    .line 898
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyA2dpSinkPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 897
    const/4 v8, -0x1

    invoke-static {v2, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 900
    nop

    .line 901
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyA2dpSrcPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 900
    invoke-static {v2, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 903
    nop

    .line 904
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyHearingAidPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 903
    invoke-static {v2, v10, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 906
    nop

    .line 907
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 906
    invoke-static {v2, v11, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 909
    nop

    .line 910
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyHeadsetPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 909
    invoke-static {v2, v12, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 912
    nop

    .line 913
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyHidHostPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 912
    invoke-static {v2, v13, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 915
    nop

    .line 916
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyMapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 915
    invoke-static {v2, v14, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 918
    nop

    .line 919
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyMapClientPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 918
    invoke-static {v2, v15, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 921
    nop

    .line 922
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyPanPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 921
    invoke-static {v2, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 924
    nop

    .line 925
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyPbapClientPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 924
    invoke-static {v2, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 927
    nop

    .line 928
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    move/from16 v18, v3

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyPbapClientPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 927
    invoke-static {v2, v3, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 930
    nop

    .line 931
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    move/from16 v19, v4

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacySapPriorityKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 930
    invoke-static {v2, v4, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 933
    nop

    .line 934
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyA2dpSupportsOptionalCodecsKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {v2, v0, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 936
    nop

    .line 937
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v16

    move/from16 v20, v0

    invoke-static/range {v16 .. v16}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getLegacyA2dpOptionalCodecsEnabledKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 936
    invoke-static {v2, v0, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 940
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 941
    new-instance v8, Lcom/android/bluetooth/btservice/storage/Metadata;

    invoke-direct {v8, v6}, Lcom/android/bluetooth/btservice/storage/Metadata;-><init>(Ljava/lang/String;)V

    .line 942
    move-object/from16 v16, v2

    const/4 v2, 0x2

    invoke-virtual {v8, v2, v7}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 943
    const/16 v2, 0xb

    invoke-virtual {v8, v2, v9}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 944
    const/4 v2, 0x1

    invoke-virtual {v8, v2, v11}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 945
    const/16 v2, 0x10

    invoke-virtual {v8, v2, v12}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 947
    const/4 v2, 0x4

    invoke-virtual {v8, v2, v13}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 948
    const/4 v2, 0x5

    invoke-virtual {v8, v2, v5}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 949
    const/4 v2, 0x6

    invoke-virtual {v8, v2, v1}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 950
    const/16 v1, 0x11

    invoke-virtual {v8, v1, v3}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 952
    const/16 v1, 0x9

    invoke-virtual {v8, v1, v14}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 953
    const/16 v1, 0x12

    invoke-virtual {v8, v1, v15}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 954
    const/16 v1, 0xa

    invoke-virtual {v8, v1, v4}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 955
    const/16 v1, 0x15

    invoke-virtual {v8, v1, v10}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 957
    move/from16 v1, v20

    iput v1, v8, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpSupportsOptionalCodecs:I

    .line 958
    iput v0, v8, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpOptionalCodecsEnabled:I

    .line 959
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    invoke-direct {v0, v8}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 896
    add-int/lit8 v4, v19, 0x1

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    move/from16 v3, v18

    goto/16 :goto_0

    .line 964
    :cond_0
    new-instance v1, Lcom/android/bluetooth/btservice/storage/Metadata;

    const-string v2, "LocalStorage"

    invoke-direct {v1, v2}, Lcom/android/bluetooth/btservice/storage/Metadata;-><init>(Ljava/lang/String;)V

    .line 965
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->migrated:Z

    .line 966
    iget-object v3, v0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    invoke-direct {v0, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 970
    invoke-direct/range {p0 .. p0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->loadDatabase()V

    .line 972
    return-void
.end method

.method removeUnusedMetadata()V
    .locals 4

    .line 834
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 835
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v1

    .line 836
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    new-instance v3, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$UpK2wxpBJBHcTVRdyEOLDS1f2-g;

    invoke-direct {v3, p0, v0}, Lcom/android/bluetooth/btservice/storage/-$$Lambda$DatabaseManager$UpK2wxpBJBHcTVRdyEOLDS1f2-g;-><init>(Lcom/android/bluetooth/btservice/storage/DatabaseManager;[Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v2, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 852
    monitor-exit v1

    .line 853
    return-void

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setA2dpOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5

    .line 502
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 503
    if-nez p1, :cond_0

    .line 504
    :try_start_0
    const-string p1, "BluetoothDatabase"

    const-string p2, "setA2dpOptionalCodecEnabled: device is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    monitor-exit v0

    return-void

    .line 529
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 507
    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    .line 510
    const-string p1, "BluetoothDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setA2dpOptionalCodecsEnabled: invalid value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    monitor-exit v0

    return-void

    .line 514
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 516
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 517
    monitor-exit v0

    return-void

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 520
    iget v2, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpOptionalCodecsEnabled:I

    .line 521
    if-ne v2, p2, :cond_3

    .line 522
    monitor-exit v0

    return-void

    .line 524
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enable optional codec changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->logMetadataChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iput p2, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpOptionalCodecsEnabled:I

    .line 528
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 529
    monitor-exit v0

    .line 530
    return-void

    .line 529
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setA2dpSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5

    .line 426
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 427
    if-nez p1, :cond_0

    .line 428
    :try_start_0
    const-string p1, "BluetoothDatabase"

    const-string p2, "setA2dpOptionalCodec: device is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    monitor-exit v0

    return-void

    .line 453
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 431
    :cond_0
    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    .line 434
    const-string p1, "BluetoothDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setA2dpSupportsOptionalCodecs: invalid value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    monitor-exit v0

    return-void

    .line 438
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 440
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 441
    monitor-exit v0

    return-void

    .line 443
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 444
    iget v2, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpSupportsOptionalCodecs:I

    .line 445
    if-ne v2, p2, :cond_3

    .line 446
    monitor-exit v0

    return-void

    .line 448
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supports optional codec changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->logMetadataChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    iput p2, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->a2dpSupportsOptionalCodecs:I

    .line 452
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 453
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setConnection(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 5

    .line 573
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 575
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz v1, :cond_0

    .line 576
    const-string v1, "BluetoothDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setConnection: device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and isA2dpDevice="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    if-nez p1, :cond_1

    .line 580
    const-string p1, "BluetoothDatabase"

    const-string p2, "setConnection: device is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    monitor-exit v0

    return-void

    .line 584
    :cond_1
    if-eqz p2, :cond_2

    .line 585
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->resetActiveA2dpDevice()V

    .line 588
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 590
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 592
    sget-boolean v2, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz v2, :cond_3

    .line 593
    const-string v2, "BluetoothDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setConnection: Creating new metadata entry for device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    :cond_3
    invoke-virtual {p0, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->createMetadata(Ljava/lang/String;Z)V

    .line 597
    monitor-exit v0

    return-void

    .line 600
    :cond_4
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 601
    sget v2, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->sCurrentConnectionNumber:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/android/bluetooth/btservice/storage/MetadataDatabase;->sCurrentConnectionNumber:I

    int-to-long v2, v2

    iput-wide v2, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->last_active_time:J

    .line 604
    if-eqz p2, :cond_5

    .line 605
    const/4 p2, 0x1

    iput-boolean p2, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->is_active_a2dp_device:Z

    .line 609
    :cond_5
    sget-boolean p2, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz p2, :cond_6

    .line 610
    const-string p2, "BluetoothDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating last connected time for device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->last_active_time:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 616
    monitor-exit v0

    .line 617
    return-void

    .line 616
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setCustomMeta(Landroid/bluetooth/BluetoothDevice;I[B)Z
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 251
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 252
    :try_start_0
    const-string p1, "BluetoothDatabase"

    const-string p2, "setCustomMeta: device is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    monitor-exit v0

    return v1

    .line 255
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->isValidMetaKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    const-string p1, "BluetoothDatabase"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCustomMeta: meta key invalid "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    monitor-exit v0

    return v1

    .line 260
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 261
    iget-object v3, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 262
    invoke-virtual {p0, v2, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->createMetadata(Ljava/lang/String;Z)V

    .line 264
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 265
    invoke-virtual {v1, p2}, Lcom/android/bluetooth/btservice/storage/Metadata;->getCustomizedMeta(I)[B

    move-result-object v3

    .line 266
    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-static {v3, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    const-string p1, "BluetoothDatabase"

    const-string p2, "setCustomMeta: metadata not changed."

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    monitor-exit v0

    return v4

    .line 270
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->logManufacturerInfo(Landroid/bluetooth/BluetoothDevice;I[B)V

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCustomMeta key="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->logMetadataChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v1, p2, p3}, Lcom/android/bluetooth/btservice/storage/Metadata;->setCustomizedMeta(I[B)V

    .line 274
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 275
    iget-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p1, v2, p2, p3}, Lcom/android/bluetooth/btservice/AdapterService;->metadataChanged(Ljava/lang/String;I[B)V

    .line 276
    monitor-exit v0

    return v4

    .line 277
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDisconnection(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 625
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 626
    if-nez p1, :cond_0

    .line 627
    :try_start_0
    const-string p1, "BluetoothDatabase"

    const-string v1, "setDisconnection: device is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    monitor-exit v0

    return-void

    .line 631
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 633
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 634
    monitor-exit v0

    return-void

    .line 637
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 638
    iget-boolean v2, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->is_active_a2dp_device:Z

    if-eqz v2, :cond_3

    .line 639
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/bluetooth/btservice/storage/Metadata;->is_active_a2dp_device:Z

    .line 641
    sget-boolean v2, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->VDBG:Z

    if-eqz v2, :cond_2

    .line 642
    const-string v2, "BluetoothDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDisconnection: Updating is_active_device to false for device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 649
    :cond_3
    monitor-exit v0

    .line 650
    return-void

    .line 649
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 6

    .line 330
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    monitor-enter v0

    .line 331
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 332
    :try_start_0
    const-string p1, "BluetoothDatabase"

    const-string p2, "setProfileConnectionPolicy: device is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    monitor-exit v0

    return v1

    .line 364
    :catchall_0
    move-exception p1

    goto/16 :goto_0

    .line 336
    :cond_0
    const/4 v2, -0x1

    if-eq p3, v2, :cond_1

    if-eqz p3, :cond_1

    const/16 v3, 0x64

    if-eq p3, v3, :cond_1

    .line 339
    const-string p1, "BluetoothDatabase"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfileConnectionPolicy: invalid connection policy "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    monitor-exit v0

    return v1

    .line 344
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    .line 345
    iget-object v3, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_3

    .line 346
    if-ne p3, v2, :cond_2

    .line 347
    monitor-exit v0

    return v4

    .line 349
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->createMetadata(Ljava/lang/String;Z)V

    .line 351
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mMetadataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/btservice/storage/Metadata;

    .line 352
    invoke-virtual {v1, p2}, Lcom/android/bluetooth/btservice/storage/Metadata;->getProfileConnectionPolicy(I)I

    move-result v2

    .line 353
    if-ne v2, p3, :cond_4

    .line 354
    const-string p1, "BluetoothDatabase"

    const-string p2, "setProfileConnectionPolicy connection policy not changed."

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    monitor-exit v0

    return v4

    .line 357
    :cond_4
    invoke-static {p2}, Landroid/bluetooth/BluetoothProfile;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    .line 358
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " connection policy changed: : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->logMetadataChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-virtual {v1, p2, p3}, Lcom/android/bluetooth/btservice/storage/Metadata;->setProfileConnectionPolicy(II)V

    .line 362
    invoke-direct {p0, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->updateDatabase(Lcom/android/bluetooth/btservice/storage/Metadata;)V

    .line 363
    monitor-exit v0

    return v4

    .line 364
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public start(Lcom/android/bluetooth/btservice/storage/MetadataDatabase;)V
    .locals 2

    .line 771
    const-string v0, "BluetoothDatabase"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v1, :cond_0

    .line 773
    const-string p1, "stat failed, mAdapterService is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    return-void

    .line 777
    :cond_0
    if-nez p1, :cond_1

    .line 778
    const-string p1, "stat failed, database is null."

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    return-void

    .line 782
    :cond_1
    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mDatabase:Lcom/android/bluetooth/btservice/storage/MetadataDatabase;

    .line 784
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "BluetoothDatabaseManager"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 785
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 786
    new-instance p1, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;

    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager$DatabaseHandler;-><init>(Lcom/android/bluetooth/btservice/storage/DatabaseManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mHandler:Landroid/os/Handler;

    .line 788
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 789
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 790
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 793
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->loadDatabase()V

    .line 794
    return-void
.end method
