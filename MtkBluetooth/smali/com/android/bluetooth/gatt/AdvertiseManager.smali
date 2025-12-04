.class Lcom/android/bluetooth/gatt/AdvertiseManager;
.super Ljava/lang/Object;
.source "AdvertiseManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;,
        Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "BtGatt.AdvertiseManager"

.field static sTempRegistrationId:I


# instance fields
.field private final mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field mAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/bluetooth/gatt/GattService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget-boolean v0, Lcom/android/bluetooth/gatt/GattServiceConfig;->DBG:Z

    sput-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    .line 51
    const/4 v0, -0x1

    sput v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->sTempRegistrationId:I

    .line 449
    invoke-static {}, Lcom/android/bluetooth/gatt/AdvertiseManager;->classInitNative()V

    .line 450
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/gatt/GattService;Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertisers:Ljava/util/Map;

    .line 57
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "BtGatt.AdvertiseManager"

    const-string v1, "advertise manager created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mService:Lcom/android/bluetooth/gatt/GattService;

    .line 61
    iput-object p2, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 62
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    return v0
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native enableAdvertisingSetNative(IZII)V
.end method

.method private native getOwnAddressNative(I)V
.end method

.method private native initializeNative()V
.end method

.method private native setAdvertisingDataNative(I[B)V
.end method

.method private native setAdvertisingParametersNative(ILandroid/bluetooth/le/AdvertisingSetParameters;)V
.end method

.method private native setPeriodicAdvertisingDataNative(I[B)V
.end method

.method private native setPeriodicAdvertisingEnableNative(IZ)V
.end method

.method private native setPeriodicAdvertisingParametersNative(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V
.end method

.method private native setScanResponseDataNative(I[B)V
.end method

.method private native startAdvertisingSetNative(Landroid/bluetooth/le/AdvertisingSetParameters;[B[BLandroid/bluetooth/le/PeriodicAdvertisingParameters;[BIII)V
.end method

.method private native stopAdvertisingSetNative(I)V
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .line 75
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 76
    const-string v0, "BtGatt.AdvertiseManager"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->cleanupNative()V

    .line 79
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 80
    const/4 v0, -0x1

    sput v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->sTempRegistrationId:I

    .line 82
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 89
    :cond_1
    iput-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Landroid/os/Handler;

    .line 91
    :cond_2
    return-void
.end method

.method enableAdvertisingSet(IZII)V
    .locals 1

    .line 269
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 270
    if-nez v0, :cond_0

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "enableAdvertisingSet() - bad advertiserId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtGatt.AdvertiseManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void

    .line 274
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/bluetooth/gatt/AdvertiseManager;->enableAdvertisingSetNative(IZII)V

    .line 275
    return-void
.end method

.method findAdvertiser(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "Landroid/os/IBinder;",
            "Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;",
            ">;"
        }
    .end annotation

    .line 129
    nop

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertisers:Ljava/util/Map;

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

    .line 131
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v2, v2, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->id:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 132
    nop

    .line 133
    goto :goto_1

    .line 135
    :cond_0
    goto :goto_0

    .line 130
    :cond_1
    const/4 v1, 0x0

    .line 136
    :goto_1
    return-object v1
.end method

.method getOwnAddress(I)V
    .locals 2

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 231
    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getOwnAddress() - bad advertiserId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BtGatt.AdvertiseManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 235
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->getOwnAddressNative(I)V

    .line 236
    return-void
.end method

.method onAdvertisingDataSet(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 339
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    const-string v1, "BtGatt.AdvertiseManager"

    if-eqz v0, :cond_0

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdvertisingDataSet() advertiserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 345
    if-nez v0, :cond_1

    .line 346
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onAdvertisingDataSet() - bad advertiserId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    return-void

    .line 350
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 351
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/le/IAdvertisingSetCallback;->onAdvertisingDataSet(II)V

    .line 352
    return-void
.end method

.method onAdvertisingEnabled(IZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 170
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    const-string v1, "BtGatt.AdvertiseManager"

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdvertisingSetEnabled() - advertiserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", enable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 176
    if-nez v0, :cond_1

    .line 177
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAdvertisingSetEnable() - no callback found for advertiserId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 182
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 183
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/le/IAdvertisingSetCallback;->onAdvertisingEnabled(IZI)V

    .line 184
    return-void
.end method

.method onAdvertisingParametersUpdated(III)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 372
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    const-string v1, "BtGatt.AdvertiseManager"

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdvertisingParametersUpdated() advertiserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", txPower="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 379
    if-nez v0, :cond_1

    .line 380
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAdvertisingParametersUpdated() - bad advertiserId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void

    .line 384
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 385
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/le/IAdvertisingSetCallback;->onAdvertisingParametersUpdated(III)V

    .line 386
    return-void
.end method

.method onAdvertisingSetStarted(IIII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    const-string v1, "BtGatt.AdvertiseManager"

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAdvertisingSetStarted() - regId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", advertiserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 149
    if-nez v0, :cond_1

    .line 150
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onAdvertisingSetStarted() - no callback found for regId "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    invoke-direct {p0, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->stopAdvertisingSetNative(I)V

    .line 153
    return-void

    .line 156
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object p1, p1, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 157
    if-nez p4, :cond_2

    .line 158
    new-instance v1, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    .line 159
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v3, v3, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->deathRecipient:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;-><init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/Integer;Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;Landroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 158
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 161
    :cond_2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 162
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->deathRecipient:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 163
    iget-object v0, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertisers:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :goto_0
    invoke-interface {p1, p2, p3, p4}, Landroid/bluetooth/le/IAdvertisingSetCallback;->onAdvertisingSetStarted(III)V

    .line 167
    return-void
.end method

.method onOwnAddressRead(IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 215
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    const-string v1, "BtGatt.AdvertiseManager"

    if-eqz v0, :cond_0

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOwnAddressRead() advertiserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 220
    if-nez v0, :cond_1

    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onOwnAddressRead() - bad advertiserId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 225
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 226
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/le/IAdvertisingSetCallback;->onOwnAddressRead(IILjava/lang/String;)V

    .line 227
    return-void
.end method

.method onPeriodicAdvertisingDataSet(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 406
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    const-string v1, "BtGatt.AdvertiseManager"

    if-eqz v0, :cond_0

    .line 407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeriodicAdvertisingDataSet() advertiserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 412
    if-nez v0, :cond_1

    .line 413
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPeriodicAdvertisingDataSet() - bad advertiserId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-void

    .line 417
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 418
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/le/IAdvertisingSetCallback;->onPeriodicAdvertisingDataSet(II)V

    .line 419
    return-void
.end method

.method onPeriodicAdvertisingEnabled(IZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 423
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    const-string v1, "BtGatt.AdvertiseManager"

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeriodicAdvertisingEnabled() advertiserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 429
    if-nez v0, :cond_1

    .line 430
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAdvertisingSetEnable() - bad advertiserId "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void

    .line 434
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 435
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/le/IAdvertisingSetCallback;->onPeriodicAdvertisingEnabled(IZI)V

    .line 436
    return-void
.end method

.method onPeriodicAdvertisingParametersUpdated(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 389
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    const-string v1, "BtGatt.AdvertiseManager"

    if-eqz v0, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPeriodicAdvertisingParametersUpdated() advertiserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 395
    if-nez v0, :cond_1

    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPeriodicAdvertisingParametersUpdated() - bad advertiserId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    return-void

    .line 401
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 402
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/le/IAdvertisingSetCallback;->onPeriodicAdvertisingParametersUpdated(II)V

    .line 403
    return-void
.end method

.method onScanResponseDataSet(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 355
    sget-boolean v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    const-string v1, "BtGatt.AdvertiseManager"

    if-eqz v0, :cond_0

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanResponseDataSet() advertiserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 361
    if-nez v0, :cond_1

    .line 362
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onScanResponseDataSet() - bad advertiserId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return-void

    .line 366
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v0, v0, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 367
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/le/IAdvertisingSetCallback;->onScanResponseDataSet(II)V

    .line 368
    return-void
.end method

.method setAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    .locals 1

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 279
    if-nez v0, :cond_0

    .line 280
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAdvertisingData() - bad advertiserId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtGatt.AdvertiseManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void

    .line 283
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v0

    .line 284
    nop

    .line 285
    invoke-static {p2, v0}, Lcom/android/bluetooth/gatt/AdvertiseHelper;->advertiseDataToBytes(Landroid/bluetooth/le/AdvertiseData;Ljava/lang/String;)[B

    move-result-object p2

    .line 284
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setAdvertisingDataNative(I[B)V

    .line 286
    return-void
.end method

.method setAdvertisingParameters(ILandroid/bluetooth/le/AdvertisingSetParameters;)V
    .locals 1

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 301
    if-nez v0, :cond_0

    .line 302
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setAdvertisingParameters() - bad advertiserId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtGatt.AdvertiseManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    .line 305
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setAdvertisingParametersNative(ILandroid/bluetooth/le/AdvertisingSetParameters;)V

    .line 306
    return-void
.end method

.method setPeriodicAdvertisingData(ILandroid/bluetooth/le/AdvertiseData;)V
    .locals 1

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 320
    if-nez v0, :cond_0

    .line 321
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPeriodicAdvertisingData() - bad advertiserId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtGatt.AdvertiseManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 324
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v0

    .line 325
    nop

    .line 326
    invoke-static {p2, v0}, Lcom/android/bluetooth/gatt/AdvertiseHelper;->advertiseDataToBytes(Landroid/bluetooth/le/AdvertiseData;Ljava/lang/String;)[B

    move-result-object p2

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setPeriodicAdvertisingDataNative(I[B)V

    .line 327
    return-void
.end method

.method setPeriodicAdvertisingEnable(IZ)V
    .locals 1

    .line 330
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 331
    if-nez v0, :cond_0

    .line 332
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPeriodicAdvertisingEnable() - bad advertiserId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtGatt.AdvertiseManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void

    .line 335
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setPeriodicAdvertisingEnableNative(IZ)V

    .line 336
    return-void
.end method

.method setPeriodicAdvertisingParameters(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V
    .locals 1

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 311
    if-nez v0, :cond_0

    .line 312
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setPeriodicAdvertisingParameters() - bad advertiserId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtGatt.AdvertiseManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return-void

    .line 315
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setPeriodicAdvertisingParametersNative(ILandroid/bluetooth/le/PeriodicAdvertisingParameters;)V

    .line 316
    return-void
.end method

.method setScanResponseData(ILandroid/bluetooth/le/AdvertiseData;)V
    .locals 1

    .line 289
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->findAdvertiser(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 290
    if-nez v0, :cond_0

    .line 291
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setScanResponseData() - bad advertiserId "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BtGatt.AdvertiseManager"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 294
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v0

    .line 295
    nop

    .line 296
    invoke-static {p2, v0}, Lcom/android/bluetooth/gatt/AdvertiseHelper;->advertiseDataToBytes(Landroid/bluetooth/le/AdvertiseData;Ljava/lang/String;)[B

    move-result-object p2

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/gatt/AdvertiseManager;->setScanResponseDataNative(I[B)V

    .line 297
    return-void
.end method

.method start()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->initializeNative()V

    .line 69
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BluetoothAdvertiseManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 71
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mHandler:Landroid/os/Handler;

    .line 72
    return-void
.end method

.method startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V
    .locals 11

    .line 190
    move-object v0, p0

    move-object/from16 v1, p8

    new-instance v2, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;

    invoke-direct {v2, p0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;-><init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Landroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 191
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->toBinder(Landroid/bluetooth/le/IAdvertisingSetCallback;)Landroid/os/IBinder;

    move-result-object v3

    .line 193
    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    nop

    .line 198
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/bluetooth/btservice/AdapterService;->getName()Ljava/lang/String;

    move-result-object v4

    .line 199
    move-object v5, p2

    invoke-static {p2, v4}, Lcom/android/bluetooth/gatt/AdvertiseHelper;->advertiseDataToBytes(Landroid/bluetooth/le/AdvertiseData;Ljava/lang/String;)[B

    move-result-object v5

    .line 200
    move-object v6, p3

    invoke-static {p3, v4}, Lcom/android/bluetooth/gatt/AdvertiseHelper;->advertiseDataToBytes(Landroid/bluetooth/le/AdvertiseData;Ljava/lang/String;)[B

    move-result-object v6

    .line 201
    move-object/from16 v7, p5

    invoke-static {v7, v4}, Lcom/android/bluetooth/gatt/AdvertiseHelper;->advertiseDataToBytes(Landroid/bluetooth/le/AdvertiseData;Ljava/lang/String;)[B

    move-result-object v7

    .line 203
    sget v4, Lcom/android/bluetooth/gatt/AdvertiseManager;->sTempRegistrationId:I

    add-int/lit8 v9, v4, -0x1

    sput v9, Lcom/android/bluetooth/gatt/AdvertiseManager;->sTempRegistrationId:I

    .line 204
    iget-object v4, v0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertisers:Ljava/util/Map;

    new-instance v8, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, p0, v10, v2, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;-><init>(Lcom/android/bluetooth/gatt/AdvertiseManager;Ljava/lang/Integer;Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;Landroid/bluetooth/le/IAdvertisingSetCallback;)V

    invoke-interface {v4, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-boolean v1, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    if-eqz v1, :cond_0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAdvertisingSet() - reg_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", callback: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BtGatt.AdvertiseManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, v5

    move-object v4, v6

    move-object v5, p4

    move-object v6, v7

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/bluetooth/gatt/AdvertiseManager;->startAdvertisingSetNative(Landroid/bluetooth/le/AdvertisingSetParameters;[B[BLandroid/bluetooth/le/PeriodicAdvertisingParameters;[BIII)V

    .line 211
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t link to advertiser\'s death"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V
    .locals 5

    .line 239
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->toBinder(Landroid/bluetooth/le/IAdvertisingSetCallback;)Landroid/os/IBinder;

    move-result-object v0

    .line 240
    sget-boolean v1, Lcom/android/bluetooth/gatt/AdvertiseManager;->DBG:Z

    const-string v2, "BtGatt.AdvertiseManager"

    if-eqz v1, :cond_0

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopAdvertisingSet() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertisers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    .line 245
    if-nez v1, :cond_1

    .line 246
    const-string p1, "stopAdvertisingSet() - no client found for callback"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return-void

    .line 250
    :cond_1
    iget-object v3, v1, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->id:Ljava/lang/Integer;

    .line 251
    iget-object v1, v1, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->deathRecipient:Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertisingSetDeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 253
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    .line 254
    const-string p1, "stopAdvertisingSet() - advertiser not finished registration yet"

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void

    .line 259
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/gatt/AdvertiseManager;->stopAdvertisingSetNative(I)V

    .line 262
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/bluetooth/le/IAdvertisingSetCallback;->onAdvertisingSetStopped(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    goto :goto_0

    .line 263
    :catch_0
    move-exception p1

    .line 264
    const-string v0, "error sending onAdvertisingSetStopped callback"

    invoke-static {v2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 266
    :goto_0
    return-void
.end method

.method stopAdvertisingSets()V
    .locals 2

    .line 440
    const-string v0, "BtGatt.AdvertiseManager"

    const-string v1, "stopAdvertisingSets() -- stop all advertisers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/bluetooth/gatt/AdvertiseManager;->mAdvertisers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 442
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;

    iget-object v1, v1, Lcom/android/bluetooth/gatt/AdvertiseManager$AdvertiserInfo;->callback:Landroid/bluetooth/le/IAdvertisingSetCallback;

    .line 443
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/gatt/AdvertiseManager;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V

    .line 444
    goto :goto_0

    .line 445
    :cond_0
    return-void
.end method

.method toBinder(Landroid/bluetooth/le/IAdvertisingSetCallback;)Landroid/os/IBinder;
    .locals 0

    .line 109
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
