.class public Lcom/android/bluetooth/hearingaid/HearingAidService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HearingAidService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;,
        Lcom/android/bluetooth/hearingaid/HearingAidService$ConnectionStateChangedReceiver;,
        Lcom/android/bluetooth/hearingaid/HearingAidService$BondStateChangedReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MAX_HEARING_AID_STATE_MACHINES:I = 0xa

.field private static final TAG:Ljava/lang/String; = "HearingAidService"

.field private static sHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;


# instance fields
.field private mActiveDeviceHiSyncId:J

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field mAudioManager:Landroid/media/AudioManager;

.field private mBondStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mDeviceCapabilitiesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceHiSyncIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

.field mHearingAidNativeInterface:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

.field private final mHiSyncIdConnectedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousAudioDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mStateMachines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachinesThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceCapabilitiesMap:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHiSyncIdConnectedMap:Ljava/util/Map;

    .line 77
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mActiveDeviceHiSyncId:J

    .line 82
    new-instance v0, Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-direct {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hearingaid/HearingAidService;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method private getConnectedPeerDevices(J)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 790
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 791
    invoke-virtual {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 792
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 793
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    :cond_0
    goto :goto_0

    .line 796
    :cond_1
    return-object v0
.end method

.method public static declared-synchronized getHearingAidService()Lcom/android/bluetooth/hearingaid/HearingAidService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/hearingaid/HearingAidService;

    monitor-enter v0

    .line 220
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hearingaid/HearingAidService;->sHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 221
    const-string v1, "HearingAidService"

    const-string v3, "getHearingAidService(): service is NULL"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 222
    monitor-exit v0

    return-object v2

    .line 225
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/hearingaid/HearingAidService;->sHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    invoke-virtual {v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 226
    const-string v1, "HearingAidService"

    const-string v3, "getHearingAidService(): service is not available"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    monitor-exit v0

    return-object v2

    .line 229
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/hearingaid/HearingAidService;->sHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;
    .locals 4

    .line 658
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 659
    const-string p1, "HearingAidService"

    const-string v1, "getOrCreateStateMachine failed: device cannot be null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    return-object v0

    .line 662
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v1

    .line 663
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 664
    if-eqz v2, :cond_1

    .line 665
    monitor-exit v1

    return-object v2

    .line 668
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2

    .line 669
    const-string p1, "HearingAidService"

    const-string v2, "Maximum number of HearingAid state machines reached: 10"

    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    monitor-exit v1

    return-object v0

    .line 673
    :cond_2
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v0, :cond_3

    .line 674
    const-string v0, "HearingAidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating a new state machine for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHearingAidNativeInterface:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachinesThread:Landroid/os/HandlerThread;

    .line 677
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 676
    invoke-static {p1, p0, v0, v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->make(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hearingaid/HearingAidService;Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;Landroid/os/Looper;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    move-result-object v0

    .line 678
    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    monitor-exit v1

    return-object v0

    .line 680
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private removeStateMachine(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 775
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v0

    .line 776
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 777
    if-nez v1, :cond_1

    .line 778
    const-string v1, "HearingAidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeStateMachine: device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have a state machine"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    monitor-exit v0

    return-void

    .line 782
    :cond_1
    const-string v2, "HearingAidService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeStateMachine: removing state machine for device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v4, :cond_2

    move-object v4, p1

    goto :goto_1

    :cond_2
    const-string v4, ""

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->doQuit()V

    .line 784
    invoke-virtual {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->cleanup()V

    .line 785
    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 786
    monitor-exit v0

    .line 787
    return-void

    .line 786
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private reportActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 688
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    const-string v1, "HearingAidService"

    if-eqz v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportActiveDevice("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_0
    const/16 v0, 0x97

    const/16 v2, 0x15

    iget-object v3, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 693
    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 694
    invoke-virtual {v4, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 692
    invoke-static {v0, v2, v3, v4}, Lcom/android/bluetooth/BluetoothStatsLog;->write(II[BI)V

    .line 696
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 697
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 698
    const/high16 v2, 0x5000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 700
    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v2}, Lcom/android/bluetooth/hearingaid/HearingAidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 702
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_3

    .line 703
    sget-boolean p1, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz p1, :cond_1

    .line 704
    const-string p1, "Set Hearing Aid audio to disconnected"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mPreviousAudioDevice:Landroid/bluetooth/BluetoothDevice;

    .line 707
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 708
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mPreviousAudioDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v3, v2, v3}, Landroid/media/AudioManager;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)V

    .line 711
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mPreviousAudioDevice:Landroid/bluetooth/BluetoothDevice;

    .line 712
    goto :goto_1

    .line 713
    :cond_3
    sget-boolean v4, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v4, :cond_4

    .line 714
    const-string v4, "Set Hearing Aid audio to connected"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    :cond_4
    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mPreviousAudioDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_5

    .line 717
    iget-object v4, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v1, v3, v2, v3}, Landroid/media/AudioManager;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)V

    .line 721
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/media/AudioManager;->setBluetoothHearingAidDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;IZI)V

    .line 724
    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mPreviousAudioDevice:Landroid/bluetooth/BluetoothDevice;

    .line 726
    :goto_1
    return-void
.end method

.method private static declared-synchronized setHearingAidService(Lcom/android/bluetooth/hearingaid/HearingAidService;)V
    .locals 4

    const-class v0, Lcom/android/bluetooth/hearingaid/HearingAidService;

    monitor-enter v0

    .line 233
    :try_start_0
    sget-boolean v1, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v1, :cond_0

    .line 234
    const-string v1, "HearingAidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHearingAidService(): set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    sput-object p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->sHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 237
    monitor-exit v0

    return-void

    .line 232
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method bondStateChanged(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 754
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v0, :cond_0

    .line 755
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

    const-string v1, "HearingAidService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_0
    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    .line 759
    return-void

    .line 761
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    iget-object p2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter p2

    .line 763
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 764
    if-nez v0, :cond_2

    .line 765
    monitor-exit p2

    return-void

    .line 767
    :cond_2
    invoke-virtual {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getConnectionState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 768
    monitor-exit p2

    return-void

    .line 770
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->removeStateMachine(Landroid/bluetooth/BluetoothDevice;)V

    .line 771
    monitor-exit p2

    .line 772
    return-void

    .line 771
    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected cleanup()V
    .locals 2

    .line 210
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "HearingAidService"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10

    .line 246
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v0, :cond_0

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingAidService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 252
    return v0

    .line 255
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    if-nez v1, :cond_2

    .line 256
    return v0

    .line 258
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v1

    .line 259
    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : Remote does not have Hearing Aid UUID"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "HearingAidService"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v0

    .line 264
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    .line 265
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 264
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 267
    iget-wide v5, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mActiveDeviceHiSyncId:J

    cmp-long v0, v3, v5

    if-eqz v0, :cond_5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_5

    cmp-long v0, v5, v1

    if-eqz v0, :cond_5

    .line 270
    invoke-virtual {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 271
    invoke-virtual {p0, v5}, Lcom/android/bluetooth/hearingaid/HearingAidService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 272
    goto :goto_1

    .line 275
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v0

    .line 276
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    move-result-object v5

    .line 277
    if-nez v5, :cond_7

    .line 278
    const-string v6, "HearingAidService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Cannot connect to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v8, :cond_6

    move-object v8, p1

    goto :goto_2

    :cond_6
    const-string v8, ""

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " : no state machine"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_7
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->sendMessage(I)V

    .line 281
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 284
    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 285
    goto :goto_3

    .line 287
    :cond_8
    iget-object v7, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    .line 288
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 287
    invoke-interface {v7, v5, v8}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v3

    if-nez v7, :cond_b

    .line 289
    iget-object v7, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v7

    .line 290
    :try_start_1
    invoke-direct {p0, v5}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    move-result-object v8

    .line 291
    if-nez v8, :cond_a

    .line 292
    const-string v5, "HearingAidService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignored connect request for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v9, :cond_9

    move-object v9, p1

    goto :goto_4

    :cond_9
    const-string v9, ""

    :goto_4
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " : no state machine"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    monitor-exit v7

    goto :goto_3

    .line 295
    :cond_a
    invoke-virtual {v8, v6}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->sendMessage(I)V

    .line 296
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    cmp-long v7, v3, v1

    if-nez v7, :cond_b

    .line 298
    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 299
    goto :goto_5

    .line 296
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 302
    :cond_b
    goto :goto_3

    .line 303
    :cond_c
    :goto_5
    return v6

    .line 281
    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method declared-synchronized connectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 8

    monitor-enter p0

    .line 802
    if-eqz p1, :cond_7

    if-ne p2, p3, :cond_0

    goto/16 :goto_0

    .line 807
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 808
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v2

    .line 809
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 810
    invoke-direct {p0, v2, v3}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectedPeerDevices(J)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 813
    :cond_1
    sget-object v4, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEARING_AID:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v4}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 816
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHiSyncIdConnectedMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 817
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 818
    iget-object v4, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHiSyncIdConnectedMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 821
    :cond_3
    if-ne p2, v1, :cond_4

    invoke-virtual {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectedDevices()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 822
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/hearingaid/HearingAidService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 823
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v1

    .line 824
    iget-object p2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHiSyncIdConnectedMap:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :cond_4
    if-nez p3, :cond_6

    .line 828
    iget-object p2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {p2, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    .line 829
    const/16 p3, 0xa

    if-ne p2, p3, :cond_6

    .line 830
    sget-boolean p2, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz p2, :cond_5

    .line 831
    const-string p2, "HearingAidService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is unbond. Remove state machine"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->removeStateMachine(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    :cond_6
    monitor-exit p0

    return-void

    .line 803
    :cond_7
    :goto_0
    :try_start_1
    const-string v0, "HearingAidService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectionStateChanged: unexpected invocation. device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    const-string p1, ""

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " fromState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " toState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 805
    monitor-exit p0

    return-void

    .line 801
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected create()V
    .locals 2

    .line 91
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v0, :cond_0

    .line 92
    const-string v0, "HearingAidService"

    const-string v1, "create()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    return-void
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 9

    .line 313
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v0, :cond_0

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingAidService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    if-nez p1, :cond_1

    .line 319
    const/4 p1, 0x0

    return p1

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    .line 322
    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 321
    invoke-interface {v0, p1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 324
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 325
    iget-object v6, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    .line 326
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 325
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v6, v6, v3

    if-nez v6, :cond_4

    .line 327
    iget-object v6, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v6

    .line 328
    :try_start_0
    iget-object v7, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 329
    if-nez v7, :cond_3

    .line 330
    const-string v5, "HearingAidService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignored disconnect request for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v8, :cond_2

    move-object v8, p1

    goto :goto_1

    :cond_2
    const-string v8, ""

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " : no state machine"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    monitor-exit v6

    goto :goto_0

    .line 334
    :cond_3
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->sendMessage(I)V

    .line 335
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    cmp-long v6, v3, v1

    if-nez v6, :cond_4

    .line 337
    invoke-virtual {p1, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 338
    goto :goto_2

    .line 335
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 341
    :cond_4
    goto :goto_0

    .line 342
    :cond_5
    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 1000
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 1001
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 1002
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 1003
    goto :goto_0

    .line 1004
    :cond_0
    return-void
.end method

.method public getActiveDevices()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 589
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v0, :cond_0

    .line 591
    const-string v0, "HearingAidService"

    const-string v1, "getActiveDevices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v1

    .line 597
    :try_start_0
    iget-wide v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mActiveDeviceHiSyncId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 598
    monitor-exit v1

    return-object v0

    .line 600
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 601
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    .line 602
    goto :goto_0

    .line 604
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mActiveDeviceHiSyncId:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 605
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getCapabilities(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    .line 606
    if-ne v4, v5, :cond_3

    .line 607
    invoke-virtual {v0, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 609
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 612
    :cond_4
    :goto_1
    goto :goto_0

    .line 613
    :cond_5
    monitor-exit v1

    .line 614
    return-object v0

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getCapabilities(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceCapabilitiesMap:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method getConnectedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 346
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v0

    .line 348
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 350
    invoke-virtual {v3}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 351
    invoke-virtual {v3}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_0
    goto :goto_0

    .line 354
    :cond_1
    monitor-exit v0

    return-object v1

    .line 355
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 526
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 529
    const/16 v1, 0x15

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 528
    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 472
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 475
    if-nez p1, :cond_0

    .line 476
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 478
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getConnectionState()I

    move-result p1

    monitor-exit v0

    return p1

    .line 479
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    .line 443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 444
    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v1

    .line 445
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 446
    invoke-virtual {v3}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    goto :goto_0

    .line 448
    :cond_0
    monitor-exit v1

    return-object v0

    .line 449
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

    .line 405
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 407
    if-nez p1, :cond_0

    .line 408
    return-object v0

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 411
    if-nez v1, :cond_1

    .line 412
    return-object v0

    .line 414
    :cond_1
    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v2

    .line 415
    :try_start_0
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v6, v1, v5

    .line 416
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v7

    .line 417
    sget-object v8, Landroid/bluetooth/BluetoothUuid;->HEARING_AID:Landroid/os/ParcelUuid;

    invoke-static {v7, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 418
    goto :goto_3

    .line 420
    :cond_2
    nop

    .line 421
    iget-object v7, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 422
    if-eqz v7, :cond_3

    .line 423
    invoke-virtual {v7}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getConnectionState()I

    move-result v7

    goto :goto_1

    .line 422
    :cond_3
    move v7, v4

    .line 425
    :goto_1
    array-length v8, p1

    move v9, v4

    :goto_2
    if-ge v9, v8, :cond_5

    aget v10, p1, v9

    .line 426
    if-ne v7, v10, :cond_4

    .line 427
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    goto :goto_3

    .line 425
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 415
    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 432
    :cond_6
    monitor-exit v2

    return-object v0

    .line 433
    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J
    .locals 3

    .line 537
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    .line 540
    return-wide v0

    .line 542
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method getHiSyncIdMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 459
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    return-object v0
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 86
    new-instance v0, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hearingaid/HearingAidService$BluetoothHearingAidBinder;-><init>(Lcom/android/bluetooth/hearingaid/HearingAidService;)V

    return-object v0
.end method

.method public isConnectedPeerDevices(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 366
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v0

    .line 367
    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectedPeerDevices(J)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 368
    const/4 p1, 0x0

    return p1

    .line 370
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method messageFromNative(Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;)V
    .locals 6

    .line 618
    iget-object v0, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device should never be null, event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 621
    iget v0, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 622
    iget-object v0, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 623
    iget v1, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->valueInt1:I

    .line 624
    iget-wide v2, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->valueLong2:J

    .line 625
    sget-boolean p1, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz p1, :cond_0

    .line 626
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device available: device="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " capabilities="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " hiSyncId="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "HearingAidService"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceCapabilitiesMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    return-void

    .line 634
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v0

    .line 635
    :try_start_0
    iget-object v2, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 636
    iget-object v3, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 637
    if-nez v3, :cond_3

    .line 638
    iget v4, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->type:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    .line 639
    iget v4, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->valueInt1:I

    if-eq v4, v5, :cond_2

    if-eq v4, v1, :cond_2

    goto :goto_0

    .line 642
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    move-result-object v3

    .line 649
    :cond_3
    :goto_0
    if-nez v3, :cond_4

    .line 650
    const-string v1, "HearingAidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot process stack event: no state machine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    monitor-exit v0

    return-void

    .line 653
    :cond_4
    const/16 v1, 0x65

    invoke-virtual {v3, v1, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 654
    monitor-exit v0

    .line 655
    return-void

    .line 654
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public okToConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "HearingAidService"

    if-eqz v0, :cond_1

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okToConnect: cannot connect to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " : quiet mode enabled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return v1

    .line 388
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 389
    iget-object v3, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 392
    const/16 v3, 0xc

    if-eq p1, v3, :cond_2

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okToConnect: return false, bondState="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return v1

    .line 395
    :cond_2
    const/4 p1, -0x1

    if-eq v0, p1, :cond_3

    const/16 p1, 0x64

    if-eq v0, p1, :cond_3

    .line 398
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okToConnect: return false, connectionPolicy="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return v1

    .line 401
    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7

    .line 555
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v0, :cond_0

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveDevice:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingAidService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v0

    .line 560
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez p1, :cond_2

    .line 561
    :try_start_0
    iget-wide v4, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mActiveDeviceHiSyncId:J

    cmp-long p1, v4, v2

    if-eqz p1, :cond_1

    .line 562
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->reportActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 563
    iput-wide v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mActiveDeviceHiSyncId:J

    .line 565
    :cond_1
    monitor-exit v0

    return v1

    .line 567
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    .line 568
    const-string v1, "HearingAidService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveDevice("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): failed because device not connected"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 571
    :cond_4
    iget-object v4, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    .line 572
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 571
    invoke-interface {v4, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 573
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mActiveDeviceHiSyncId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    .line 574
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mActiveDeviceHiSyncId:J

    .line 575
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->reportActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 577
    :cond_5
    monitor-exit v0

    .line 578
    return v1

    .line 577
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 498
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v0, :cond_0

    .line 501
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

    const-string v1, "HearingAidService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/16 v1, 0x15

    .line 504
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 505
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 506
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 507
    :cond_1
    if-nez p2, :cond_2

    .line 508
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 510
    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method setVolume(I)V
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHearingAidNativeInterface:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->setVolume(I)V

    .line 534
    return-void
.end method

.method protected start()Z
    .locals 4

    .line 98
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    const-string v1, "HearingAidService"

    if-eqz v0, :cond_0

    .line 99
    const-string v0, "start()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    sget-object v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->sHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "start() twice, just return!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    return v2

    .line 112
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    const-string v1, "AdapterService cannot be null when HearingAidService starts"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/btservice/AdapterService;

    iput-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 114
    invoke-static {}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->getInstance()Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    move-result-object v0

    const-string v1, "HearingAidNativeInterface cannot be null when HearingAidService starts"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    iput-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHearingAidNativeInterface:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    .line 116
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAudioManager:Landroid/media/AudioManager;

    .line 117
    const-string v1, "AudioManager cannot be null when HearingAidService starts"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 122
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HearingAidService.StateMachines"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachinesThread:Landroid/os/HandlerThread;

    .line 123
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 127
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceCapabilitiesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHiSyncIdConnectedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 131
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 132
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    new-instance v1, Lcom/android/bluetooth/hearingaid/HearingAidService$BondStateChangedReceiver;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/hearingaid/HearingAidService$BondStateChangedReceiver;-><init>(Lcom/android/bluetooth/hearingaid/HearingAidService;Lcom/android/bluetooth/hearingaid/HearingAidService$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mBondStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 134
    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 136
    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 137
    new-instance v1, Lcom/android/bluetooth/hearingaid/HearingAidService$ConnectionStateChangedReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/bluetooth/hearingaid/HearingAidService$ConnectionStateChangedReceiver;-><init>(Lcom/android/bluetooth/hearingaid/HearingAidService;Lcom/android/bluetooth/hearingaid/HearingAidService$1;)V

    iput-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    invoke-static {p0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->setHearingAidService(Lcom/android/bluetooth/hearingaid/HearingAidService;)V

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHearingAidNativeInterface:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->init()V

    .line 146
    return v2
.end method

.method protected stop()Z
    .locals 5

    .line 151
    sget-boolean v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->DBG:Z

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "HearingAidService"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    sget-object v0, Lcom/android/bluetooth/hearingaid/HearingAidService;->sHearingAidService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 155
    const-string v0, "HearingAidService"

    const-string v2, "stop() called before start()"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return v1

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHearingAidNativeInterface:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->cleanup()V

    .line 162
    iput-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHearingAidNativeInterface:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    .line 166
    :cond_2
    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidService;->setHearingAidService(Lcom/android/bluetooth/hearingaid/HearingAidService;)V

    .line 171
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mBondStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 172
    iput-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mBondStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 174
    iput-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mConnectionStateChangedReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    const-string v3, "HearingAidService"

    const-string v4, "try to unregister a receiver before it is registered."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    monitor-enter v0

    .line 183
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 184
    invoke-virtual {v4}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->doQuit()V

    .line 185
    invoke-virtual {v4}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->cleanup()V

    .line 186
    goto :goto_1

    .line 187
    :cond_3
    iget-object v3, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachines:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 188
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceHiSyncIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 192
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mDeviceCapabilitiesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 193
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHiSyncIdConnectedMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachinesThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 197
    iput-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mStateMachinesThread:Landroid/os/HandlerThread;

    .line 201
    :cond_4
    iput-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAudioManager:Landroid/media/AudioManager;

    .line 202
    iput-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mHearingAidNativeInterface:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    .line 203
    iput-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 205
    return v1

    .line 188
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
