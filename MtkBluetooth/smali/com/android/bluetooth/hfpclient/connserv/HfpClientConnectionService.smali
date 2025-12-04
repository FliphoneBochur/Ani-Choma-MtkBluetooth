.class public Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;
.super Landroid/telecom/ConnectionService;
.source "HfpClientConnectionService.java"


# static fields
.field private static final DBG:Z = true

.field public static final HFP_SCHEME:Ljava/lang/String; = "hfpc"

.field private static final TAG:Ljava/lang/String; = "HfpClientConnService"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDeviceBlocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

.field mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Landroid/telecom/ConnectionService;-><init>()V

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDeviceBlocks:Ljava/util/Map;

    .line 61
    new-instance v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$1;-><init>(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    new-instance v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService$2;-><init>(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDeviceBlocks:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->disconnectAll()V

    return-void
.end method

.method public static createAccount(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Landroid/telecom/PhoneAccount;
    .locals 5

    .line 332
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hfpc"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 333
    new-instance v1, Landroid/telecom/PhoneAccountHandle;

    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 337
    nop

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f030008

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 342
    const/16 p0, 0x12

    goto :goto_0

    .line 338
    :cond_0
    const/4 p0, 0x2

    .line 345
    :goto_0
    new-instance v2, Landroid/telecom/PhoneAccount$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HFP "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Landroid/telecom/PhoneAccount$Builder;-><init>(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v0}, Landroid/telecom/PhoneAccount$Builder;->setAddress(Landroid/net/Uri;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object p1

    const-string v0, "tel"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/telecom/PhoneAccount$Builder;->setSupportedUriSchemes(Ljava/util/List;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object p1

    .line 348
    invoke-virtual {p1, p0}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object p0

    .line 349
    invoke-virtual {p0}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object p0

    .line 351
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phoneaccount: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HfpClientConnService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-object p0
.end method

.method private declared-synchronized disconnectAll()V
    .locals 2

    monitor-enter p0

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDeviceBlocks:Ljava/util/Map;

    .line 153
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->cleanup()V

    .line 155
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 157
    :cond_0
    monitor-exit p0

    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDevice(Landroid/telecom/PhoneAccountHandle;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object p1

    .line 266
    invoke-virtual {p1}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 267
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public static hasHfpClientEcc(Landroid/bluetooth/BluetoothHeadsetClient;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 357
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentAgEvents(Landroid/bluetooth/BluetoothDevice;)Landroid/os/Bundle;

    move-result-object p0

    .line 358
    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "android.bluetooth.headsetclient.extra.EXTRA_AG_FEATURE_ECC"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method


# virtual methods
.method declared-synchronized createBlockForDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;
    .locals 3

    monitor-enter p0

    .line 306
    :try_start_0
    const-string v0, "HfpClientConnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating block for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDeviceBlocks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "HfpClientConnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device already exists "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " blocks "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDeviceBlocks:Ljava/util/Map;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 312
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;-><init>(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothHeadsetClient;)V

    .line 313
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDeviceBlocks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    monitor-exit p0

    return-object v0

    .line 305
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized findBlockForDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;
    .locals 3

    monitor-enter p0

    .line 318
    :try_start_0
    const-string v0, "HfpClientConnService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finding block for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " blocks "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDeviceBlocks:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDeviceBlocks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 317
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized findBlockForHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;
    .locals 5

    monitor-enter p0

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 326
    const-string v2, "HfpClientConnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finding block for handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " device "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mDeviceBlocks:Ljava/util/Map;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 322
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 5

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpClientConnService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object v0, p1

    check-cast v0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 251
    move-object v2, p2

    check-cast v2, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 253
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot conference calls from two different devices bd1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " bd2 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " conn1 "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "connection2 "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->findBlockForDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;

    move-result-object v0

    .line 261
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    .line 262
    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 119
    invoke-super {p0}, Landroid/telecom/ConnectionService;->onCreate()V

    .line 121
    const-string v0, "HfpClientConnService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 124
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 125
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->clearPhoneAccounts()V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0x10

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 127
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 2

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateIncomingConnection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " req: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpClientConnService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->findBlockForHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;

    move-result-object p1

    .line 191
    if-nez p1, :cond_0

    .line 192
    const-string p1, "HfpClient does not support having a connection manager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 p1, 0x0

    return-object p1

    .line 197
    :cond_0
    nop

    .line 198
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "android.telecom.extra.INCOMING_CALL_EXTRAS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 199
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->onCreateIncomingConnection(Landroid/bluetooth/BluetoothHeadsetClientCall;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    move-result-object p1

    .line 200
    invoke-virtual {p1, p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setHfpClientConnectionService(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V

    .line 201
    return-object p1
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 2

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateOutgoingConnection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpClientConnService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->findBlockForHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;

    move-result-object p1

    .line 212
    if-nez p1, :cond_0

    .line 213
    const-string p1, "HfpClient does not support having a connection manager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 p1, 0x0

    return-object p1

    .line 216
    :cond_0
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getAddress()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->onCreateOutgoingConnection(Landroid/net/Uri;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    move-result-object p1

    .line 217
    invoke-virtual {p1, p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setHfpClientConnectionService(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V

    .line 218
    return-object p1
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateUnknownConnection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HfpClientConnService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->findBlockForHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;

    move-result-object p1

    .line 231
    if-nez p1, :cond_0

    .line 232
    const-string p1, "HfpClient does not support having a connection manager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/4 p1, 0x0

    return-object p1

    .line 237
    :cond_0
    nop

    .line 238
    invoke-virtual {p2}, Landroid/telecom/ConnectionRequest;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 239
    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientDeviceBlock;->onCreateUnknownConnection(Landroid/bluetooth/BluetoothHeadsetClientCall;)Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;

    move-result-object p1

    .line 240
    invoke-virtual {p1, p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnection;->setHfpClientConnectionService(Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;)V

    .line 241
    return-object p1
.end method

.method public onDestroy()V
    .locals 4

    .line 132
    const-string v0, "HfpClientConnService"

    const-string v1, "onDestroy called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mHeadsetProfile:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v3, 0x10

    invoke-virtual {v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 141
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    const-string v1, "Receiver was not registered."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->disconnectAll()V

    .line 149
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onStartCommand "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "HfpClientConnService"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    if-eqz p1, :cond_0

    const-string p2, "hfp_client_stop_tag"

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->stopSelf()V

    .line 171
    return p3

    .line 173
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 174
    const-string p2, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string p2, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p2, p1}, Lcom/android/bluetooth/hfpclient/connserv/HfpClientConnectionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    const/4 p1, 0x1

    return p1
.end method
