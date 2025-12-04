.class public Lcom/android/bluetooth/hid/HidDeviceNativeInterface;
.super Ljava/lang/Object;
.source "HidDeviceNativeInterface.java"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "HidDeviceNativeInterface"

.field private static sInstance:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 45
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->classInitNative()V

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 51
    if-nez v0, :cond_0

    .line 52
    const-string v0, "HidDeviceNativeInterface"

    const-string v1, "No Bluetooth Adapter Available"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method private static native classInitNative()V
.end method

.method private native cleanupNative()V
.end method

.method private native connectNative([B)Z
.end method

.method private native disconnectNative()Z
.end method

.method private getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B
    .locals 0

    .line 256
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getBytesFromAddress(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 249
    if-nez p1, :cond_0

    .line 250
    const/4 p1, 0x0

    return-object p1

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/android/bluetooth/hid/HidDeviceNativeInterface;
    .locals 2

    .line 60
    sget-object v0, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 61
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->sInstance:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    invoke-direct {v1}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;-><init>()V

    invoke-static {v1}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->setInstance(Lcom/android/bluetooth/hid/HidDeviceNativeInterface;)V

    .line 64
    :cond_0
    sget-object v1, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->sInstance:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    monitor-exit v0

    return-object v1

    .line 65
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native initNative()V
.end method

.method private declared-synchronized onApplicationStateChanged([BZ)V
    .locals 1

    monitor-enter p0

    .line 179
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->getHidDeviceService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidDeviceService;->onApplicationStateChangedFromNative(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 183
    :cond_0
    const-string p1, "HidDeviceNativeInterface"

    const-string p2, "FATAL: onApplicationStateChanged() is called from the stack while service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onConnectStateChanged([BI)V
    .locals 1

    monitor-enter p0

    .line 189
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->getHidDeviceService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 190
    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidDeviceService;->onConnectStateChangedFromNative(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_0

    .line 193
    :cond_0
    const-string p1, "HidDeviceNativeInterface"

    const-string p2, "FATAL: onConnectStateChanged() is called from the stack while service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onGetReport(BBS)V
    .locals 1

    monitor-enter p0

    .line 199
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->getHidDeviceService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 200
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidDeviceService;->onGetReportFromNative(BBS)V

    goto :goto_0

    .line 203
    :cond_0
    const-string p1, "HidDeviceNativeInterface"

    const-string p2, "FATAL: onGetReport() is called from the stack while service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onInterruptData(B[B)V
    .locals 1

    monitor-enter p0

    .line 229
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->getHidDeviceService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 230
    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {v0, p1, p2}, Lcom/android/bluetooth/hid/HidDeviceService;->onInterruptDataFromNative(B[B)V

    goto :goto_0

    .line 233
    :cond_0
    const-string p1, "HidDeviceNativeInterface"

    const-string p2, "FATAL: onInterruptData() is called from the stack while service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :goto_0
    monitor-exit p0

    return-void

    .line 228
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onSetProtocol(B)V
    .locals 1

    monitor-enter p0

    .line 219
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->getHidDeviceService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hid/HidDeviceService;->onSetProtocolFromNative(B)V

    goto :goto_0

    .line 223
    :cond_0
    const-string p1, "HidDeviceNativeInterface"

    const-string v0, "FATAL: onSetProtocol() is called from the stack while service is not available."

    invoke-static {p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :goto_0
    monitor-exit p0

    return-void

    .line 218
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onSetReport(BB[B)V
    .locals 1

    monitor-enter p0

    .line 209
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->getHidDeviceService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 210
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidDeviceService;->onSetReportFromNative(BB[B)V

    goto :goto_0

    .line 213
    :cond_0
    const-string p1, "HidDeviceNativeInterface"

    const-string p2, "FATAL: onSetReport() is called from the stack while service is not available."

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :goto_0
    monitor-exit p0

    return-void

    .line 208
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onVirtualCableUnplug()V
    .locals 2

    monitor-enter p0

    .line 239
    :try_start_0
    invoke-static {}, Lcom/android/bluetooth/hid/HidDeviceService;->getHidDeviceService()Lcom/android/bluetooth/hid/HidDeviceService;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/android/bluetooth/hid/HidDeviceService;->onVirtualCableUnplugFromNative()V

    goto :goto_0

    .line 243
    :cond_0
    const-string v0, "HidDeviceNativeInterface"

    const-string v1, "FATAL: onVirtualCableUnplug() is called from the stack while service is not available."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    :goto_0
    monitor-exit p0

    return-void

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native registerAppNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B[I[I)Z
.end method

.method private native replyReportNative(BB[B)Z
.end method

.method private native reportErrorNative(B)Z
.end method

.method private native sendReportNative(I[B)Z
.end method

.method private static setInstance(Lcom/android/bluetooth/hid/HidDeviceNativeInterface;)V
    .locals 0

    .line 74
    sput-object p0, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->sInstance:Lcom/android/bluetooth/hid/HidDeviceNativeInterface;

    .line 75
    return-void
.end method

.method private native unplugNative()Z
.end method

.method private native unregisterAppNative()Z
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->cleanupNative()V

    .line 89
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->connectNative([B)Z

    move-result p1

    return p1
.end method

.method public disconnect()Z
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->disconnectNative()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->initNative()V

    .line 82
    return-void
.end method

.method public registerApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B[I[I)Z
    .locals 0

    .line 105
    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->registerAppNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B[B[I[I)Z

    move-result p1

    return p1
.end method

.method public replyReport(BB[B)Z
    .locals 0

    .line 137
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->replyReportNative(BB[B)Z

    move-result p1

    return p1
.end method

.method public reportError(B)Z
    .locals 0

    .line 175
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->reportErrorNative(B)Z

    move-result p1

    return p1
.end method

.method public sendReport(I[B)Z
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->sendReportNative(I[B)Z

    move-result p1

    return p1
.end method

.method public unplug()Z
    .locals 1

    .line 146
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->unplugNative()Z

    move-result v0

    return v0
.end method

.method public unregisterApp()Z
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/android/bluetooth/hid/HidDeviceNativeInterface;->unregisterAppNative()Z

    move-result v0

    return v0
.end method
