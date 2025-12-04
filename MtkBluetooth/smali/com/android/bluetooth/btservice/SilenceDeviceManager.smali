.class public Lcom/android/bluetooth/btservice/SilenceDeviceManager;
.super Ljava/lang/Object;
.source "SilenceDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final DISABLE_SILENCE:I = 0x1

.field private static final ENABLE_SILENCE:I = 0x0

.field private static final MSG_A2DP_ACTIVE_DEIVCE_CHANGED:I = 0x14

.field private static final MSG_A2DP_CONNECTION_STATE_CHANGED:I = 0xa

.field private static final MSG_HFP_ACTIVE_DEVICE_CHANGED:I = 0x15

.field private static final MSG_HFP_CONNECTION_STATE_CHANGED:I = 0xb

.field private static final MSG_SILENCE_DEVICE_STATE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SilenceDeviceManager"

.field private static final VERBOSE:Z


# instance fields
.field private final mA2dpConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private final mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

.field private mHandler:Landroid/os/Handler;

.field private final mHfpConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSilenceDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    nop

    .line 62
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->VERBOSE:Z

    .line 61
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/ServiceFactory;Landroid/os/Looper;)V
    .locals 1

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mLooper:Landroid/os/Looper;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mSilenceDevices:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mA2dpConnectedDevices:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHfpConnectedDevices:Ljava/util/List;

    .line 83
    new-instance v0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/btservice/SilenceDeviceManager$1;-><init>(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 213
    iput-object p2, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    .line 214
    iput-object p3, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mLooper:Landroid/os/Looper;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Landroid/os/Handler;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 59
    sget-boolean v0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/btservice/SilenceDeviceManager;)Ljava/util/Map;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mSilenceDevices:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method addConnectedDevice(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 301
    sget-boolean v0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addConnectedDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilenceDeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 306
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mA2dpConnectedDevices:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 307
    iget-object p2, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mA2dpConnectedDevices:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHfpConnectedDevices:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 312
    iget-object p2, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHfpConnectedDevices:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_3
    :goto_0
    return-void
.end method

.method broadcastSilenceStateChange(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 2

    .line 285
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.device.action.SILENCE_MODE_CHANGED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 286
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 287
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method cleanup()V
    .locals 2

    .line 231
    sget-boolean v0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 232
    const-string v0, "SilenceDeviceManager"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mSilenceDevices:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 235
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 341
    const-string p1, "\nSilenceDeviceManager:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    const-string p1, "  Address            | Is silenced?"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    iget-object p1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mSilenceDevices:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/bluetooth/BluetoothDevice;

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->getSilenceMode(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    goto :goto_0

    .line 346
    :cond_0
    return-void
.end method

.method getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method getSilenceMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 293
    nop

    .line 294
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mSilenceDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mSilenceDevices:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_0

    .line 294
    :cond_0
    const/4 p1, 0x0

    .line 297
    :goto_0
    return p1
.end method

.method handleSilenceDeviceStateChanged(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 4

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->getSilenceMode(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 257
    if-ne v0, p2, :cond_0

    .line 258
    return-void

    .line 260
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->isBluetoothAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    const-string v2, "SilenceDeviceManager"

    if-nez v1, :cond_2

    .line 261
    if-eqz v0, :cond_1

    .line 263
    const/4 p2, 0x0

    goto :goto_0

    .line 265
    :cond_1
    const-string p1, "Deivce is not connected to any Bluetooth audio."

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    return-void

    .line 269
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mSilenceDevices:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, p1, v3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/ServiceFactory;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    .line 272
    if-eqz v1, :cond_3

    .line 273
    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->setSilenceMode(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 275
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v1}, Lcom/android/bluetooth/btservice/ServiceFactory;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_4

    .line 277
    invoke-virtual {v1, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->setSilenceMode(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 279
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Silence mode change "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0, p1, p2}, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->broadcastSilenceStateChange(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 282
    return-void
.end method

.method isBluetoothAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mA2dpConnectedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHfpConnectedDevices:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method removeConnectedDevice(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2

    .line 319
    sget-boolean v0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeConnectedDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SilenceDeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mA2dpConnectedDevices:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 325
    iget-object p2, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mA2dpConnectedDevices:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 329
    :cond_2
    iget-object p2, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHfpConnectedDevices:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 330
    iget-object p2, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHfpConnectedDevices:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 334
    :cond_3
    :goto_0
    return-void
.end method

.method setSilenceMode(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-string v2, "SilenceDeviceManager"

    if-nez v0, :cond_0

    .line 241
    const-string p1, "setSilenceMode() mHandler is null!"

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return v1

    .line 245
    :cond_0
    sget-boolean v0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilenceMode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHandler:Landroid/os/Handler;

    .line 250
    const/4 v2, 0x1

    xor-int/2addr p2, v2

    .line 249
    invoke-virtual {v0, v2, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 251
    iget-object p2, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 252
    return v2
.end method

.method start()V
    .locals 3

    .line 218
    sget-boolean v0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "SilenceDeviceManager"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    new-instance v0, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/SilenceDeviceManager$SilenceDeviceManagerHandler;-><init>(Lcom/android/bluetooth/btservice/SilenceDeviceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mHandler:Landroid/os/Handler;

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 223
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 224
    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/SilenceDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 228
    return-void
.end method
