.class public Lcom/android/bluetooth/hfp/HeadsetNativeInterface;
.super Ljava/lang/Object;
.source "HeadsetNativeInterface.java"


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "HeadsetNativeInterface"

.field private static sInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;


# instance fields
.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->classInitNative()V

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 43
    return-void
.end method

.method private native atResponseCodeNative(II[B)Z
.end method

.method private native atResponseStringNative(Ljava/lang/String;[B)Z
.end method

.method private native cindResponseNative(IIIIIII[B)Z
.end method

.method private static native classInitNative()V
.end method

.method private native clccResponseNative(IIIIZLjava/lang/String;I[B)Z
.end method

.method private native cleanupNative()V
.end method

.method private native connectAudioNative([B)Z
.end method

.method private native connectHfpNative([B)Z
.end method

.method private native copsResponseNative(Ljava/lang/String;[B)Z
.end method

.method private native disconnectAudioNative([B)Z
.end method

.method private native disconnectHfpNative([B)Z
.end method

.method private getDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getAddressStringFromByte([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/android/bluetooth/hfp/HeadsetNativeInterface;
    .locals 2

    .line 51
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-direct {v1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;-><init>()V

    sput-object v1, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    .line 55
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    return-object v0

    .line 55
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private native initializeNative(IZ)V
.end method

.method private native notifyDeviceStatusNative(IIII[B)Z
.end method

.method private onATBiev(II[B)V
    .locals 2

    .line 196
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 198
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    const/16 v1, 0x13

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IIILandroid/bluetooth/BluetoothDevice;)V

    .line 199
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 200
    return-void
.end method

.method private onATBind(Ljava/lang/String;[B)V
    .locals 2

    .line 190
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 191
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/16 v1, 0x12

    invoke-direct {v0, v1, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 192
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 193
    return-void
.end method

.method private onActiveDeviceSwitched([B)V
    .locals 2

    .line 220
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 222
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 v1, 0x16

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILandroid/bluetooth/BluetoothDevice;)V

    .line 223
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 224
    return-void
.end method

.method private onAnswerCall([B)V
    .locals 2

    .line 100
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 101
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v1, 0x4

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILandroid/bluetooth/BluetoothDevice;)V

    .line 102
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 103
    return-void
.end method

.method private onAtBia(ZZZZ[B)V
    .locals 1

    .line 204
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;-><init>(ZZZZ)V

    .line 206
    new-instance p1, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 208
    invoke-direct {p0, p5}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/16 p3, 0x14

    invoke-direct {p1, p3, v0, p2}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILcom/android/bluetooth/hfp/HeadsetMessageObject;Landroid/bluetooth/BluetoothDevice;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 210
    return-void
.end method

.method private onAtChld(I[B)V
    .locals 2

    .line 146
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 147
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IILandroid/bluetooth/BluetoothDevice;)V

    .line 148
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 149
    return-void
.end method

.method private onAtCind([B)V
    .locals 2

    .line 159
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 160
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 v1, 0xc

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILandroid/bluetooth/BluetoothDevice;)V

    .line 161
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 162
    return-void
.end method

.method private onAtClcc([B)V
    .locals 2

    .line 171
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 172
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 v1, 0xe

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILandroid/bluetooth/BluetoothDevice;)V

    .line 173
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 174
    return-void
.end method

.method private onAtCnum([B)V
    .locals 2

    .line 152
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 154
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 v1, 0xb

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILandroid/bluetooth/BluetoothDevice;)V

    .line 155
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 156
    return-void
.end method

.method private onAtCops([B)V
    .locals 2

    .line 165
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 166
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 v1, 0xd

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILandroid/bluetooth/BluetoothDevice;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 168
    return-void
.end method

.method private onAudioStateChanged(I[B)V
    .locals 2

    .line 86
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 88
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/4 v1, 0x2

    invoke-direct {v0, v1, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IILandroid/bluetooth/BluetoothDevice;)V

    .line 89
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 90
    return-void
.end method

.method private onDialCall(Ljava/lang/String;[B)V
    .locals 2

    .line 119
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 121
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 122
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 123
    return-void
.end method

.method private onHangupCall([B)V
    .locals 2

    .line 106
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILandroid/bluetooth/BluetoothDevice;)V

    .line 108
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 109
    return-void
.end method

.method private onKeyPressed([B)V
    .locals 2

    .line 184
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 185
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 v1, 0x10

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILandroid/bluetooth/BluetoothDevice;)V

    .line 186
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 187
    return-void
.end method

.method private onNoiseReductionEnable(Z[B)V
    .locals 2

    .line 133
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 134
    nop

    .line 135
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IILandroid/bluetooth/BluetoothDevice;)V

    .line 136
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 137
    return-void
.end method

.method private onSendDtmf(I[B)V
    .locals 2

    .line 126
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 128
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IILandroid/bluetooth/BluetoothDevice;)V

    .line 129
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 130
    return-void
.end method

.method private onSwitchActiveDevice([B)V
    .locals 2

    .line 213
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 215
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 v1, 0x15

    invoke-direct {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILandroid/bluetooth/BluetoothDevice;)V

    .line 216
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 217
    return-void
.end method

.method private onUnknownAt(Ljava/lang/String;[B)V
    .locals 2

    .line 177
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 179
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/16 v1, 0xf

    invoke-direct {v0, v1, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 180
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 181
    return-void
.end method

.method private onVolumeChanged(II[B)V
    .locals 2

    .line 112
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 114
    invoke-direct {p0, p3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p3

    const/4 v1, 0x6

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IIILandroid/bluetooth/BluetoothDevice;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 116
    return-void
.end method

.method private onVrStateChanged(I[B)V
    .locals 2

    .line 93
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 95
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/4 v1, 0x3

    invoke-direct {v0, v1, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IILandroid/bluetooth/BluetoothDevice;)V

    .line 96
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 97
    return-void
.end method

.method private onWBS(I[B)V
    .locals 2

    .line 140
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 141
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/16 v1, 0x11

    invoke-direct {v0, v1, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IILandroid/bluetooth/BluetoothDevice;)V

    .line 142
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 143
    return-void
.end method

.method private native phoneStateChangeNative(IIILjava/lang/String;ILjava/lang/String;[B)Z
.end method

.method private native sendBsirNative(Z[B)Z
.end method

.method private sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V
    .locals 2

    .line 60
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetService;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->messageFromNative(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    goto :goto_0

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FATAL: Stack sent event while service is not available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HeadsetNativeInterface"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :goto_0
    return-void
.end method

.method private native setActiveDeviceNative([B)Z
.end method

.method private native setScoAllowedNative(Z)Z
.end method

.method private native setVolumeNative(II[B)Z
.end method

.method private native startVoiceRecognitionNative([B)Z
.end method

.method private native stopVoiceRecognitionNative([B)Z
.end method


# virtual methods
.method public atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 0

    .line 257
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCodeNative(II[B)Z

    move-result p1

    return p1
.end method

.method public atResponseString(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 0

    .line 269
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseStringNative(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public cindResponse(Landroid/bluetooth/BluetoothDevice;IIIIIII)Z
    .locals 9

    .line 368
    nop

    .line 369
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    .line 368
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->cindResponseNative(IIIIIII[B)Z

    move-result v0

    return v0
.end method

.method public clccResponse(Landroid/bluetooth/BluetoothDevice;IIIIZLjava/lang/String;I)Z
    .locals 9

    .line 407
    nop

    .line 408
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v8

    .line 407
    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->clccResponseNative(IIIIZLjava/lang/String;I[B)Z

    move-result v0

    return v0
.end method

.method public cleanup()V
    .locals 0

    .line 244
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->cleanupNative()V

    .line 245
    return-void
.end method

.method public connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 302
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->connectAudioNative([B)Z

    move-result p1

    return p1
.end method

.method public connectHfp(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 280
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->connectHfpNative([B)Z

    move-result p1

    return p1
.end method

.method public copsResponse(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 0

    .line 420
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->copsResponseNative(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 313
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->disconnectAudioNative([B)Z

    move-result p1

    return p1
.end method

.method public disconnectHfp(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 291
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->disconnectHfpNative([B)Z

    move-result p1

    return p1
.end method

.method public init(IZ)V
    .locals 0

    .line 236
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->initializeNative(IZ)V

    .line 237
    return-void
.end method

.method public notifyDeviceStatus(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hfp/HeadsetDeviceState;)Z
    .locals 6

    .line 381
    iget v1, p2, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mService:I

    iget v2, p2, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mRoam:I

    iget v3, p2, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mSignal:I

    iget v4, p2, Lcom/android/bluetooth/hfp/HeadsetDeviceState;->mBatteryCharge:I

    .line 382
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    .line 381
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->notifyDeviceStatusNative(IIII[B)Z

    move-result p1

    return p1
.end method

.method onConnectionStateChanged(I[B)V
    .locals 2

    .line 77
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 79
    invoke-direct {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->getDevice([B)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStackEvent;-><init>(IILandroid/bluetooth/BluetoothDevice;)V

    .line 80
    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendMessageToService(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V

    .line 81
    return-void
.end method

.method public phoneStateChange(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hfp/HeadsetCallState;)Z
    .locals 8

    .line 437
    iget v1, p2, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumActive:I

    iget v2, p2, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumHeld:I

    iget v3, p2, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    iget-object v4, p2, Lcom/android/bluetooth/hfp/HeadsetCallState;->mNumber:Ljava/lang/String;

    iget v5, p2, Lcom/android/bluetooth/hfp/HeadsetCallState;->mType:I

    iget-object v6, p2, Lcom/android/bluetooth/hfp/HeadsetCallState;->mName:Ljava/lang/String;

    .line 439
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v7

    .line 437
    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->phoneStateChangeNative(IIILjava/lang/String;ILjava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public sendBsir(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 0

    .line 462
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendBsirNative(Z[B)Z

    move-result p1

    return p1
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 472
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->setActiveDeviceNative([B)Z

    move-result p1

    return p1
.end method

.method public setScoAllowed(Z)Z
    .locals 0

    .line 450
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->setScoAllowedNative(Z)Z

    move-result p1

    return p1
.end method

.method public setVolume(Landroid/bluetooth/BluetoothDevice;II)Z
    .locals 0

    .line 349
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p2, p3, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->setVolumeNative(II[B)Z

    move-result p1

    return p1
.end method

.method public startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 324
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->startVoiceRecognitionNative([B)Z

    move-result p1

    return p1
.end method

.method public stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 336
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->stopVoiceRecognitionNative([B)Z

    move-result p1

    return p1
.end method
