.class public Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;
.super Ljava/lang/Object;
.source "HearingAidNativeInterface.java"


# static fields
.field private static final DBG:Z = true

.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "HearingAidNativeInterface"

.field private static sInstance:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->classInitNative()V

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 50
    if-nez v0, :cond_0

    .line 51
    const-string v0, "HearingAidNativeInterface"

    const-string v1, "No Bluetooth Adapter Available"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
.end method

.method private native addToWhiteListNative([B)Z
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectHearingAidNative([B)Z
.end method

.method private native disconnectHearingAidNative([B)Z
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 0

    .line 132
    if-nez p1, :cond_0

    .line 133
    const-string p1, "00:00:00:00:00:00"

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;
    .locals 2

    .line 59
    sget-object v0, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->sInstance:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    if-nez v1, :cond_0

    .line 61
    new-instance v1, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    invoke-direct {v1}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;-><init>()V

    sput-object v1, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->sInstance:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    .line 63
    :cond_0
    sget-object v1, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->sInstance:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    monitor-exit v0

    return-object v1

    .line 64
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native initNative()V
.end method

.method private onConnectionStateChanged(I[B)V
    .locals 2

    .line 152
    new-instance v0, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;-><init>(I)V

    .line 154
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    iput-object p2, v0, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 155
    iput p1, v0, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->valueInt1:I

    .line 158
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onConnectionStateChanged: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HearingAidNativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;)V

    .line 161
    return-void
.end method

.method private onDeviceAvailable(BJ[B)V
    .locals 2

    .line 164
    new-instance v0, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;-><init>(I)V

    .line 166
    invoke-direct {p0, p4}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p4

    iput-object p4, v0, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 167
    iput p1, v0, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->valueInt1:I

    .line 168
    iput-wide p2, v0, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->valueLong2:J

    .line 171
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onDeviceAvailable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HearingAidNativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;)V

    .line 174
    return-void
.end method

.method private sendMessageToService(Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;)V
    .locals 2

    .line 139
    invoke-static {}, Lcom/android/bluetooth/hearingaid/HearingAidService;->getHearingAidService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->messageFromNative(Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;)V

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event ignored, service not available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HearingAidNativeInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :goto_0
    return-void
.end method

.method private native setVolumeNative(I)V
.end method


# virtual methods
.method public addToWhiteList(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->addToWhiteListNative([B)Z

    move-result p1

    return p1
.end method

.method public cleanup()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->cleanupNative()V

    .line 83
    return-void
.end method

.method public connectHearingAid(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->connectHearingAidNative([B)Z

    move-result p1

    return p1
.end method

.method public disconnectHearingAid(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->disconnectHearingAidNative([B)Z

    move-result p1

    return p1
.end method

.method public init()V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->initNative()V

    .line 75
    return-void
.end method

.method public setVolume(I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->setVolumeNative(I)V

    .line 125
    return-void
.end method
