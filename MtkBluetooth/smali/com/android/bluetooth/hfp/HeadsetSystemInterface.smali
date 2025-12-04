.class public Lcom/android/bluetooth/hfp/HeadsetSystemInterface;
.super Ljava/lang/Object;
.source "HeadsetSystemInterface.java"


# static fields
.field private static final COMMAND_ANSWER_CALL:I = 0x1

.field private static final COMMAND_HANGUP_CALL:I = 0x2

.field private static final COMMAND_SEND_DTMF:I = 0x3

.field private static final COMMAND_SEND_DTMF_PARAM:Ljava/lang/String; = "DTMF_DIGIT"

.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isVzwProduct:Z

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mHeadsetPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

.field private final mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

.field private volatile mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

.field private final mPhoneProxyConnection:Landroid/content/ServiceConnection;

.field private mVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 51
    const-class v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    .line 53
    nop

    .line 54
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->DBG:Z

    .line 53
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 4

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isVzwProduct:Z

    .line 71
    new-instance v1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface$1;-><init>(Lcom/android/bluetooth/hfp/HeadsetSystemInterface;)V

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxyConnection:Landroid/content/ServiceConnection;

    .line 94
    if-nez p1, :cond_0

    .line 95
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v2, "HeadsetService parameter is null"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 98
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mAudioManager:Landroid/media/AudioManager;

    .line 99
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    .line 100
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 101
    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":VoiceRecognition"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 104
    new-instance p1, Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-direct {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .line 105
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 50
    sget-boolean v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->DBG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/hfp/HeadsetSystemInterface;Landroid/bluetooth/IBluetoothHeadsetPhone;)Landroid/bluetooth/IBluetoothHeadsetPhone;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    return-object p1
.end method

.method private broadcastCallCommandIntent(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V
    .locals 1

    .line 470
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v0, "Enter broadcastCallCommandIntent()"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.bluetooth.headset.action.BLUETOOTH_CALL_COMMAND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    const-string v0, "COMMAND_TYPE"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 474
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 475
    const-string p2, "COMMAND_PARAM"

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 478
    :cond_0
    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    sget-object p3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v0, "android.permission.BLUETOOTH"

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 480
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string p2, "Exit broadcastCallCommandIntent()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    return-void
.end method

.method private resolveSystemService(Landroid/content/pm/PackageManager;ILandroid/content/Intent;)Landroid/content/ComponentName;
    .locals 3

    .line 129
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1

    .line 133
    :cond_0
    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 134
    const/4 p2, 0x0

    if-nez p1, :cond_1

    .line 135
    return-object p2

    .line 137
    :cond_1
    nop

    .line 138
    const/4 p3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 139
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 140
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    .line 141
    goto :goto_1

    .line 143
    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    if-nez p2, :cond_3

    .line 149
    move-object p2, v1

    .line 138
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 146
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Multiple system services handle "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 151
    :cond_4
    return-object p2
.end method


# virtual methods
.method public activateVoiceRecognition()Z
    .locals 4

    .line 442
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VOICE_COMMAND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v1, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    nop

    .line 450
    const/4 v0, 0x1

    return v0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activateVoiceRecognition, failed due to activity not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/4 v0, 0x0

    return v0
.end method

.method public answerCall(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 207
    if-nez p1, :cond_0

    .line 208
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v0, "answerCall device is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v0, :cond_2

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 216
    const-string v0, "ro.product.device"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gflip6_VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isVzwProduct:Z

    .line 217
    if-eqz v0, :cond_1

    .line 218
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastCallCommandIntent device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",COMMAND_ANSWER_CALL(1) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->broadcastCallCommandIntent(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {p1}, Landroid/bluetooth/IBluetoothHeadsetPhone;->answerCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception p1

    .line 224
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    goto :goto_1

    .line 227
    :cond_2
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v0, "Handsfree phone proxy null for answering call"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_1
    return-void
.end method

.method public deactivateVoiceRecognition()Z
    .locals 1

    .line 464
    const/4 v0, 0x1

    return v0
.end method

.method public getAudioManager()Landroid/media/AudioManager;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method public getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    return-object v0
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 5

    .line 323
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 324
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 325
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v2, "getNetworkOperator() failed: mPhoneProxy is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-object v1

    .line 330
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 331
    :catch_0
    move-exception v0

    .line 332
    sget-object v2, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNetworkOperator() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 334
    return-object v1
.end method

.method public getSubscriberNumber()Ljava/lang/String;
    .locals 5

    .line 345
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 346
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 347
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v2, "getSubscriberNumber() failed: mPhoneProxy is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-object v1

    .line 351
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->getSubscriberNumber()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    sget-object v2, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSubscriberNumber() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 355
    return-object v1
.end method

.method public getVoiceRecognitionWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mVoiceRecognitionWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public hangupCall(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 238
    if-nez p1, :cond_0

    .line 239
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v0, "hangupCall device is null"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->isVirtualCallStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopScoUsingVirtualVoiceCall()Z

    goto :goto_1

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v0, :cond_3

    .line 250
    :try_start_0
    const-string v0, "ro.product.device"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gflip6_VZW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isVzwProduct:Z

    .line 251
    if-eqz v0, :cond_2

    .line 252
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastCallCommandIntent device = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",COMMAND_HANGUP_CALL(2) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v0, 0x0

    invoke-direct {p0, p1, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->broadcastCallCommandIntent(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    .line 256
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {p1}, Landroid/bluetooth/IBluetoothHeadsetPhone;->hangupCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception p1

    .line 258
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :goto_0
    goto :goto_1

    .line 261
    :cond_3
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v0, "Handsfree phone proxy null for hanging up call"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_1
    return-void
.end method

.method public declared-synchronized init()V
    .locals 4

    monitor-enter p0

    .line 112
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->resolveSystemService(Landroid/content/pm/PackageManager;ILandroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 114
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v0, v3, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 117
    :cond_0
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind to IBluetoothHeadsetPhone Service, intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :cond_1
    monitor-exit p0

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCallIdle()Z
    .locals 1

    .line 429
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isRinging()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isInCall()Z
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumActiveCall()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumHeldCall()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .line 408
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCallState()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    .line 409
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCallState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 407
    :goto_1
    return v0
.end method

.method public isRinging()Z
    .locals 2

    .line 419
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCallState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listCurrentCalls()Z
    .locals 5

    .line 368
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 369
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 370
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v2, "listCurrentCalls() failed: mPhoneProxy is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return v1

    .line 374
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->listCurrentCalls()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    sget-object v2, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listCurrentCalls() failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 378
    return v1
.end method

.method public processChld(I)Z
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHeadsetPhone;->processChld(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 307
    :catch_0
    move-exception p1

    .line 308
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    goto :goto_0

    .line 311
    :cond_0
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v0, "Handsfree phone proxy null for sending DTMF"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public queryPhoneState()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 389
    if-eqz v0, :cond_0

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->queryPhoneState()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    :catch_0
    move-exception v0

    .line 393
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    goto :goto_1

    .line 396
    :cond_0
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v1, "Handsfree phone proxy null for query phone state"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    :goto_1
    return-void
.end method

.method public sendDtmf(ILandroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 274
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 275
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string p2, "sendDtmf device is null"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return v0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v1, :cond_2

    .line 281
    :try_start_0
    const-string v1, "ro.product.device"

    const-string v2, "unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Gflip6_VZW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isVzwProduct:Z

    .line 282
    if-eqz v1, :cond_1

    .line 283
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastCallCommandIntent device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",COMMAND_SEND_DTMF(3) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v1, "DTMF_DIGIT"

    invoke-direct {p0, p2, v3, v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->broadcastCallCommandIntent(Landroid/bluetooth/BluetoothDevice;ILjava/lang/String;)V

    .line 287
    :cond_1
    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {p2, p1}, Landroid/bluetooth/IBluetoothHeadsetPhone;->sendDtmf(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 288
    :catch_0
    move-exception p1

    .line 289
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/Throwable;

    invoke-direct {p2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    goto :goto_0

    .line 292
    :cond_2
    sget-object p1, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string p2, "Handsfree phone proxy null for sending DTMF"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    return v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v0, :cond_1

    .line 159
    sget-boolean v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->DBG:Z

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->TAG:Ljava/lang/String;

    const-string v1, "Unbinding phone proxy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxy:Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mPhoneProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->mHeadsetPhoneState:Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
