.class public Lcom/android/bluetooth/a2dp/A2dpService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "A2dpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;,
        Lcom/android/bluetooth/a2dp/A2dpService$ConnectionStateChangedReceiver;,
        Lcom/android/bluetooth/a2dp/A2dpService$BondStateChangedReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MAX_A2DP_STATE_MACHINES:I = 0x32

.field private static final TAG:Ljava/lang/String; = "A2dpService"

.field private static sA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;


# instance fields
.field private mA2dpCodecConfig:Lcom/android/bluetooth/a2dp/A2dpCodecConfig;

.field mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

.field mA2dpOffloadEnabled:Z

.field private mActiveDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mActiveSwitchingGuard:Ljava/lang/Object;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBondStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

.field private mMaxConnectedAudioDevices:I

.field private mStarted:Z

.field private final mStateMachines:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/a2dp/A2dpStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachinesThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    nop

    .line 62
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    .line 61
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 71
    new-instance v0, Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    .line 78
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveSwitchingGuard:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mMaxConnectedAudioDevices:I

    .line 89
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpOffloadEnabled:Z

    .line 90
    iput-boolean v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStarted:Z

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/a2dp/A2dpService;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpService;->connectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/a2dp/A2dpService;)Z
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method private broadcastCodecConfig(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;)V
    .locals 2

    .line 1093
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastCodecConfig("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1097
    const-string v1, "android.bluetooth.extra.CODEC_STATUS"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1098
    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1099
    const/high16 p1, 0x5000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1101
    const-string p1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method private connectionAllowedCheckMaxDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 8

    .line 363
    nop

    .line 365
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 367
    invoke-virtual {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState()I

    move-result v6

    if-eq v6, v5, :cond_0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 370
    :cond_0
    invoke-virtual {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 371
    monitor-exit v0

    return v5

    .line 373
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 374
    nop

    .line 378
    :goto_1
    goto :goto_0

    .line 379
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    iget p1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mMaxConnectedAudioDevices:I

    if-ge v3, p1, :cond_3

    move v2, v5

    :cond_3
    return v2

    .line 379
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private connectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3

    .line 1225
    if-eqz p1, :cond_6

    if-ne p2, p3, :cond_0

    goto :goto_0

    .line 1228
    :cond_0
    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    .line 1229
    sget-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->A2DP:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 1232
    :cond_1
    if-ne p3, v0, :cond_2

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mMaxConnectedAudioDevices:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1233
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1236
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->isActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-ne p2, v0, :cond_3

    .line 1237
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1240
    :cond_3
    if-nez p3, :cond_5

    .line 1241
    iget-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 p3, 0xa

    if-ne p2, p3, :cond_5

    .line 1242
    iget-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {p2}, Lcom/android/bluetooth/btservice/ServiceFactory;->getAvrcpTargetService()Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1243
    iget-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {p2}, Lcom/android/bluetooth/btservice/ServiceFactory;->getAvrcpTargetService()Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->removeStoredVolumeForDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1245
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->removeStateMachine(Landroid/bluetooth/BluetoothDevice;)V

    .line 1248
    :cond_5
    return-void

    .line 1226
    :cond_6
    :goto_0
    return-void
.end method

.method public static declared-synchronized getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v0

    .line 240
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/a2dp/A2dpService;->sA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 241
    const-string v1, "A2dpService"

    const-string v3, "getA2dpService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    monitor-exit v0

    return-object v2

    .line 244
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/a2dp/A2dpService;->sA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/A2dpService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    const-string v1, "A2dpService"

    const-string v3, "getA2dpService(): service is not available"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    monitor-exit v0

    return-object v2

    .line 248
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/a2dp/A2dpService;->sA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 239
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .locals 4

    .line 1041
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1042
    const-string p1, "A2dpService"

    const-string v1, "getOrCreateStateMachine failed: device cannot be null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    return-object v0

    .line 1045
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 1046
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 1047
    if-eqz v2, :cond_1

    .line 1048
    monitor-exit v1

    return-object v2

    .line 1051
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_2

    .line 1052
    const-string p1, "A2dpService"

    const-string v2, "Maximum number of A2DP state machines reached: 50"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    monitor-exit v1

    return-object v0

    .line 1056
    :cond_2
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v0, :cond_3

    .line 1057
    const-string v0, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating a new state machine for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachinesThread:Landroid/os/HandlerThread;

    .line 1060
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 1059
    invoke-static {p1, p0, v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->make(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/a2dp/A2dpService;Lcom/android/bluetooth/a2dp/A2dpNativeInterface;Landroid/os/Looper;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    move-result-object v0

    .line 1061
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    monitor-exit v1

    return-object v0

    .line 1063
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 693
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 694
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 695
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 694
    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    .line 695
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeActiveDevice(Z)V
    .locals 8

    .line 504
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveSwitchingGuard:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    nop

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 507
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    .line 508
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 509
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 512
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->updateAndBroadcastActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 519
    if-nez p1, :cond_1

    .line 520
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    move v6, p1

    .line 522
    const-string p1, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeActiveDevice: suppressNoisyIntent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, -0x1

    invoke-virtual/range {v2 .. v7}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 527
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 529
    :try_start_5
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 530
    const-string v1, "A2dpService"

    const-string v2, "setActiveDevice(null): Cannot remove active device in native layer"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_2
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 534
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 535
    return-void

    .line 533
    :catchall_0
    move-exception v1

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 509
    :catchall_1
    move-exception p1

    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw p1

    .line 534
    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p1
.end method

.method private removeStateMachine(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 1152
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 1153
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 1154
    if-nez v1, :cond_0

    .line 1155
    const-string v1, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeStateMachine: device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have a state machine"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    monitor-exit v0

    return-void

    .line 1159
    :cond_0
    const-string v2, "A2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeStateMachine: removing state machine for device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->doQuit()V

    .line 1161
    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->cleanup()V

    .line 1162
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    monitor-exit v0

    .line 1164
    return-void

    .line 1163
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static declared-synchronized setA2dpService(Lcom/android/bluetooth/a2dp/A2dpService;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/a2dp/A2dpService;

    monitor-enter v0

    .line 252
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v1, :cond_0

    .line 253
    const-string v1, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setA2dpService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    sput-object p0, Lcom/android/bluetooth/a2dp/A2dpService;->sA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 256
    monitor-exit v0

    return-void

    .line 251
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private updateAndBroadcastActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 1070
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAndBroadcastActiveDevice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getAvrcpTargetService()Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getAvrcpTargetService()Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->volumeDeviceSwitched(Landroid/bluetooth/BluetoothDevice;)V

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 1079
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1080
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    const/16 v0, 0x97

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 1083
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 1084
    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 1082
    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/BluetoothStatsLog;->write(II[BI)V

    .line 1085
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1086
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1087
    const/high16 p1, 0x5000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1089
    const-string p1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1090
    return-void

    .line 1080
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method bondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 1129
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v0, :cond_0

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bond state changed for device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_0
    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    .line 1134
    return-void

    .line 1136
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter p2

    .line 1137
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 1138
    if-nez v0, :cond_2

    .line 1139
    monitor-exit p2

    return-void

    .line 1141
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1142
    monitor-exit p2

    return-void

    .line 1144
    :cond_3
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1145
    iget-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {p2}, Lcom/android/bluetooth/btservice/ServiceFactory;->getAvrcpTargetService()Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 1146
    iget-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {p2}, Lcom/android/bluetooth/btservice/ServiceFactory;->getAvrcpTargetService()Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->removeStoredVolumeForDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1148
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->removeStateMachine(Landroid/bluetooth/BluetoothDevice;)V

    .line 1149
    return-void

    .line 1144
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected cleanup()V
    .locals 2

    .line 236
    const-string v0, "A2dpService"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    return-void
.end method

.method public codecConfigUpdated(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;Z)V
    .locals 27

    .line 1009
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2

    .line 1010
    iget-object v3, v0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 1011
    iget-object v4, v0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 1012
    invoke-virtual {v4, v1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v6

    .line 1013
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result v7

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v8

    .line 1014
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v9

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v10

    .line 1015
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v11

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific2()J

    move-result-wide v13

    .line 1016
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific3()J

    move-result-wide v15

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific4()J

    move-result-wide v17

    .line 1011
    const/16 v4, 0x99

    move/from16 v19, v3

    invoke-static/range {v4 .. v19}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BIIIIIJJJJI)V

    .line 1017
    invoke-virtual/range {p2 .. p2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v15

    .line 1018
    array-length v13, v15

    const/4 v4, 0x0

    move v14, v4

    :goto_0
    if-ge v14, v13, :cond_0

    aget-object v4, v15, v14

    .line 1019
    const/16 v5, 0x9a

    iget-object v6, v0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 1020
    invoke-virtual {v6, v1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v7

    .line 1021
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result v8

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result v9

    .line 1022
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecConfig;->getBitsPerSample()I

    move-result v10

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothCodecConfig;->getChannelMode()I

    move-result v11

    .line 1023
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v16

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific2()J

    move-result-wide v18

    .line 1024
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific3()J

    move-result-wide v20

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific4()J

    move-result-wide v22

    .line 1019
    move v4, v5

    move-object v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move-wide/from16 v11, v16

    move/from16 v24, v13

    move/from16 v25, v14

    move-wide/from16 v13, v18

    move-object/from16 v26, v15

    move-wide/from16 v15, v20

    move-wide/from16 v17, v22

    move/from16 v19, v3

    invoke-static/range {v4 .. v19}, Lcom/android/bluetooth/BluetoothStatsLog;->write(I[BIIIIIJJJJI)V

    .line 1018
    add-int/lit8 v14, v25, 0x1

    move/from16 v13, v24

    move-object/from16 v15, v26

    goto :goto_0

    .line 1027
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/bluetooth/a2dp/A2dpService;->broadcastCodecConfig(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;)V

    .line 1028
    invoke-virtual/range {p0 .. p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1030
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1035
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/a2dp/A2dpService;->isActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p3, :cond_2

    .line 1036
    iget-object v0, v0, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 1038
    :cond_2
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7

    .line 259
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v0, :cond_0

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot connect to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : CONNECTION_POLICY_FORBIDDEN"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "A2dpService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return v1

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot connect to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : Remote does not have A2DP Sink UUID"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "A2dpService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v1

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 275
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connectionAllowedCheckMaxDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    .line 277
    iget v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mMaxConnectedAudioDevices:I

    if-ne v2, v3, :cond_5

    .line 278
    const/4 v2, 0x3

    new-array v4, v2, [I

    const/4 v5, 0x2

    aput v5, v4, v1

    aput v3, v4, v3

    aput v2, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v2

    .line 282
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 283
    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 284
    const-string v4, "A2dpService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Connecting to device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " : disconnect skipped"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    goto :goto_0

    .line 287
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 288
    goto :goto_0

    .line 289
    :cond_4
    goto :goto_1

    .line 290
    :cond_5
    const-string v2, "A2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : too many connected devices"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    monitor-exit v0

    return v1

    .line 294
    :cond_6
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    move-result-object v2

    .line 295
    if-nez v2, :cond_7

    .line 296
    const-string v2, "A2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot connect to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : no state machine"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    monitor-exit v0

    return v1

    .line 299
    :cond_7
    invoke-virtual {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(I)V

    .line 300
    monitor-exit v0

    return v3

    .line 301
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected create()V
    .locals 2

    .line 102
    const-string v0, "A2dpService"

    const-string v1, "create()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 878
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    const-string v1, "A2dpService"

    if-eqz v0, :cond_0

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableOptionalCodecs("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    :cond_0
    if-nez p1, :cond_1

    .line 883
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 885
    :cond_1
    if-nez p1, :cond_2

    .line 886
    const-string p1, "disableOptionalCodecs: Invalid device"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return-void

    .line 889
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 890
    const-string p1, "disableOptionalCodecs: No optional codecs"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    return-void

    .line 893
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0

    .line 894
    if-nez v0, :cond_4

    .line 895
    const-string p1, "disableOptionalCodecs: Codec status is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return-void

    .line 898
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpCodecConfig:Lcom/android/bluetooth/a2dp/A2dpCodecConfig;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 899
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 311
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v0, :cond_0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 317
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 318
    if-nez v1, :cond_1

    .line 319
    const-string v1, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored disconnect request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : no state machine"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 322
    :cond_1
    const/4 p1, 0x2

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(I)V

    .line 323
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 324
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 7

    .line 1483
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActiveDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMaxConnectedAudioDevices: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mMaxConnectedAudioDevices:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1486
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpCodecConfig:Lcom/android/bluetooth/a2dp/A2dpCodecConfig;

    if-eqz v0, :cond_1

    .line 1487
    const-string v0, "codecConfigPriorities:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1488
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpCodecConfig:Lcom/android/bluetooth/a2dp/A2dpCodecConfig;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->codecConfigPriorities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "  "

    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    .line 1489
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1490
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecPriority()I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1489
    invoke-static {p1, v4}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1488
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1492
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mA2dpOffloadEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpOffloadEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1493
    iget-boolean v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpOffloadEnabled:Z

    if-eqz v0, :cond_2

    .line 1494
    const-string v0, "codecConfigOffloading:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpCodecConfig:Lcom/android/bluetooth/a2dp/A2dpCodecConfig;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->codecConfigOffloading()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 1496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1495
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1500
    :cond_1
    const-string v0, "mA2dpCodecConfig: null"

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 1502
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 1503
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 1504
    goto :goto_2

    .line 1505
    :cond_3
    return-void
.end method

.method public enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 847
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    const-string v1, "A2dpService"

    if-eqz v0, :cond_0

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableOptionalCodecs("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_0
    if-nez p1, :cond_1

    .line 852
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 854
    :cond_1
    if-nez p1, :cond_2

    .line 855
    const-string p1, "enableOptionalCodecs: Invalid device"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return-void

    .line 858
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    .line 859
    const-string p1, "enableOptionalCodecs: No optional codecs"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void

    .line 862
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0

    .line 863
    if-nez v0, :cond_4

    .line 864
    const-string p1, "enableOptionalCodecs: Codec status is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    return-void

    .line 867
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpCodecConfig:Lcom/android/bluetooth/a2dp/A2dpCodecConfig;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 868
    return-void
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 686
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 688
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    monitor-exit v0

    return-object v1

    .line 689
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;
    .locals 3

    .line 786
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v0, :cond_0

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCodecStatus("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 791
    if-nez p1, :cond_1

    .line 792
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 802
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 794
    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 795
    monitor-exit v0

    return-object v1

    .line 797
    :cond_2
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 798
    if-eqz p1, :cond_3

    .line 799
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 801
    :cond_3
    monitor-exit v0

    return-object v1

    .line 802
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 343
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 345
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 346
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 347
    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_0
    goto :goto_0

    .line 351
    :cond_1
    monitor-exit v0

    return-object v1

    .line 352
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 745
    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 744
    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 493
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 496
    if-nez p1, :cond_0

    .line 497
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 499
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState()I

    move-result p1

    monitor-exit v0

    return p1

    .line 500
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getConnecttingDeviceCount()I
    .locals 5

    .line 328
    nop

    .line 329
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 331
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 332
    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 333
    add-int/lit8 v2, v2, 0x1

    .line 334
    :cond_0
    goto :goto_0

    .line 335
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v0, :cond_2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnecttingDeviceCount current connectting device count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_2
    return v2

    .line 335
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 484
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 485
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 486
    invoke-virtual {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    goto :goto_0

    .line 488
    :cond_0
    monitor-exit v1

    return-object v0

    .line 489
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 445
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 447
    if-nez p1, :cond_0

    .line 448
    return-object v0

    .line 450
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 451
    if-nez v1, :cond_1

    .line 452
    return-object v0

    .line 454
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v2

    .line 455
    :try_start_0
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, v1, v5

    .line 456
    iget-object v7, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7, v6}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v7

    sget-object v8, Landroid/bluetooth/BluetoothUuid;->A2DP_SINK:Landroid/os/ParcelUuid;

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 458
    goto :goto_3

    .line 460
    :cond_2
    nop

    .line 461
    iget-object v7, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v7, v6}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 462
    if-eqz v7, :cond_3

    .line 463
    invoke-virtual {v7}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState()I

    move-result v7

    goto :goto_1

    .line 462
    :cond_3
    move v7, v4

    .line 465
    :goto_1
    array-length v8, p1

    move v9, v4

    :goto_2
    if-ge v9, v8, :cond_5

    aget v10, p1, v9

    .line 466
    if-ne v7, v10, :cond_4

    .line 467
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    goto :goto_3

    .line 465
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 455
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 472
    :cond_6
    monitor-exit v2

    return-object v0

    .line 473
    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 936
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getA2dpOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public getSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 911
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getA2dpSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1

    .line 915
    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 97
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dp/A2dpService$BluetoothA2dpBinder;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;)V

    return-object v0
.end method

.method public isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 764
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v0, :cond_0

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isA2dpPlaying("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 769
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 770
    if-nez p1, :cond_1

    .line 771
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 773
    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isPlaying()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 774
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isAvrcpAbsoluteVolumeSupported()Z
    .locals 1

    .line 750
    const/4 v0, 0x0

    return v0
.end method

.method messageFromNative(Lcom/android/bluetooth/a2dp/A2dpStackEvent;)V
    .locals 5

    .line 966
    iget-object v0, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device should never be null, event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 968
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v0

    .line 969
    :try_start_0
    iget-object v1, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 970
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 971
    if-nez v2, :cond_2

    .line 972
    iget v3, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 973
    iget v3, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    if-eq v3, v4, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 977
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->connectionAllowedCheckMaxDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 978
    const-string p1, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " : too many connected devices"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    monitor-exit v0

    return-void

    .line 982
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    move-result-object v2

    .line 989
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 990
    const-string v1, "A2dpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process stack event: no state machine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    monitor-exit v0

    return-void

    .line 993
    :cond_3
    const/16 v1, 0x65

    invoke-virtual {v2, v1, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 994
    monitor-exit v0

    .line 995
    return-void

    .line 994
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public okToConnect(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 5

    .line 394
    const-string v0, "mAdapterService is null, return false"

    sget-boolean v1, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    const-string v2, "A2dpService"

    if-eqz v1, :cond_0

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okToConnect: device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isOutgoingRequest: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStarted:Z

    const-string v3, "okToConnect: cannot connect to "

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p2, :cond_1

    .line 399
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : quiet mode enabled"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    return v4

    .line 403
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connectionAllowedCheckMaxDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : too many connected devices"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return v4

    .line 411
    :cond_2
    nop

    .line 413
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 417
    nop

    .line 421
    nop

    .line 423
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 427
    nop

    .line 432
    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    .line 433
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "okToConnect: return false, bondState="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return v4

    .line 435
    :cond_3
    const/4 p1, -0x1

    if-eq p2, p1, :cond_4

    const/16 p1, 0x64

    if-eq p2, p1, :cond_4

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "okToConnect: return false, connectionPolicy="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return v4

    .line 441
    :cond_4
    const/4 p1, 0x1

    return p1

    .line 424
    :catch_0
    move-exception p1

    .line 425
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 426
    return v4

    .line 414
    :catch_1
    move-exception p1

    .line 415
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    return v4
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 21

    .line 569
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "android.permission.BLUETOOTH_ADMIN"

    const-string v3, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    iget-object v2, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveSwitchingGuard:Ljava/lang/Object;

    monitor-enter v2

    .line 571
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 573
    :try_start_0
    invoke-direct {v1, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->removeActiveDevice(Z)V

    .line 574
    monitor-exit v2

    return v3

    .line 577
    :cond_0
    nop

    .line 578
    nop

    .line 579
    iget-object v5, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 580
    :try_start_1
    iget-object v6, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 581
    const-string v4, "A2dpService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setActiveDevice("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): current is "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " no changed"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return v3

    .line 586
    :cond_1
    :try_start_3
    sget-boolean v6, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v6, :cond_2

    .line 587
    const-string v6, "A2dpService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setActiveDevice("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "): current is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    :cond_2
    iget-object v6, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v6, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 590
    if-nez v6, :cond_3

    .line 591
    const-string v1, "A2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setActiveDevice("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): Cannot set as active: no state machine"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return v4

    .line 595
    :cond_3
    :try_start_5
    invoke-virtual {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    .line 596
    const-string v1, "A2dpService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setActiveDevice("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): Cannot set as active: device is not connected"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return v4

    .line 600
    :cond_4
    :try_start_7
    iget-object v8, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 601
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 604
    :try_start_8
    sget-boolean v5, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v5, :cond_5

    .line 605
    const-string v5, "A2dpService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Switch A2DP devices to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " from "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/bluetooth/a2dp/A2dpService;->updateAndBroadcastActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 612
    nop

    .line 613
    const/16 v5, 0x40

    const/4 v13, 0x3

    if-eqz v8, :cond_7

    .line 614
    iget-object v7, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v7, v13}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 615
    iget-object v7, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v9, -0x64

    invoke-virtual {v7, v13, v9, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 617
    move v14, v3

    goto :goto_0

    .line 614
    :cond_6
    move v14, v4

    .line 619
    :goto_0
    iget-object v7, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, -0x1

    invoke-virtual/range {v7 .. v12}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    goto :goto_1

    .line 613
    :cond_7
    move v14, v4

    .line 624
    :goto_1
    nop

    .line 625
    iget-object v7, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 626
    :try_start_9
    iget-object v8, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    invoke-virtual {v8, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 627
    const-string v5, "A2dpService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setActiveDevice("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "): Cannot set as active in native layer"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    invoke-direct {v1, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->removeActiveDevice(Z)V

    .line 631
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    return v4

    .line 634
    :cond_8
    :try_start_b
    invoke-virtual {v6}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_9

    .line 636
    iget-object v6, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v1, v6, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->broadcastCodecConfig(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;)V

    .line 638
    :cond_9
    iget-object v0, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 639
    monitor-exit v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 642
    const/4 v6, -0x1

    .line 643
    :try_start_c
    iget-object v7, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v7}, Lcom/android/bluetooth/btservice/ServiceFactory;->getAvrcpTargetService()Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 644
    iget-object v6, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v6}, Lcom/android/bluetooth/btservice/ServiceFactory;->getAvrcpTargetService()Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    move-result-object v6

    .line 645
    invoke-virtual {v6, v0}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->getRememberedVolumeForDevice(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    move/from16 v20, v6

    goto :goto_2

    .line 643
    :cond_a
    move/from16 v20, v6

    .line 647
    :goto_2
    if-eqz v0, :cond_b

    .line 648
    iget-object v15, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v17, 0x2

    const/16 v18, 0x2

    const/16 v19, 0x1

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v20}, Landroid/media/AudioManager;->setBluetoothA2dpDeviceConnectionStateSuppressNoisyIntent(Landroid/bluetooth/BluetoothDevice;IIZI)V

    .line 655
    :cond_b
    iget-object v6, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v0}, Landroid/media/AudioManager;->handleBluetoothA2dpDeviceConfigChange(Landroid/bluetooth/BluetoothDevice;)V

    .line 656
    if-eqz v14, :cond_d

    .line 657
    nop

    .line 658
    iget-object v0, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    const/16 v6, 0x64

    invoke-virtual {v0, v13, v6, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 661
    :cond_c
    iget-object v0, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v13}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 662
    if-ne v0, v3, :cond_d

    .line 664
    const-wide/16 v7, 0xa

    :try_start_d
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 667
    goto :goto_3

    .line 665
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 666
    :try_start_e
    const-string v0, "A2dpService"

    const-string v8, "Thread sleep 10ms"

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    :goto_3
    add-int/lit8 v4, v4, 0xa

    .line 669
    iget-object v0, v1, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v13, v6, v5}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 674
    const/16 v0, 0xc8

    if-lt v4, v0, :cond_c

    .line 676
    :cond_d
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 677
    return v3

    .line 639
    :catchall_0
    move-exception v0

    :try_start_f
    monitor-exit v7
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 601
    :catchall_1
    move-exception v0

    :try_start_11
    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    :try_start_12
    throw v0

    .line 676
    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    throw v0
.end method

.method public setAvrcpAbsoluteVolume(I)V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getAvrcpTargetService()Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 758
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getAvrcpTargetService()Lcom/android/bluetooth/avrcp/AvrcpTargetService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/avrcp/AvrcpTargetService;->sendVolumeChanged(I)V

    .line 759
    return-void

    .line 761
    :cond_0
    return-void
.end method

.method public setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 3

    .line 815
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    const-string v1, "A2dpService"

    if-eqz v0, :cond_0

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCodecConfigPreference("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 817
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_0
    if-nez p1, :cond_1

    .line 821
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 823
    :cond_1
    if-nez p1, :cond_2

    .line 824
    const-string p1, "setCodecConfigPreference: Invalid device"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    return-void

    .line 827
    :cond_2
    if-nez p2, :cond_3

    .line 828
    const-string p1, "setCodecConfigPreference: Codec config can\'t be null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void

    .line 831
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v0

    .line 832
    if-nez v0, :cond_4

    .line 833
    const-string p1, "setCodecConfigPreference: Codec status is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-void

    .line 836
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpCodecConfig:Lcom/android/bluetooth/a2dp/A2dpCodecConfig;

    invoke-virtual {v1, p1, v0, p2}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 837
    return-void
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 714
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v0, :cond_0

    .line 717
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

    const-string v1, "A2dpService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/4 v1, 0x2

    .line 721
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    move-result v0

    .line 722
    if-eqz v0, :cond_1

    const/16 v1, 0x64

    if-ne p2, v1, :cond_1

    .line 723
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 724
    :cond_1
    if-eqz v0, :cond_2

    if-nez p2, :cond_2

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 728
    :cond_2
    :goto_0
    return v0
.end method

.method public setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 951
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    const-string v0, "A2dpService"

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    .line 955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected value passed to setOptionalCodecsEnabled:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    return-void

    .line 958
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-eqz v1, :cond_1

    .line 959
    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setA2dpOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 961
    :cond_1
    const-string p1, "setOptionalCodecsEnabled with adapter service is null"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    :goto_0
    return-void
.end method

.method public setSilenceMode(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 3

    .line 546
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    const-string v1, "A2dpService"

    if-eqz v0, :cond_0

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSilenceMode("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_0
    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 550
    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->removeActiveDevice(Z)V

    goto :goto_0

    .line 551
    :cond_1
    if-nez p2, :cond_2

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_2

    .line 553
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 555
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    invoke-virtual {v2, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->setSilenceDevice(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " silence mode "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " in native layer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 p1, 0x0

    return p1

    .line 559
    :cond_3
    return v0
.end method

.method public setSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .line 920
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    .line 922
    :cond_0
    const/4 p2, 0x0

    .line 923
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setA2dpSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;I)V

    .line 924
    return-void
.end method

.method protected start()Z
    .locals 6

    .line 107
    const-string v0, "A2dpService"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-boolean v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStarted:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 109
    const-string v1, "A2dpService already started."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return v2

    .line 115
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v1

    const-string v3, "AdapterService cannot be null when A2dpService starts"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/btservice/AdapterService;

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 117
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->getInstance()Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    move-result-object v1

    const-string v3, "A2dpNativeInterface cannot be null when A2dpService starts"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    .line 119
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    .line 120
    const-string v3, "AudioManager cannot be null when A2dpService starts"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getMaxConnectedAudioDevices()I

    move-result v1

    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mMaxConnectedAudioDevices:I

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max connected audio devices set to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mMaxConnectedAudioDevices:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 129
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "A2dpService.StateMachines"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachinesThread:Landroid/os/HandlerThread;

    .line 130
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;-><init>(Landroid/content/Context;Lcom/android/bluetooth/a2dp/A2dpNativeInterface;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpCodecConfig:Lcom/android/bluetooth/a2dp/A2dpCodecConfig;

    .line 136
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    iget v4, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mMaxConnectedAudioDevices:I

    .line 137
    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->codecConfigPriorities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    iget-object v5, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpCodecConfig:Lcom/android/bluetooth/a2dp/A2dpCodecConfig;

    .line 138
    invoke-virtual {v5}, Lcom/android/bluetooth/a2dp/A2dpCodecConfig;->codecConfigOffloading()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v5

    .line 136
    invoke-virtual {v3, v4, v1, v5}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->init(I[Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 141
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->isA2dpOffloadEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpOffloadEnabled:Z

    .line 142
    sget-boolean v1, Lcom/android/bluetooth/a2dp/A2dpService;->DBG:Z

    if-eqz v1, :cond_1

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A2DP offload flag set to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpOffloadEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 148
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpService$BondStateChangedReceiver;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dp/A2dpService$BondStateChangedReceiver;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;Lcom/android/bluetooth/a2dp/A2dpService$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mBondStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpService$ConnectionStateChangedReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/a2dp/A2dpService$ConnectionStateChangedReceiver;-><init>(Lcom/android/bluetooth/a2dp/A2dpService;Lcom/android/bluetooth/a2dp/A2dpService$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 154
    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    invoke-static {p0}, Lcom/android/bluetooth/a2dp/A2dpService;->setA2dpService(Lcom/android/bluetooth/a2dp/A2dpService;)V

    .line 158
    iput-boolean v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStarted:Z

    .line 161
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 163
    return v2
.end method

.method protected stop()Z
    .locals 5

    .line 168
    const-string v0, "A2dpService"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-boolean v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 170
    const-string v0, "A2dpService"

    const-string v2, "stop() called before start()"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    return v1

    .line 175
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStarted:Z

    .line 178
    invoke-direct {p0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->removeActiveDevice(Z)V

    .line 181
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpService;->setA2dpService(Lcom/android/bluetooth/a2dp/A2dpService;)V

    .line 186
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v2

    .line 188
    const-string v2, "A2dpService"

    const-string v3, "mConnectionStateChangedReceiver Receiver not registered."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :goto_0
    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    :try_start_1
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mBondStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    goto :goto_1

    .line 195
    :catch_1
    move-exception v2

    .line 196
    const-string v2, "A2dpService"

    const-string v3, "mBondStateChangedReceiver Receiver not registered."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_1
    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mBondStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {v2}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->cleanup()V

    .line 204
    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    .line 208
    :cond_1
    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpCodecConfig:Lcom/android/bluetooth/a2dp/A2dpCodecConfig;

    .line 211
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v2

    .line 212
    :try_start_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 213
    invoke-virtual {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->doQuit()V

    .line 214
    invoke-virtual {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->cleanup()V

    .line 215
    goto :goto_2

    .line 216
    :cond_2
    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 217
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 218
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachinesThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_3

    .line 219
    invoke-virtual {v2}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 220
    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachinesThread:Landroid/os/HandlerThread;

    .line 224
    :cond_3
    iput v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mMaxConnectedAudioDevices:I

    .line 227
    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAudioManager:Landroid/media/AudioManager;

    .line 228
    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    .line 229
    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 231
    return v1

    .line 217
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public updateOptionalCodecsSupport(Landroid/bluetooth/BluetoothDevice;)V
    .locals 10

    .line 1174
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1175
    nop

    .line 1176
    nop

    .line 1178
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    monitor-enter v1

    .line 1179
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpService;->mStateMachines:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 1180
    if-nez v2, :cond_0

    .line 1181
    monitor-exit v1

    return-void

    .line 1183
    :cond_0
    invoke-virtual {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object v2

    .line 1184
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 1185
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2

    array-length v5, v2

    move v6, v3

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v9, v2, v6

    .line 1186
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothCodecConfig;->isMandatoryCodec()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1187
    move v8, v4

    goto :goto_1

    .line 1189
    :cond_1
    move v7, v4

    .line 1185
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1184
    :cond_2
    move v7, v3

    move v8, v7

    .line 1193
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1194
    if-nez v8, :cond_4

    .line 1198
    const-string p1, "A2dpService"

    const-string v0, "updateOptionalCodecsSupport: Mandatory codec is not selectable."

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return-void

    .line 1202
    :cond_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    if-ne v0, v4, :cond_5

    move v3, v4

    :cond_5
    if-eq v7, v3, :cond_7

    .line 1205
    :cond_6
    invoke-virtual {p0, p1, v7}, Lcom/android/bluetooth/a2dp/A2dpService;->setSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 1207
    :cond_7
    if-eqz v7, :cond_b

    .line 1208
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 1209
    if-eq v0, v1, :cond_9

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_a

    goto :goto_2

    .line 1218
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_2

    .line 1212
    :cond_9
    invoke-virtual {p0, p1, v4}, Lcom/android/bluetooth/a2dp/A2dpService;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 1215
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 1222
    :cond_b
    :goto_2
    return-void

    .line 1193
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
