.class Lcom/android/bluetooth/btservice/ActiveDeviceManager;
.super Ljava/lang/Object;
.source "ActiveDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/btservice/ActiveDeviceManager$AudioManagerAudioDeviceCallback;,
        Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final MESSAGE_A2DP_ACTION_ACTIVE_DEVICE_CHANGED:I = 0x3

.field private static final MESSAGE_A2DP_ACTION_CONNECTION_STATE_CHANGED:I = 0x2

.field private static final MESSAGE_ADAPTER_ACTION_STATE_CHANGED:I = 0x1

.field private static final MESSAGE_HEARING_AID_ACTION_ACTIVE_DEVICE_CHANGED:I = 0x6

.field private static final MESSAGE_HFP_ACTION_ACTIVE_DEVICE_CHANGED:I = 0x5

.field private static final MESSAGE_HFP_ACTION_CONNECTION_STATE_CHANGED:I = 0x4

.field private static final TAG:Ljava/lang/String; = "BluetoothActiveDeviceManager"

.field private static final VDBG:Z


# instance fields
.field private mA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

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

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioManagerAudioDeviceCallback:Lcom/android/bluetooth/btservice/ActiveDeviceManager$AudioManagerAudioDeviceCallback;

.field private final mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHearingAidActiveDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHfpActiveDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mHfpConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 107
    nop

    .line 108
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->VDBG:Z

    .line 107
    return-void
.end method

.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/btservice/ServiceFactory;)V
    .locals 2

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 122
    iput-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHandler:Landroid/os/Handler;

    .line 126
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mA2dpConnectedDevices:Ljava/util/List;

    .line 127
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHfpConnectedDevices:Ljava/util/List;

    .line 128
    iput-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 129
    iput-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHfpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 130
    iput-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHearingAidActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 133
    new-instance v1, Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;-><init>(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)V

    iput-object v1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 375
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 376
    iput-object p2, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    .line 377
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/btservice/AdapterService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    .line 378
    new-instance p1, Lcom/android/bluetooth/btservice/ActiveDeviceManager$AudioManagerAudioDeviceCallback;

    invoke-direct {p1, p0, v0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager$AudioManagerAudioDeviceCallback;-><init>(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Lcom/android/bluetooth/btservice/ActiveDeviceManager$1;)V

    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mAudioManagerAudioDeviceCallback:Lcom/android/bluetooth/btservice/ActiveDeviceManager$AudioManagerAudioDeviceCallback;

    .line 379
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/os/Handler;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->resetState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHfpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHfpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 103
    sget-boolean v0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->VDBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mA2dpConnectedDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHearingAidActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHearingAidActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->setA2dpActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->setHearingAidActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/btservice/ActiveDeviceManager;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHfpConnectedDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->setHfpActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method private resetState()V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mA2dpConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 474
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 476
    iget-object v1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHfpConnectedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 477
    iput-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHfpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 479
    iput-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHearingAidActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 480
    return-void
.end method

.method private setA2dpActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 431
    sget-boolean v0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setA2dpActiveDevice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothActiveDeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    .line 435
    if-nez v0, :cond_1

    .line 436
    return-void

    .line 438
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 439
    return-void

    .line 441
    :cond_2
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 442
    return-void
.end method

.method private setHearingAidActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 459
    sget-boolean v0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHearingAidActiveDevice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothActiveDeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getHearingAidService()Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object v0

    .line 463
    if-nez v0, :cond_1

    .line 464
    return-void

    .line 466
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 467
    return-void

    .line 469
    :cond_2
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHearingAidActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 470
    return-void
.end method

.method private setHfpActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 445
    sget-boolean v0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->VDBG:Z

    if-eqz v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHfpActiveDevice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothActiveDeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mFactory:Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/ServiceFactory;->getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    .line 449
    if-nez v0, :cond_1

    .line 450
    return-void

    .line 452
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    return-void

    .line 455
    :cond_2
    iput-object p1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHfpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 456
    return-void
.end method


# virtual methods
.method cleanup()V
    .locals 2

    .line 404
    const-string v0, "BluetoothActiveDeviceManager"

    const-string v1, "cleanup()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mAudioManagerAudioDeviceCallback:Lcom/android/bluetooth/btservice/ActiveDeviceManager$AudioManagerAudioDeviceCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 408
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 409
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->resetState()V

    .line 414
    return-void
.end method

.method getA2dpActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mA2dpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public getHandlerLooper()Landroid/os/Looper;
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 425
    const/4 v0, 0x0

    return-object v0

    .line 427
    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method getHearingAidActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHearingAidActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method getHfpActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHfpActiveDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method start()V
    .locals 3

    .line 383
    const-string v0, "BluetoothActiveDeviceManager"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 387
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 388
    new-instance v0, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/btservice/ActiveDeviceManager$ActiveDeviceManagerHandler;-><init>(Lcom/android/bluetooth/btservice/ActiveDeviceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHandler:Landroid/os/Handler;

    .line 390
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 391
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 392
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 393
    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 394
    const-string v1, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 395
    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v1, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    iget-object v0, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mAudioManagerAudioDeviceCallback:Lcom/android/bluetooth/btservice/ActiveDeviceManager$AudioManagerAudioDeviceCallback;

    iget-object v2, p0, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 400
    return-void
.end method

.method wiredAudioDeviceConnected()V
    .locals 2

    .line 509
    const-string v0, "BluetoothActiveDeviceManager"

    const-string v1, "wiredAudioDeviceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->setA2dpActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 512
    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->setHfpActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 513
    invoke-direct {p0, v0}, Lcom/android/bluetooth/btservice/ActiveDeviceManager;->setHearingAidActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 514
    return-void
.end method
