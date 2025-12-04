.class public Lcom/android/bluetooth/hfpclient/HeadsetClientService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HeadsetClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final HFP_CLIENT_STOP_TAG:Ljava/lang/String; = "hfp_client_stop_tag"

.field private static final MAX_STATE_MACHINES_POSSIBLE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "HeadsetClientService"

.field private static sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

.field private mSmFactory:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachineFactory;

.field private mSmThread:Landroid/os/HandlerThread;

.field private mStateMachineMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    .line 59
    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mSmThread:Landroid/os/HandlerThread;

    .line 60
    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mSmFactory:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachineFactory;

    .line 61
    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mAudioManager:Landroid/media/AudioManager;

    .line 146
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Landroid/media/AudioManager;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mAudioManager:Landroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Ljava/util/HashMap;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Z
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hfpclient/HeadsetClientService;[I)Ljava/util/List;
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 533
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 535
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 536
    array-length v3, p1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget v5, p1, v4

    .line 537
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 538
    if-eqz v6, :cond_0

    invoke-virtual {v6, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v6

    if-ne v6, v5, :cond_0

    .line 539
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 542
    :cond_1
    goto :goto_0

    .line 543
    :cond_2
    monitor-exit p0

    return-object v0

    .line 532
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getHeadsetClientService()Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    monitor-enter v0

    .line 456
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 457
    const-string v1, "HeadsetClientService"

    const-string v3, "getHeadsetClientService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    monitor-exit v0

    return-object v2

    .line 460
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 461
    const-string v1, "HeadsetClientService"

    const-string v3, "getHeadsetClientService(): service is not available "

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    monitor-exit v0

    return-object v2

    .line 464
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private declared-synchronized getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    .locals 3

    monitor-enter p0

    .line 941
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 942
    :try_start_0
    const-string p1, "HeadsetClientService"

    const-string v1, "getStateMachine failed: Device cannot be null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    monitor-exit p0

    return-object v0

    .line 946
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 947
    if-eqz v1, :cond_1

    .line 951
    monitor-exit p0

    return-object v1

    .line 957
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_2

    .line 958
    const-string p1, "HeadsetClientService"

    const-string v1, "Max state machines reached, possible DOS attack 100"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 960
    monitor-exit p0

    return-object v0

    .line 964
    :cond_2
    :try_start_3
    const-string v0, "HeadsetClientService"

    const-string v1, "Creating a new state machine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mSmFactory:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachineFactory;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mSmThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachineFactory;->make(Lcom/android/bluetooth/hfpclient/HeadsetClientService;Landroid/os/HandlerThread;Lcom/android/bluetooth/hfpclient/NativeInterface;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 966
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 967
    monitor-exit p0

    return-object v0

    .line 940
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static declared-synchronized setHeadsetClientService(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 1

    const-class v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    monitor-enter v0

    .line 471
    :try_start_0
    sput-object p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 472
    monitor-exit v0

    return-void

    .line 470
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method acceptCall(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 5

    .line 704
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    monitor-enter p0

    .line 707
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    .line 708
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 707
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 709
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 710
    goto :goto_0

    .line 712
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 718
    if-ne v3, v2, :cond_2

    .line 719
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v2, 0xf

    .line 720
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 721
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 723
    :cond_2
    goto :goto_0

    .line 724
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 726
    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 727
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot allocate SM for device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HeadsetClientService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    return v1

    .line 731
    :cond_4
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 732
    if-eq p1, v2, :cond_5

    .line 733
    return v1

    .line 735
    :cond_5
    const/16 p1, 0xc

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 736
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 737
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 738
    const/4 p1, 0x1

    return p1

    .line 724
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 475
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 480
    const/4 v1, 0x0

    const-string v2, "HeadsetClientService"

    if-nez v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot allocate SM for device "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    return v1

    .line 485
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    if-nez v3, :cond_1

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection not allowed: <"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> is CONNECTION_POLICY_FORBIDDEN"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v1

    .line 491
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 492
    return v1
.end method

.method connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 653
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 655
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate SM for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    return v1

    .line 660
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isConnected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 661
    return v1

    .line 663
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isAudioOn()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 664
    return v1

    .line 666
    :cond_2
    const/4 p1, 0x3

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 667
    const/4 p1, 0x1

    return p1
.end method

.method dial(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Landroid/bluetooth/BluetoothHeadsetClientCall;
    .locals 12

    .line 801
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 803
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 804
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot allocate SM for device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HeadsetClientService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-object v1

    .line 808
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 809
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    .line 811
    return-object v1

    .line 814
    :cond_1
    new-instance v1, Landroid/bluetooth/BluetoothHeadsetClientCall;

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 817
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getInBandRing()Z

    move-result v11

    move-object v4, v1

    move-object v5, p1

    move-object v8, p2

    invoke-direct/range {v4 .. v11}, Landroid/bluetooth/BluetoothHeadsetClientCall;-><init>(Landroid/bluetooth/BluetoothDevice;IILjava/lang/String;ZZZ)V

    .line 818
    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 819
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 820
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 821
    return-object v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 502
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 504
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate SM for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    return v1

    .line 509
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    .line 510
    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-eq v2, v3, :cond_1

    .line 512
    return v1

    .line 515
    :cond_1
    invoke-virtual {v0, v4, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 516
    return v3
.end method

.method disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 671
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 673
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate SM for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return v1

    .line 678
    :cond_0
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->isAudioOn()Z

    move-result p1

    if-nez p1, :cond_1

    .line 679
    return v1

    .line 681
    :cond_1
    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 682
    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized dump(Ljava/lang/StringBuilder;)V
    .locals 2

    monitor-enter p0

    .line 990
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 991
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 992
    if-eqz v1, :cond_0

    .line 993
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->dump(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 995
    :cond_0
    goto :goto_0

    .line 996
    :cond_1
    monitor-exit p0

    return-void

    .line 989
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method enterPrivateMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 4

    .line 781
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 783
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 784
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot allocate SM for device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HeadsetClientService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    return v1

    .line 788
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 789
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    .line 791
    return v1

    .line 794
    :cond_1
    const/16 p1, 0x10

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 795
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 796
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 797
    return v3
.end method

.method public explicitCallTransfer(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 863
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 865
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate SM for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return v1

    .line 870
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 871
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    .line 873
    return v1

    .line 875
    :cond_1
    const/16 p1, 0x12

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 876
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 877
    return v3
.end method

.method protected getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .line 1008
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 643
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 644
    if-nez v0, :cond_0

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot allocate SM for device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 p1, -0x1

    return p1

    .line 649
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public declared-synchronized getConnectedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 520
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 524
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 525
    if-eqz v3, :cond_0

    invoke-virtual {v3, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 526
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 528
    :cond_0
    goto :goto_0

    .line 529
    :cond_1
    monitor-exit p0

    return-object v0

    .line 519
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 607
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 609
    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 608
    return p1
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    monitor-enter p0

    .line 556
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 558
    if-eqz v0, :cond_0

    .line 559
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 561
    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 555
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3

    .line 901
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 903
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate SM for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    return-object v1

    .line 908
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 909
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 910
    return-object v1

    .line 912
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentAgEvents()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentAgFeatures(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;
    .locals 3

    .line 916
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 918
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate SM for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    return-object v1

    .line 922
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 923
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 924
    return-object v1

    .line 926
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentAgFeatures()Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothHeadsetClientCall;",
            ">;"
        }
    .end annotation

    .line 848
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 850
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate SM for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    return-object v1

    .line 855
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 856
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 857
    return-object v1

    .line 859
    :cond_1
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentCalls()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLastVoiceTagNumber(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 844
    const/4 p1, 0x0

    return p1
.end method

.method protected declared-synchronized getStateMachineMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1000
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method holdCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 686
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 688
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate SM for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    return v1

    .line 693
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 694
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    .line 696
    return v1

    .line 698
    :cond_1
    const/16 p1, 0xe

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 699
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 700
    return v3
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 69
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService$BluetoothHeadsetClientBinder;-><init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    return-object v0
.end method

.method declared-synchronized isScoRouted()Z
    .locals 3

    monitor-enter p0

    .line 972
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    .line 973
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 972
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 974
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 975
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 981
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 984
    :cond_0
    goto :goto_0

    .line 985
    :cond_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 971
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public messageFromNative(Lcom/android/bluetooth/hfpclient/StackEvent;)V
    .locals 3

    .line 931
    iget-object v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 932
    if-nez v0, :cond_0

    .line 933
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No SM found for event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HeadsetClientService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_0
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 937
    return-void
.end method

.method rejectCall(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 742
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 744
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate SM for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return v1

    .line 749
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 750
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    .line 752
    return v1

    .line 755
    :cond_1
    const/16 p1, 0xd

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 756
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 757
    return v3
.end method

.method public sendDTMF(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 4

    .line 825
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 827
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 828
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot allocate SM for device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HeadsetClientService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return v1

    .line 832
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 833
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    .line 835
    return v1

    .line 837
    :cond_1
    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 838
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 839
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 840
    return v3
.end method

.method public sendVendorAtCommand(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)Z
    .locals 3

    .line 882
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 884
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 885
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot allocate SM for device "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HeadsetClientService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return v1

    .line 889
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 890
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 891
    return v1

    .line 894
    :cond_1
    const/16 p1, 0x15

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 896
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 897
    const/4 p1, 0x1

    return p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 580
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 586
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 588
    :cond_0
    if-nez p2, :cond_1

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 591
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected setSMFactory(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachineFactory;)V
    .locals 0

    .line 1004
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mSmFactory:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachineFactory;

    .line 1005
    return-void
.end method

.method protected declared-synchronized start()Z
    .locals 2

    monitor-enter p0

    .line 77
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "HeadsetClientService"

    const-string v1, "start(): start called without stop"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 83
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/bluetooth/hfpclient/NativeInterface;->getInstance()Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    .line 84
    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->initialize()V

    .line 86
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mAudioManager:Landroid/media/AudioManager;

    .line 87
    if-nez v0, :cond_1

    .line 88
    const-string v0, "HeadsetClientService"

    const-string v1, "AudioManager service doesn\'t exist?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, "hfp_enable=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 94
    :goto_0
    new-instance v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachineFactory;

    invoke-direct {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachineFactory;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mSmFactory:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachineFactory;

    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 106
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HeadsetClient.SM"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mSmThread:Landroid/os/HandlerThread;

    .line 107
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 109
    invoke-static {p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setHeadsetClientService(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 613
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 615
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate SM for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return v1

    .line 619
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 620
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 621
    return v1

    .line 623
    :cond_1
    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 624
    const/4 p1, 0x1

    return p1
.end method

.method protected declared-synchronized stop()Z
    .locals 4

    monitor-enter p0

    .line 115
    :try_start_0
    sget-object v0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    if-nez v0, :cond_0

    .line 116
    const-string v0, "HeadsetClientService"

    const-string v1, "stop() called without start()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 121
    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 122
    sget-object v1, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sHeadsetClientService:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->stopService(Landroid/content/Intent;)Z

    .line 124
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->setHeadsetClientService(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V

    .line 126
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 128
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    .line 129
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mStateMachineMap:Ljava/util/HashMap;

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 132
    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->doQuit()V

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 134
    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mSmThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 138
    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mSmThread:Landroid/os/HandlerThread;

    .line 140
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->cleanup()V

    .line 141
    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->mNativeInterface:Lcom/android/bluetooth/hfpclient/NativeInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 628
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 630
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot allocate SM for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetClientService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    return v1

    .line 634
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 635
    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    .line 636
    return v1

    .line 638
    :cond_1
    const/4 p1, 0x6

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 639
    const/4 p1, 0x1

    return p1
.end method

.method terminateCall(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;)Z
    .locals 4

    .line 761
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    move-result-object v0

    .line 763
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 764
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot allocate SM for device "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HeadsetClientService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    return v1

    .line 768
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 769
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v3, :cond_1

    .line 771
    return v1

    .line 774
    :cond_1
    const/16 p1, 0xf

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 775
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 776
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 777
    return v3
.end method
