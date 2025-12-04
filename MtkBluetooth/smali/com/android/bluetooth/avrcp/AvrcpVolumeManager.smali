.class Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;
.super Landroid/media/AudioDeviceCallback;
.source "AvrcpVolumeManager.java"


# static fields
.field private static final AVRCP_MAX_VOL:I = 0x7f

.field public static final DEBUG:Z

.field private static final STREAM_MUSIC:I = 0x3

.field public static final TAG:Ljava/lang/String; = "AvrcpVolumeManager"

.field private static final VOLUME_BLACKLIST:Ljava/lang/String; = "absolute_volume_blacklist"

.field private static final VOLUME_CHANGE_LOGGER_SIZE:I = 0x1e

.field private static final VOLUME_CHANGE_LOG_TITLE:Ljava/lang/String; = "Volume Events"

.field private static final VOLUME_MAP:Ljava/lang/String; = "bluetooth_volume_map"

.field private static sDeviceMaxVolume:I

.field private static sNewDeviceVolume:I


# instance fields
.field mAbsoluteVolumeSupported:Z

.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field mDeviceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mNativeInterface:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

.field private final mVolumeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

.field mVolumeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    nop

    .line 39
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->DEBUG:Z

    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sDeviceMaxVolume:I

    .line 49
    sput v0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sNewDeviceVolume:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;)V
    .locals 4

    .line 99
    invoke-direct {p0}, Landroid/media/AudioDeviceCallback;-><init>()V

    .line 50
    new-instance v0, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    const/16 v1, 0x1e

    const-string v2, "Volume Events"

    invoke-direct {v0, v1, v2}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeMap:Ljava/util/HashMap;

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mAbsoluteVolumeSupported:Z

    .line 100
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    .line 102
    iput-object p3, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mNativeInterface:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    .line 103
    const/4 p1, 0x3

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    sput p1, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sDeviceMaxVolume:I

    .line 104
    div-int/lit8 p1, p1, 0x2

    sput p1, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sNewDeviceVolume:I

    .line 106
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p0, v0}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 111
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->getVolumeMap()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p1

    .line 112
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->getVolumeMap()Landroid/content/SharedPreferences;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    .line 113
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    .line 116
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 118
    instance-of v2, p3, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeMap:Ljava/util/HashMap;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 121
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from the volume map"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V

    .line 122
    invoke-interface {p2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 124
    :goto_1
    goto :goto_0

    .line 125
    :cond_1
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 126
    return-void
.end method

.method static avrcpToSystemVolume(I)I
    .locals 4

    .line 63
    int-to-double v0, p0

    sget p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sDeviceMaxVolume:I

    int-to-double v2, p0

    mul-double/2addr v0, v2

    const-wide v2, 0x405fc00000000000L    # 127.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method static d(Ljava/lang/String;)V
    .locals 1

    .line 333
    sget-boolean v0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 334
    const-string v0, "AvrcpVolumeManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    return-void
.end method

.method private getVolumeMap()Landroid/content/SharedPreferences;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_volume_map"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private switchVolumeDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    .line 78
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 80
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchVolumeDevice: Set Absolute volume support to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/media/AudioManager;->avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V

    .line 84
    sget v1, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sNewDeviceVolume:I

    invoke-virtual {p0, p1, v1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->getVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v1

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchVolumeDevice: savedVolume="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-static {v1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->systemToAvrcpVolume(I)I

    move-result v1

    .line 91
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    const-string v3, "AvrcpVolumeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "switchVolumeDevice: Updating device volume: avrcpVolume="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mNativeInterface:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v1}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sendVolumeChanged(Ljava/lang/String;I)V

    .line 95
    :cond_0
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static systemToAvrcpVolume(I)I
    .locals 4

    .line 67
    int-to-double v0, p0

    const-wide v2, 0x405fc00000000000L    # 127.0

    mul-double/2addr v0, v2

    sget p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sDeviceMaxVolume:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p0, v0

    .line 69
    const/16 v0, 0x7f

    if-le p0, v0, :cond_0

    move p0, v0

    .line 70
    :cond_0
    return p0
.end method


# virtual methods
.method declared-synchronized deviceConnected(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    monitor-enter p0

    .line 264
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceConnected: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " absoluteVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 266
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 271
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->switchVolumeDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 273
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 274
    monitor-exit p0

    return-void

    .line 273
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 263
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized deviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    monitor-enter p0

    .line 288
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceDisconnected: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V

    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 290
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    monitor-exit p0

    return-void

    .line 291
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 287
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 12

    .line 295
    const-string v0, "AvrcpVolumeManager:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Current System Volume: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    const-string v0, "  Device Volume Memory Map:\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const-string v4, "Device Address"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string v4, "Device Name"

    const/4 v6, 0x1

    aput-object v4, v2, v6

    const-string v4, "Vol"

    const/4 v7, 0x2

    aput-object v4, v2, v7

    const-string v4, "AbsVol"

    aput-object v4, v2, v3

    const-string v4, "    %-17s : %-14s : %3s : %s\n"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->getVolumeMap()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 302
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 303
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    .line 304
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 305
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    .line 307
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    .line 308
    if-nez v9, :cond_0

    .line 309
    const-string v9, ""

    goto :goto_1

    .line 310
    :cond_0
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    const/16 v11, 0xe

    if-le v10, v11, :cond_1

    .line 311
    const/16 v10, 0xb

    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "..."

    invoke-virtual {v9, v10}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 314
    :cond_1
    :goto_1
    nop

    .line 315
    iget-object v10, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 316
    iget-object v10, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v10, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    .line 315
    :cond_2
    const-string v10, "NotConnected"

    .line 319
    :goto_2
    instance-of v11, v8, Ljava/lang/Integer;

    if-eqz v11, :cond_3

    .line 320
    new-array v11, v0, [Ljava/lang/Object;

    .line 321
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v5

    aput-object v9, v11, v6

    check-cast v8, Ljava/lang/Integer;

    aput-object v8, v11, v7

    aput-object v10, v11, v3

    .line 320
    const-string v4, "    %-17s : %-14s : %3d : %s\n"

    invoke-static {v4, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :cond_3
    goto :goto_0

    .line 325
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    iget-object v2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    invoke-virtual {v2, v0}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->dump(Ljava/lang/StringBuilder;)V

    .line 328
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(?m)^"

    const-string v4, "  "

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    return-void
.end method

.method getAbsoluteVolumeSupported(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 223
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getNewDeviceVolume()I
    .locals 1

    .line 172
    sget v0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sNewDeviceVolume:I

    return v0
.end method

.method declared-synchronized getVolume(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 2

    monitor-enter p0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVolume: Couldn\'t find volume preference for device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return p2

    .line 167
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVolume: Returning volume "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 161
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onAudioDevicesAdded([Landroid/media/AudioDeviceInfo;)V
    .locals 5

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_0

    .line 229
    const-string p1, "onAudioDevicesAdded: Not expecting device changed"

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 230
    monitor-exit p0

    return-void

    .line 233
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
    nop

    .line 236
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAudioDevicesAdded: size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V

    .line 237
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 238
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAudioDevicesAdded: address="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p1, v2

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V

    .line 239
    aget-object v3, p1, v2

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    aget-object v3, p1, v2

    .line 240
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    nop

    .line 242
    const/4 v1, 0x1

    goto :goto_1

    .line 237
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 247
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Didn\'t find deferred device in list: device="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V

    .line 248
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 254
    :cond_3
    :try_start_3
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mDeviceMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 255
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "volumeDeviceSwitched: Device isn\'t connected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V

    .line 256
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 259
    :cond_4
    :try_start_4
    iget-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->switchVolumeDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 260
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 261
    monitor-exit p0

    return-void

    .line 260
    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 227
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized removeStoredVolumeForDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    monitor-enter p0

    .line 148
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 149
    monitor-exit p0

    return-void

    .line 151
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->getVolumeMap()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    sget-boolean v2, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->DEBUG:Z

    const-string v3, "AvrcpVolumeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoveStoredVolume: Remove stored stream volume level for device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logd(ZLjava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 158
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method sendVolumeChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5

    .line 203
    int-to-double v0, p2

    const-wide v2, 0x405fc00000000000L    # 127.0

    mul-double/2addr v0, v2

    sget v2, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sDeviceMaxVolume:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    .line 204
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 205
    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    move v0, v1

    .line 206
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    sget-boolean v2, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->DEBUG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendVolumeChanged: device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " avrcpVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " deviceVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " sDeviceMaxVolume="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sDeviceMaxVolume:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "AvrcpVolumeManager"

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logd(ZLjava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mNativeInterface:Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lcom/android/bluetooth/avrcp/AvrcpNativeInterface;->sendVolumeChanged(Ljava/lang/String;I)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->storeVolumeForDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 213
    return-void
.end method

.method setVolume(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 5

    .line 176
    nop

    .line 177
    int-to-double v0, p2

    sget v2, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sDeviceMaxVolume:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    const-wide v2, 0x405fc00000000000L    # 127.0

    div-double/2addr v0, v2

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    .line 179
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    sget-boolean v2, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->DEBUG:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVolume: device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " avrcpVolume="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " deviceVolume="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " sDeviceMaxVolume="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->sDeviceMaxVolume:I

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "AvrcpVolumeManager"

    invoke-virtual {v1, v2, v3, p2}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logd(ZLjava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p2

    .line 187
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 188
    invoke-virtual {p2}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result p2

    goto :goto_0

    .line 187
    :cond_0
    move p2, v1

    .line 190
    :goto_0
    const/16 v2, 0x40

    const/4 v4, 0x3

    if-eqz p2, :cond_1

    .line 191
    const-string p2, "setVolume: SCO on, not show volume UI"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p2, v4, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_1

    .line 195
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    .line 196
    const/4 v3, -0x1

    invoke-virtual {p0, p1, v3}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->getVolume(Landroid/bluetooth/BluetoothDevice;I)I

    move-result v3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    or-int/2addr v1, v2

    .line 195
    invoke-virtual {p2, v4, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 199
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->storeVolumeForDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 200
    return-void
.end method

.method declared-synchronized storeVolumeForDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 144
    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->storeVolumeForDevice(Landroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized storeVolumeForDevice(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6

    monitor-enter p0

    .line 129
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 130
    monitor-exit p0

    return-void

    .line 132
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->getVolumeMap()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeEventLogger:Lcom/android/bluetooth/avrcp/AvrcpEventLogger;

    sget-boolean v2, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->DEBUG:Z

    const-string v3, "AvrcpVolumeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeVolume: Storing stream volume level for device "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/bluetooth/avrcp/AvrcpEventLogger;->logd(ZLjava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mVolumeMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 140
    monitor-exit p0

    return-void

    .line 128
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized volumeDeviceSwitched(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    monitor-enter p0

    .line 277
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "volumeDeviceSwitched: mCurrentDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->d(Ljava/lang/String;)V

    .line 279
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 280
    monitor-exit p0

    return-void

    .line 284
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/AvrcpVolumeManager;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 276
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
