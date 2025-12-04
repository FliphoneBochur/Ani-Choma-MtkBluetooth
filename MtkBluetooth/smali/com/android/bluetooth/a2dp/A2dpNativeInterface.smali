.class public Lcom/android/bluetooth/a2dp/A2dpNativeInterface;
.super Ljava/lang/Object;
.source "A2dpNativeInterface.java"


# static fields
.field private static final DBG:Z

.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "A2dpNativeInterface"

.field private static sInstance:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    nop

    .line 41
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->DBG:Z

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 49
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->classInitNative()V

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 55
    if-nez v0, :cond_0

    .line 56
    const-string v0, "A2dpNativeInterface"

    const-string v1, "No Bluetooth Adapter Available"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_0
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectA2dpNative([B)Z
.end method

.method private native disconnectA2dpNative([B)Z
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 0

    .line 151
    if-nez p1, :cond_0

    .line 152
    const-string p1, "00:00:00:00:00:00"

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/android/bluetooth/a2dp/A2dpNativeInterface;
    .locals 2

    .line 64
    sget-object v0, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->sInstance:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    if-nez v1, :cond_0

    .line 66
    new-instance v1, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    invoke-direct {v1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;-><init>()V

    sput-object v1, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->sInstance:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    .line 68
    :cond_0
    sget-object v1, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->sInstance:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    monitor-exit v0

    return-object v1

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native initNative(I[Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)V
.end method

.method private isMandatoryCodecPreferred([B)Z
    .locals 4

    .line 209
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 210
    const/4 v1, 0x0

    const-string v2, "A2dpNativeInterface"

    if-eqz v0, :cond_2

    .line 211
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    .line 212
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->DBG:Z

    if-eqz v0, :cond_0

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMandatoryCodecPreferred: optional preference "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 218
    :cond_2
    const-string p1, "isMandatoryCodecPreferred: service not available"

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return v1
.end method

.method private onAudioStateChanged([BI)V
    .locals 2

    .line 183
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStackEvent;-><init>(I)V

    .line 184
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 185
    iput p2, v0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    .line 187
    sget-boolean p1, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->DBG:Z

    if-eqz p1, :cond_0

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAudioStateChanged: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "A2dpNativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->sendMessageToService(Lcom/android/bluetooth/a2dp/A2dpStackEvent;)V

    .line 191
    return-void
.end method

.method private onCodecConfigChanged([BLandroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 2

    .line 197
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStackEvent;-><init>(I)V

    .line 198
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 199
    new-instance p1, Landroid/bluetooth/BluetoothCodecStatus;

    invoke-direct {p1, p2, p3, p4}, Landroid/bluetooth/BluetoothCodecStatus;-><init>(Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)V

    iput-object p1, v0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->codecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    .line 202
    sget-boolean p1, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->DBG:Z

    if-eqz p1, :cond_0

    .line 203
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCodecConfigChanged: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "A2dpNativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->sendMessageToService(Lcom/android/bluetooth/a2dp/A2dpStackEvent;)V

    .line 206
    return-void
.end method

.method private onConnectionStateChanged([BI)V
    .locals 2

    .line 171
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStackEvent;-><init>(I)V

    .line 173
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 174
    iput p2, v0, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    .line 176
    sget-boolean p1, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->DBG:Z

    if-eqz p1, :cond_0

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onConnectionStateChanged: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "A2dpNativeInterface"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->sendMessageToService(Lcom/android/bluetooth/a2dp/A2dpStackEvent;)V

    .line 180
    return-void
.end method

.method private sendMessageToService(Lcom/android/bluetooth/a2dp/A2dpStackEvent;)V
    .locals 1

    .line 158
    invoke-static {}, Lcom/android/bluetooth/a2dp/A2dpService;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 159
    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->messageFromNative(Lcom/android/bluetooth/a2dp/A2dpStackEvent;)V

    goto :goto_0

    .line 162
    :cond_0
    const-string p1, "A2dpNativeInterface"

    const-string v0, "Event ignored, service not available"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    return-void
.end method

.method private native setActiveDeviceNative([B)Z
.end method

.method private native setCodecConfigPreferenceNative([B[Landroid/bluetooth/BluetoothCodecConfig;)Z
.end method

.method private native setSilenceDeviceNative([BZ)Z
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->cleanupNative()V

    .line 90
    return-void
.end method

.method public connectA2dp(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 99
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->connectA2dpNative([B)Z

    move-result p1

    return p1
.end method

.method public disconnectA2dp(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->disconnectA2dpNative([B)Z

    move-result p1

    return p1
.end method

.method public init(I[Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->initNative(I[Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)V

    .line 83
    return-void
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->setActiveDeviceNative([B)Z

    move-result p1

    return p1
.end method

.method public setCodecConfigPreference(Landroid/bluetooth/BluetoothDevice;[Landroid/bluetooth/BluetoothCodecConfig;)Z
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->setCodecConfigPreferenceNative([B[Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result p1

    return p1
.end method

.method public setSilenceDevice(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 0

    .line 119
    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->setSilenceDeviceNative([BZ)Z

    move-result p1

    return p1
.end method
