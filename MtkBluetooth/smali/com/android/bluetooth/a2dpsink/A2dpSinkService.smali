.class public Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "A2dpSinkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static final MAXIMUM_CONNECTED_DEVICES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "A2dpSinkService"

.field private static sService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;


# instance fields
.field private mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field protected mDeviceStateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final mStreamHandlerLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-string v0, "A2dpSinkService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->DBG:Z

    .line 57
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->classInitNative()V

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 48
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mDeviceStateMap:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStreamHandlerLock:Ljava/lang/Object;

    .line 102
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 103
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method public static declared-synchronized getA2dpSinkService()Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
    .locals 2

    const-class v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private native initNative()V
.end method

.method private onAudioConfigChanged([BII)V
    .locals 0

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/android/bluetooth/a2dpsink/StackEvent;->audioConfigChanged(Landroid/bluetooth/BluetoothDevice;II)Lcom/android/bluetooth/a2dpsink/StackEvent;

    move-result-object p1

    .line 500
    iget-object p2, p1, Lcom/android/bluetooth/a2dpsink/StackEvent;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    move-result-object p2

    .line 501
    const/16 p3, 0xc8

    invoke-virtual {p2, p3, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 502
    return-void
.end method

.method private onAudioStateChanged([BI)V
    .locals 1

    .line 482
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStreamHandlerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    if-nez v0, :cond_0

    .line 484
    const-string p2, "A2dpSinkService"

    const-string v0, "Received audio state change before we\'ve been started"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    monitor-exit p1

    return-void

    .line 486
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 487
    iget-object p2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 488
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 489
    :cond_1
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    if-nez p2, :cond_3

    .line 491
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    invoke-virtual {p2, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    .line 492
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 494
    :cond_3
    :goto_0
    monitor-exit p1

    .line 495
    return-void

    .line 494
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method private onConnectionStateChanged([BI)V
    .locals 1

    .line 476
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/bluetooth/a2dpsink/StackEvent;->connectionStateChanged(Landroid/bluetooth/BluetoothDevice;I)Lcom/android/bluetooth/a2dpsink/StackEvent;

    move-result-object p1

    .line 477
    iget-object p2, p1, Lcom/android/bluetooth/a2dpsink/StackEvent;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    move-result-object p2

    .line 478
    const/16 v0, 0xc8

    invoke-virtual {p2, v0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 479
    return-void
.end method

.method public static declared-synchronized setA2dpSinkService(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V
    .locals 1

    const-class v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    monitor-enter v0

    .line 97
    :try_start_0
    sput-object p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit v0

    return-void

    .line 96
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 257
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-eqz p1, :cond_3

    .line 262
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->DBG:Z

    const-string v1, "A2dpSinkService"

    if-eqz v0, :cond_0

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->dump(Ljava/lang/StringBuilder;)V

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " connect device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", InstanceMap start state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 269
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

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v2

    .line 274
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->connect()V

    .line 277
    const/4 p1, 0x1

    return p1

    .line 280
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maxed out on the number of allowed A2DP Sink connections. Connect request rejected on "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return v2

    .line 260
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method native connectA2dpNative([B)Z
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 292
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->DBG:Z

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->dump(Ljava/lang/StringBuilder;)V

    .line 296
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A2DP disconnect device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", InstanceMap start state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 296
    const-string v1, "A2dpSinkService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    .line 302
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 303
    return v0

    .line 305
    :cond_1
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getState()I

    move-result v1

    .line 306
    if-eqz v1, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 312
    :cond_2
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->disconnect()V

    .line 313
    const/4 p1, 0x1

    return p1

    .line 308
    :cond_3
    :goto_0
    return v0
.end method

.method native disconnectA2dpNative([B)Z
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 418
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Devices Tracked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mDeviceStateMap:Ljava/util/Map;

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

    check-cast v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==== StateMachine for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ===="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    invoke-static {p1, v2}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 423
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 424
    goto :goto_0

    .line 425
    :cond_0
    return-void
.end method

.method getAudioConfig(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothAudioConfig;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    .line 430
    if-nez p1, :cond_0

    .line 431
    const/4 p1, 0x0

    return-object p1

    .line 433
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getAudioConfig()Landroid/bluetooth/BluetoothAudioConfig;

    move-result-object p1

    return-object p1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 321
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 409
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 412
    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 411
    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    .line 367
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 368
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getState()I

    move-result p1

    .line 367
    :goto_0
    return p1
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

    .line 338
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->DBG:Z

    const-string v1, "A2dpSinkService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDevicesMatchingConnectionStates"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 340
    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 342
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 343
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 344
    sget-boolean v5, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->DBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "State: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_1
    const/4 v5, 0x0

    :goto_1
    array-length v6, p1

    if-ge v5, v6, :cond_3

    .line 346
    aget v6, p1, v5

    if-ne v4, v6, :cond_2

    .line 347
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 350
    :cond_3
    goto :goto_0

    .line 351
    :cond_4
    sget-boolean p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->DBG:Z

    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_5
    const-string p1, "GetDevicesDone"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-object v0
.end method

.method public getFocusState()I
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStreamHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    monitor-exit v0

    return v1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    invoke-virtual {v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->getFocusState()I

    move-result v1

    monitor-exit v0

    return v1

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getOrCreateStateMachine(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
    .locals 2

    .line 325
    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {v0, p1, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V

    .line 326
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mDeviceStateMap:Ljava/util/Map;

    .line 327
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    .line 330
    if-nez p1, :cond_0

    .line 331
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->start()V

    .line 332
    return-object v0

    .line 334
    :cond_0
    return-object p1
.end method

.method public native informAudioFocusStateNative(I)V
.end method

.method public native informAudioTrackGainNative(F)V
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 138
    new-instance v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService$A2dpSinkServiceBinder;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V

    return-object v0
.end method

.method isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 128
    const-string p1, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v0, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStreamHandlerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p1

    return v0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->isPlaying()Z

    move-result v0

    monitor-exit p1

    return v0

    .line 133
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeStateMachine(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mDeviceStateMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    return-void
.end method

.method public requestAudioFocus(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStreamHandlerLock:Ljava/lang/Object;

    monitor-enter p1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    if-nez v0, :cond_0

    monitor-exit p1

    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    invoke-virtual {v0, p2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->requestAudioFocus(Z)V

    .line 112
    monitor-exit p1

    .line 113
    return-void

    .line 112
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public native setActiveDeviceNative([B)Z
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 387
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->DBG:Z

    if-eqz v0, :cond_0

    .line 390
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

    const-string v1, "A2dpSinkService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/16 v1, 0xb

    .line 393
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 394
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 395
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 396
    :cond_1
    if-nez p2, :cond_2

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 399
    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected start()Z
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStreamHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    new-instance v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    invoke-direct {v1, p0, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    .line 64
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->initNative()V

    .line 66
    invoke-static {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->setA2dpSinkService(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V

    .line 67
    const/4 v0, 0x1

    return v0

    .line 64
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected stop()Z
    .locals 3

    .line 72
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->setA2dpSinkService(Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V

    .line 73
    invoke-direct {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->cleanupNative()V

    .line 74
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    .line 75
    invoke-virtual {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->quitNow()V

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mDeviceStateMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 78
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mStreamHandlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 79
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    if-eqz v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    invoke-virtual {v2}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->cleanup()V

    .line 81
    iput-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->mA2dpSinkStreamHandler:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    .line 83
    :cond_1
    monitor-exit v1

    .line 84
    const/4 v0, 0x1

    return v0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
