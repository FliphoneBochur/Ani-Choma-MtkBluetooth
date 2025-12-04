.class Lcom/android/bluetooth/gatt/PeriodicScanManager;
.super Ljava/lang/Object;
.source "PeriodicScanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;,
        Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "BtGatt.SyncManager"

.field static sTempRegistrationId:I


# instance fields
.field private final mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field mSyncs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->DBG:Z

    sput-boolean v0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->DBG:Z

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->sTempRegistrationId:I

    .line 227
    invoke-static {}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->classInitNative()V

    .line 228
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->mSyncs:Ljava/util/Map;

    .line 51
    sget-boolean v0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "BtGatt.SyncManager"

    const-string v1, "advertise manager created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 55
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->DBG:Z

    return v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native initializeNative()V
.end method

.method private native startSyncNative(ILjava/lang/String;III)V
.end method

.method private native stopSyncNative(I)V
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .line 62
    sget-boolean v0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 63
    const-string v0, "BtGatt.SyncManager"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->cleanupNative()V

    .line 66
    iget-object v0, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->mSyncs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 67
    const/4 v0, -0x1

    sput v0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->sTempRegistrationId:I

    .line 68
    return-void
.end method

.method findSync(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Landroid/os/IBinder;",
            "Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;",
            ">;"
        }
    .end annotation

    .line 106
    nop

    .line 107
    iget-object v0, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->mSyncs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;

    iget-object v2, v2, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 109
    nop

    .line 110
    goto :goto_1

    .line 112
    :cond_0
    goto :goto_0

    .line 107
    :cond_1
    const/4 v1, 0x0

    .line 113
    :goto_1
    return-object v1
.end method

.method onSyncLost(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 165
    sget-boolean v0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->DBG:Z

    const-string v1, "BtGatt.SyncManager"

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncLost() - syncHandle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->findSync(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 170
    if-nez v0, :cond_1

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncLost() - no callback found for syncHandle "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 175
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;

    iget-object v1, v1, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->callback:Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 176
    iget-object v2, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->mSyncs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {v1, p1}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;->onSyncLost(I)V

    .line 178
    return-void
.end method

.method onSyncReport(IIII[B)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    sget-boolean v0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->DBG:Z

    const-string v1, "BtGatt.SyncManager"

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSyncReport() - syncHandle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->findSync(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 152
    if-nez v0, :cond_1

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onSyncReport() - no callback found for syncHandle "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void

    .line 157
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;

    iget-object v0, v0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->callback:Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 158
    new-instance v7, Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 160
    invoke-static {p5}, Landroid/bluetooth/le/ScanRecord;->parseFromBytes([B)Landroid/bluetooth/le/ScanRecord;

    move-result-object v6

    move-object v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Landroid/bluetooth/le/PeriodicAdvertisingReport;-><init>(IIIILandroid/bluetooth/le/ScanRecord;)V

    .line 161
    invoke-interface {v0, v7}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback;->onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    .line 162
    return-void
.end method

.method onSyncStarted(IIIILjava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 118
    sget-boolean p3, Lcom/android/bluetooth/gatt/PeriodicScanManager;->DBG:Z

    const-string p4, "BtGatt.SyncManager"

    if-eqz p3, :cond_0

    .line 119
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onSyncStarted() - regId="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", syncHandle="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ", status="

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->findSync(I)Ljava/util/Map$Entry;

    move-result-object p3

    .line 125
    if-nez p3, :cond_1

    .line 126
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "onSyncStarted() - no callback found for regId "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0, p2}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->stopSyncNative(I)V

    .line 129
    return-void

    .line 132
    :cond_1
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;

    iget-object p1, p1, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->callback:Landroid/bluetooth/le/IPeriodicAdvertisingCallback;

    .line 133
    if-nez p8, :cond_2

    .line 134
    new-instance p4, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;

    iget-object p5, p5, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->deathRecipient:Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;

    invoke-direct {p4, p0, p2, p5, p1}, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;-><init>(Lcom/android/bluetooth/gatt/PeriodicScanManager;Ljava/lang/Integer;Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    invoke-interface {p3, p4}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 136
    :cond_2
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    .line 137
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;

    iget-object p2, p2, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->deathRecipient:Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 138
    iget-object p2, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->mSyncs:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :goto_0
    return-void
.end method

.method start()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->initializeNative()V

    .line 59
    return-void
.end method

.method startSync(Landroid/bluetooth/le/ScanResult;IILandroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    .locals 9

    .line 182
    new-instance v0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;

    invoke-direct {v0, p0, p4}, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/PeriodicScanManager;Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    .line 183
    invoke-virtual {p0, p4}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->toBinder(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)Landroid/os/IBinder;

    move-result-object v1

    .line 185
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    nop

    .line 190
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    .line 191
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getAdvertisingSid()I

    move-result v4

    .line 193
    sget p1, Lcom/android/bluetooth/gatt/PeriodicScanManager;->sTempRegistrationId:I

    add-int/lit8 v8, p1, -0x1

    sput v8, Lcom/android/bluetooth/gatt/PeriodicScanManager;->sTempRegistrationId:I

    .line 194
    iget-object p1, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->mSyncs:Ljava/util/Map;

    new-instance v2, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, p0, v3, v0, p4}, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;-><init>(Lcom/android/bluetooth/gatt/PeriodicScanManager;Ljava/lang/Integer;Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-boolean p1, Lcom/android/bluetooth/gatt/PeriodicScanManager;->DBG:Z

    if-eqz p1, :cond_0

    .line 197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "startSync() - reg_id="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", callback: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "BtGatt.SyncManager"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    move-object v3, p0

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->startSyncNative(ILjava/lang/String;III)V

    .line 200
    return-void

    .line 186
    :catch_0
    move-exception p1

    .line 187
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t link to periodic scanner death"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method stopSync(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)V
    .locals 4

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->toBinder(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)Landroid/os/IBinder;

    move-result-object p1

    .line 204
    sget-boolean v0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->DBG:Z

    const-string v1, "BtGatt.SyncManager"

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopSync() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/gatt/PeriodicScanManager;->mSyncs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;

    .line 209
    if-nez v0, :cond_1

    .line 210
    const-string p1, "stopSync() - no client found for callback"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 214
    :cond_1
    iget-object v2, v0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->id:Ljava/lang/Integer;

    .line 215
    iget-object v0, v0, Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncInfo;->deathRecipient:Lcom/android/bluetooth/gatt/PeriodicScanManager$SyncDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 217
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-gez p1, :cond_2

    .line 218
    const-string p1, "stopSync() - not finished registration yet"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 223
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/PeriodicScanManager;->stopSyncNative(I)V

    .line 224
    return-void
.end method

.method toBinder(Landroid/bluetooth/le/IPeriodicAdvertisingCallback;)Landroid/os/IBinder;
    .locals 0

    .line 86
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
