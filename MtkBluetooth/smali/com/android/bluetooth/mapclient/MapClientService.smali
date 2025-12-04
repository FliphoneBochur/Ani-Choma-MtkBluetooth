.class public Lcom/android/bluetooth/mapclient/MapClientService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "MapClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;,
        Lcom/android/bluetooth/mapclient/MapClientService$Binder;
    }
.end annotation


# static fields
.field private static final BLUETOOTH_PERM:Ljava/lang/String; = "android.permission.BLUETOOTH"

.field static final DBG:Z = false

.field static final MAXIMUM_CONNECTED_DEVICES:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MapClientService"

.field static final VDBG:Z = false

.field private static sMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mMapInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/mapclient/MceStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mMapReceiver:Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;

.field private mMnsServer:Lcom/android/bluetooth/mapclient/MnsService;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/mapclient/MapClientService;)Z
    .locals 0

    .line 48
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MapClientService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/mapclient/MapClientService;)Ljava/util/Map;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    return-object p0
.end method

.method private declared-synchronized addDeviceToMapAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    monitor-enter p0

    .line 159
    :try_start_0
    new-instance v0, Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;-><init>(Lcom/android/bluetooth/mapclient/MapClientService;Landroid/bluetooth/BluetoothDevice;)V

    .line 160
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static declared-synchronized getMapClientService()Lcom/android/bluetooth/mapclient/MapClientService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/mapclient/MapClientService;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/mapclient/MapClientService;->sMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 66
    const-string v1, "MapClientService"

    const-string v3, "getMapClientService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-object v2

    .line 69
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/mapclient/MapClientService;->sMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MapClientService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    const-string v1, "MapClientService"

    const-string v3, "getMapClientService(): service is not available "

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit v0

    return-object v2

    .line 73
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/mapclient/MapClientService;->sMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized setMapClientService(Lcom/android/bluetooth/mapclient/MapClientService;)V
    .locals 1

    const-class v0, Lcom/android/bluetooth/mapclient/MapClientService;

    monitor-enter v0

    .line 80
    :try_start_0
    sput-object p0, Lcom/android/bluetooth/mapclient/MapClientService;->sMapClientService:Lcom/android/bluetooth/mapclient/MapClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit v0

    return-void

    .line 79
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MapClientService;->removeUncleanAccounts()V

    .line 341
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MapClientService;->setMapClientService(Lcom/android/bluetooth/mapclient/MapClientService;)V

    .line 342
    return-void
.end method

.method public cleanupDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/mapclient/MceStateMachine;

    .line 359
    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_0
    monitor-exit v0

    .line 369
    return-void

    .line 362
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    monitor-enter p0

    .line 95
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/mapclient/MapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    if-eqz p1, :cond_6

    .line 106
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    const-string v0, "MapClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection not allowed: <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "> is CONNECTION_POLICY_FORBIDDEN"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return v1

    .line 111
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/mapclient/MceStateMachine;

    .line 112
    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 114
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v3, 0x4

    if-ge v0, v3, :cond_1

    .line 115
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->addDeviceToMapAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    monitor-exit p0

    return v2

    .line 120
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MapClientService;->removeUncleanAccounts()V

    .line 121
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge v0, v3, :cond_2

    .line 122
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->addDeviceToMapAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 123
    monitor-exit p0

    return v2

    .line 125
    :cond_2
    :try_start_3
    const-string v0, "MapClientService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Maxed out on the number of allowed MAP connections. Connect request rejected on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 127
    monitor-exit p0

    return v1

    .line 133
    :cond_3
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 134
    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_0

    .line 145
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-direct {p0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->addDeviceToMapAndConnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 153
    monitor-exit p0

    return v2

    .line 136
    :cond_5
    :goto_0
    :try_start_5
    const-string p1, "MapClientService"

    const-string v0, "Received connect request while already connecting/connected."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 137
    monitor-exit p0

    return v2

    .line 98
    :cond_6
    :try_start_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 94
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    monitor-enter p0

    .line 164
    :try_start_0
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/mapclient/MapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/mapclient/MceStateMachine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 175
    monitor-exit p0

    return v0

    .line 177
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getState()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    .line 180
    monitor-exit p0

    return v0

    .line 182
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->disconnect()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    monitor-exit p0

    return v3

    .line 163
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 419
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 420
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

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

    check-cast v1, Lcom/android/bluetooth/mapclient/MceStateMachine;

    .line 421
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 422
    goto :goto_0

    .line 423
    :cond_0
    return-void
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

    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/mapclient/MapClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 269
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/mapclient/MapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 272
    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 271
    return p1
.end method

.method public declared-synchronized getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    monitor-enter p0

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/mapclient/MceStateMachine;

    .line 221
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getState()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    :goto_0
    monitor-exit p0

    return p1

    .line 218
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 202
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 203
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 205
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 206
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/mapclient/MapClientService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 208
    const/4 v4, 0x0

    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_1

    .line 209
    aget v5, p1, v4

    if-ne v3, v5, :cond_0

    .line 210
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 213
    :cond_1
    goto :goto_0

    .line 215
    :cond_2
    monitor-exit p0

    return-object v0

    .line 201
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getInstanceMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/mapclient/MceStateMachine;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    return-object v0
.end method

.method getMceStateMachineForDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/mapclient/MceStateMachine;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/mapclient/MceStateMachine;

    return-object p1
.end method

.method public declared-synchronized getSupportedFeatures(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/mapclient/MceStateMachine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 410
    if-nez p1, :cond_0

    .line 412
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 414
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getSupportedFeatures()I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 408
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUnreadMessages(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    monitor-enter p0

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/mapclient/MceStateMachine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 397
    if-nez p1, :cond_0

    .line 398
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 400
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getUnreadMessages()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 395
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 284
    new-instance v0, Lcom/android/bluetooth/mapclient/MapClientService$Binder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/mapclient/MapClientService$Binder;-><init>(Lcom/android/bluetooth/mapclient/MapClientService;)V

    return-object v0
.end method

.method removeUncleanAccounts()V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 380
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    nop

    .line 382
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 383
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getState()I

    move-result v1

    if-nez v1, :cond_0

    .line 384
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 386
    :cond_0
    goto :goto_0

    .line 393
    :cond_1
    return-void
.end method

.method public declared-synchronized sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z
    .locals 1

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/mapclient/MceStateMachine;

    .line 278
    if-eqz p1, :cond_0

    .line 279
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/bluetooth/mapclient/MceStateMachine;->sendMapMessage([Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 278
    :goto_0
    monitor-exit p0

    return p1

    .line 276
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 244
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/mapclient/MapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 247
    const/16 v1, 0x12

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 248
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 250
    :cond_0
    if-nez p2, :cond_1

    .line 251
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/mapclient/MapClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 253
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected declared-synchronized start()Z
    .locals 2

    monitor-enter p0

    .line 289
    :try_start_0
    const-string v0, "MapClientService"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMnsServer:Lcom/android/bluetooth/mapclient/MnsService;

    if-nez v0, :cond_0

    .line 292
    invoke-static {p0}, Lcom/android/bluetooth/mapclient/MapUtils;->newMnsServiceInstance(Lcom/android/bluetooth/mapclient/MapClientService;)Lcom/android/bluetooth/mapclient/MnsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMnsServer:Lcom/android/bluetooth/mapclient/MnsService;

    .line 293
    if-nez v0, :cond_0

    .line 295
    const-string v0, "MapClientService"

    const-string v1, "MnsService is *not* created!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 300
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 302
    new-instance v0, Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;-><init>(Lcom/android/bluetooth/mapclient/MapClientService;Lcom/android/bluetooth/mapclient/MapClientService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapReceiver:Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;

    .line 303
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 304
    const-string v1, "android.bluetooth.device.action.SDP_RECORD"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 305
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapReceiver:Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/mapclient/MapClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MapClientService;->removeUncleanAccounts()V

    .line 308
    invoke-static {p0}, Lcom/android/bluetooth/mapclient/MapClientService;->setMapClientService(Lcom/android/bluetooth/mapclient/MapClientService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 309
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized stop()Z
    .locals 4

    monitor-enter p0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapReceiver:Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapReceiver:Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/mapclient/MapClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapReceiver:Lcom/android/bluetooth/mapclient/MapClientService$MapBroadcastReceiver;

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMnsServer:Lcom/android/bluetooth/mapclient/MnsService;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMnsServer:Lcom/android/bluetooth/mapclient/MnsService;

    invoke-virtual {v0}, Lcom/android/bluetooth/mapclient/MnsService;->stop()V

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MapClientService;->mMapInstanceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/mapclient/MceStateMachine;

    .line 326
    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 327
    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->disconnect()Z

    .line 329
    :cond_2
    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->doQuit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    goto :goto_0

    .line 331
    :cond_3
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 317
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
