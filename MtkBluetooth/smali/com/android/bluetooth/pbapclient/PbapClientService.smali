.class public Lcom/android/bluetooth/pbapclient/PbapClientService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "PbapClientService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;,
        Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MAXIMUM_DEVICES:I = 0xa

.field private static final SERVICE_NAME:Ljava/lang/String; = "Phonebook Access PCE"

.field private static final TAG:Ljava/lang/String; = "PbapClientService"

.field private static final VDBG:Z = false

.field private static sPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;


# instance fields
.field private mPbapBroadcastReceiver:Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;

.field private mPbapClientStateMachineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mSdpHandle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    .line 60
    new-instance v0, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientService;Lcom/android/bluetooth/pbapclient/PbapClientService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapBroadcastReceiver:Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mSdpHandle:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pbapclient/PbapClientService;)Ljava/util/Map;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pbapclient/PbapClientService;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbapclient/PbapClientService;->removeHfpCallLog(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pbapclient/PbapClientService;)Z
    .locals 0

    .line 49
    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/pbapclient/PbapClientService;[I)Ljava/util/List;
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private cleanUpSdpRecord()V
    .locals 5

    .line 163
    iget v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mSdpHandle:I

    const-string v1, "PbapClientService"

    if-gez v0, :cond_0

    .line 164
    const-string v0, "cleanUpSdpRecord, SDP record never created"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void

    .line 167
    :cond_0
    nop

    .line 168
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mSdpHandle:I

    .line 169
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v2

    .line 170
    if-nez v2, :cond_1

    .line 171
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpSdpRecord failed, sdpManager is null, sdpHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 174
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cleanUpSdpRecord, mSdpHandle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-virtual {v2, v0}, Lcom/android/bluetooth/sdp/SdpManager;->removeSdpRecord(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpSdpRecord, removeSdpRecord failed, sdpHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_2
    return-void
.end method

.method private getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 387
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 390
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    .line 391
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 390
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 392
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-virtual {v4}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getConnectionState()I

    move-result v4

    .line 393
    array-length v5, p1

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    aget v7, p1, v6

    .line 394
    if-ne v4, v7, :cond_0

    .line 395
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    goto :goto_2

    .line 393
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 399
    :cond_1
    :goto_2
    goto :goto_0

    .line 400
    :cond_2
    return-object v0
.end method

.method public static declared-synchronized getPbapClientService()Lcom/android/bluetooth/pbapclient/PbapClientService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/pbapclient/PbapClientService;

    monitor-enter v0

    .line 314
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/pbapclient/PbapClientService;->sPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 315
    const-string v1, "PbapClientService"

    const-string v3, "getPbapClientService(): service is null"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit v0

    return-object v2

    .line 318
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/pbapclient/PbapClientService;->sPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    const-string v1, "PbapClientService"

    const-string v3, "getPbapClientService(): service is not available"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 320
    monitor-exit v0

    return-object v2

    .line 322
    :cond_1
    :try_start_2
    sget-object v1, Lcom/android/bluetooth/pbapclient/PbapClientService;->sPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 313
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private registerSdpRecord()V
    .locals 3

    .line 153
    invoke-static {}, Lcom/android/bluetooth/sdp/SdpManager;->getDefaultManager()Lcom/android/bluetooth/sdp/SdpManager;

    move-result-object v0

    .line 154
    if-nez v0, :cond_0

    .line 155
    const-string v0, "PbapClientService"

    const-string v1, "SdpManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 158
    :cond_0
    const/16 v1, 0x102

    const-string v2, "Phonebook Access PCE"

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/sdp/SdpManager;->createPbapPceRecord(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mSdpHandle:I

    .line 160
    return-void
.end method

.method private removeHfpCallLog(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3

    .line 141
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-direct {v0, p2, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    const-string p2, "subscription_id=? AND subscription_component_name=?"

    .line 144
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 146
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception p1

    .line 148
    const-string p1, "PbapClientService"

    const-string p2, "Call Logs could not be deleted, they may not exist yet."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void
.end method

.method private removeUncleanAccounts()V
    .locals 12

    .line 120
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 121
    nop

    .line 122
    const v1, 0x7f0e006d

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 124
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PbapClientService"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v8, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v9, "subscription_id=?"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    iget-object v11, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v10, v3

    invoke-virtual {v6, v8, v9, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_1

    .line 129
    :catch_0
    move-exception v6

    .line 130
    const-string v6, "Call Logs could not be deleted, they may not exist yet."

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :goto_1
    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->removeAccountExplicitly(Landroid/accounts/Account;)Z

    .line 124
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method private static declared-synchronized setPbapClientService(Lcom/android/bluetooth/pbapclient/PbapClientService;)V
    .locals 1

    const-class v0, Lcom/android/bluetooth/pbapclient/PbapClientService;

    monitor-enter v0

    .line 329
    :try_start_0
    sput-object p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->sPbapClientService:Lcom/android/bluetooth/pbapclient/PbapClientService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    monitor-exit v0

    return-void

    .line 328
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method cleanupDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    monitor-enter v0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 112
    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    :cond_0
    monitor-exit v0

    .line 116
    return-void

    .line 115
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 333
    if-eqz p1, :cond_2

    .line 336
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 340
    return v1

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 344
    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    .line 345
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 346
    new-instance v1, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-direct {v1, p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientService;Landroid/bluetooth/BluetoothDevice;)V

    .line 347
    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->start()V

    .line 348
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 351
    :cond_1
    const-string p1, "PbapClientService"

    const-string v2, "Received connect request while already connecting/connected."

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    monitor-exit v0

    return v1

    .line 354
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 334
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 364
    if-eqz p1, :cond_1

    .line 367
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 370
    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->disconnect(Landroid/bluetooth/BluetoothDevice;)V

    .line 372
    const/4 p1, 0x1

    return p1

    .line 375
    :cond_0
    const-string p1, "PbapClientService"

    const-string v0, "disconnect() called on unconnected device."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const/4 p1, 0x0

    return p1

    .line 365
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 483
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 484
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

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

    check-cast v1, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 485
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 486
    goto :goto_0

    .line 487
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

    .line 381
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    .line 383
    invoke-direct {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 472
    if-eqz p1, :cond_0

    .line 475
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/16 v1, 0x11

    .line 478
    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 477
    return p1

    .line 473
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 413
    if-eqz p1, :cond_1

    .line 416
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 418
    if-nez v0, :cond_0

    .line 419
    const/4 p1, 0x0

    return p1

    .line 421
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1

    .line 414
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null device"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 65
    new-instance v0, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbapclient/PbapClientService$BluetoothPbapClientBinder;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientService;)V

    return-object v0
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 441
    if-eqz p1, :cond_2

    .line 444
    const-string v0, "android.permission.BLUETOOTH_PRIVILEGED"

    const-string v1, "Need BLUETOOTH_PRIVILEGED permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    const/16 v1, 0x11

    .line 450
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 451
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 452
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 453
    :cond_0
    if-nez p2, :cond_1

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 456
    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 442
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Null device"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected start()Z
    .locals 3

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    const-string v1, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapBroadcastReceiver:Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string v1, "PbapClientService"

    const-string v2, "Unable to register pbapclient receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->removeUncleanAccounts()V

    .line 87
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->registerSdpRecord()V

    .line 88
    invoke-static {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->setPbapClientService(Lcom/android/bluetooth/pbapclient/PbapClientService;)V

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method protected stop()Z
    .locals 3

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->setPbapClientService(Lcom/android/bluetooth/pbapclient/PbapClientService;)V

    .line 95
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->cleanUpSdpRecord()V

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapBroadcastReceiver:Lcom/android/bluetooth/pbapclient/PbapClientService$PbapBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    const-string v1, "PbapClientService"

    const-string v2, "Unable to unregister pbapclient receiver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientService;->mPbapClientStateMachineMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 102
    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->doQuit()V

    .line 103
    goto :goto_1

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbapclient/PbapClientService;->removeUncleanAccounts()V

    .line 105
    const/4 v0, 0x1

    return v0
.end method
