.class public Lcom/android/bluetooth/hfp/HeadsetService;
.super Lcom/android/bluetooth/btservice/ProfileService;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;,
        Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;,
        Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;,
        Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;
    }
.end annotation


# static fields
.field private static final CLCC_RESPONSE_DELAY_TIME_MSEC:I = 0x32

.field private static final CONNECTING_CONNECTED_STATES:[I

.field private static final DBG:Z

.field private static final DIALING_OUT_TIMEOUT_MS:I = 0x2710

.field private static final DISABLE_INBAND_RINGING_PROPERTY:Ljava/lang/String; = "persist.bluetooth.disableinbandringing"

.field private static final HEADSET_UUIDS:[Landroid/os/ParcelUuid;

.field private static final TAG:Ljava/lang/String; = "HeadsetService"

.field private static final VOIP_CALL_ACTIVE_DELAY_TIME_MSEC:I = 0x352

.field private static final VOIP_CALL_ALERTING_DELAY_TIME_MSEC:I = 0x320

.field private static final mReplyClccScoOn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

.field static sStartVrTimeoutMs:I


# instance fields
.field private mActiveDevice:Landroid/bluetooth/BluetoothDevice;

.field private mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

.field private mAudioRouteAllowed:Z

.field private mCreated:Z

.field private mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

.field private mForceScoAudio:Z

.field private final mHeadsetReceiver:Landroid/content/BroadcastReceiver;

.field private mInSwitchActiveDevice:Z

.field private mInbandRingingRuntimeDisable:Z

.field private mMaxHeadsetConnections:I

.field private mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

.field private mPhoneStateChangeTimer:Ljava/util/Timer;

.field private mStarted:Z

.field private final mStateMachines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Lcom/android/bluetooth/hfp/HeadsetStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mStateMachinesThread:Landroid/os/HandlerThread;

.field private mStateMachinesThreadHandler:Landroid/os/Handler;

.field private mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

.field private mVirtualCallStarted:Z

.field private mVoiceRecognitionStarted:Z

.field private mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 98
    nop

    .line 99
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/hfp/HeadsetService;->DBG:Z

    .line 105
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HFP:Landroid/os/ParcelUuid;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->HFP_AG:Landroid/os/ParcelUuid;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->HEADSET_UUIDS:[Landroid/os/ParcelUuid;

    .line 108
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->CONNECTING_CONNECTED_STATES:[I

    .line 132
    const/16 v0, 0x1388

    sput v0, Lcom/android/bluetooth/hfp/HeadsetService;->sStartVrTimeoutMs:I

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->mReplyClccScoOn:Ljava/util/ArrayList;

    .line 154
    const-string v1, "F4:15:FD"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/android/bluetooth/btservice/ProfileService;-><init>()V

    .line 112
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mMaxHeadsetConnections:I

    .line 118
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    .line 121
    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAudioRouteAllowed:Z

    .line 425
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetService$1;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->doForEachConnectedStateMachine(Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)Z
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->doForStateMachine(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;)Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    return-object p1
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-static {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hfp/HeadsetService;)Ljava/util/HashMap;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hfp/HeadsetService;)Z
    .locals 0

    .line 95
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->startScoUsingVirtualVoiceCall()Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hfp/HeadsetService;IIILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 95
    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/hfp/HeadsetService;->phoneStateChanged(IIILjava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/hfp/HeadsetService;IIIIZLjava/lang/String;I)V
    .locals 0

    .line 95
    invoke-direct/range {p0 .. p7}, Lcom/android/bluetooth/hfp/HeadsetService;->clccResponse(IIIIZLjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 95
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetService;->sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/hfp/HeadsetService;)Ljava/util/Timer;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mPhoneStateChangeTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/bluetooth/hfp/HeadsetService;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mPhoneStateChangeTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;)Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    return-object p1
.end method

.method private clccResponse(IIIIZLjava/lang/String;I)V
    .locals 11

    .line 1815
    move-object v9, p0

    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "Need MODIFY_PHONE_STATE permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1817
    new-instance v10, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;IIIIZLjava/lang/String;I)V

    invoke-direct {p0, v10}, Lcom/android/bluetooth/hfp/HeadsetService;->doForEachConnectingConnectedStateMachine(Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V

    .line 1831
    return-void
.end method

.method private doForEachConnectedStateMachine(Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 335
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 336
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-interface {p1, v2}, Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;->execute(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    .line 337
    goto :goto_0

    .line 338
    :cond_0
    monitor-exit v0

    .line 339
    return-void

    .line 338
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private doForEachConnectingConnectedStateMachine(Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V
    .locals 4

    .line 358
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 359
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectingConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 360
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-interface {p1, v2}, Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;->execute(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    .line 361
    goto :goto_0

    .line 362
    :cond_0
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private doForStateMachine(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)Z
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 325
    if-nez p1, :cond_0

    .line 326
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 328
    :cond_0
    invoke-interface {p2, p1}, Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;->execute(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    .line 329
    monitor-exit v0

    .line 330
    const/4 p1, 0x1

    return p1

    .line 329
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private getConnectingConnectedDevices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 343
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 345
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v1

    .line 346
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 347
    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 348
    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 349
    :cond_0
    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    :cond_1
    goto :goto_0

    .line 352
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectingConnectedDevices: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 354
    return-object v0

    .line 352
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static declared-synchronized getHeadsetService()Lcom/android/bluetooth/hfp/HeadsetService;
    .locals 4

    const-class v0, Lcom/android/bluetooth/hfp/HeadsetService;

    monitor-enter v0

    .line 791
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 792
    const-string v1, "HeadsetService"

    const-string v3, "getHeadsetService(): service is NULL"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    monitor-exit v0

    return-object v2

    .line 795
    :cond_0
    :try_start_1
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 796
    const-string v1, "HeadsetService"

    const-string v3, "getHeadsetService(): service is not available"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 797
    monitor-exit v0

    return-object v2

    .line 799
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getHeadsetService(): returning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 800
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 790
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNonIdleAudioDevices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 1383
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1384
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v1

    .line 1385
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1386
    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAudioState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 1387
    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1389
    :cond_0
    goto :goto_0

    .line 1390
    :cond_1
    monitor-exit v1

    .line 1391
    return-object v0

    .line 1390
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getStateMachinesThreadHandler()Landroid/os/Handler;
    .locals 2

    .line 2151
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2152
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThreadHandler:Landroid/os/Handler;

    .line 2154
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isAudioModeIdle()Z
    .locals 4

    .line 1932
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1933
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isCallIdle()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1939
    :cond_0
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1934
    :cond_1
    :goto_0
    const-string v1, "HeadsetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAudioModeIdle: not idle, mVoiceRecognitionStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mVirtualCallStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isCallIdle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    .line 1936
    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isCallIdle()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1934
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1940
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isOnStateMachineThread()Z
    .locals 4

    .line 2105
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .line 2106
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThread:Landroid/os/HandlerThread;

    .line 2107
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2106
    :goto_0
    return v0
.end method

.method static synthetic lambda$onConnectionStateChangedFromStateMachine$7(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 2

    .line 1904
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(II)V

    return-void
.end method

.method static synthetic lambda$onDeviceStateChanged$0(Lcom/android/bluetooth/hfp/HeadsetDeviceState;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    .line 368
    const/16 v0, 0xa

    invoke-virtual {p1, v0, p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$phoneStateChanged$4(IIILjava/lang/String;ILjava/lang/String;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 8

    .line 1789
    new-instance v7, Lcom/android/bluetooth/hfp/HeadsetCallState;

    move-object v0, v7

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/bluetooth/hfp/HeadsetCallState;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x9

    invoke-virtual {p6, p0, v7}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$sendBSIR$8(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 2

    .line 2194
    const/16 v0, 0xd

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(II)V

    return-void
.end method

.method static synthetic lambda$sendBSIR$9(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    .line 2199
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2201
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 2202
    return-void
.end method

.method static synthetic lambda$setActiveDevice$1(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 2

    .line 1248
    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(II)V

    return-void
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1

    .line 2145
    sget-boolean v0, Lcom/android/bluetooth/hfp/HeadsetService;->DBG:Z

    if-eqz v0, :cond_0

    .line 2146
    const-string v0, "HeadsetService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    :cond_0
    return-void
.end method

.method private needDelayClcc(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z
    .locals 3

    .line 1802
    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 1803
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1804
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetService;->mReplyClccScoOn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1805
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1806
    const/4 p1, 0x1

    return p1

    .line 1808
    :cond_0
    goto :goto_0

    .line 1809
    :cond_1
    return v0
.end method

.method private phoneStateChanged(IIILjava/lang/String;ILjava/lang/String;Z)V
    .locals 8

    .line 1718
    const-string v0, "android.permission.MODIFY_PHONE_STATE"

    const-string v1, "Need MODIFY_PHONE_STATE permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1721
    add-int v1, p1, p2

    const/4 v2, 0x6

    if-gtz v1, :cond_1

    if-eq p3, v2, :cond_0

    goto :goto_0

    .line 1732
    :cond_0
    if-nez p7, :cond_3

    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    if-eqz v1, :cond_3

    .line 1733
    monitor-exit v0

    return-void

    .line 1722
    :cond_1
    :goto_0
    if-nez p7, :cond_2

    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    if-eqz v1, :cond_2

    .line 1724
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->stopScoUsingVirtualVoiceCall()Z

    .line 1726
    :cond_2
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    if-eqz v1, :cond_3

    .line 1728
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1736
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    if-eqz v1, :cond_6

    .line 1738
    const/4 v1, 0x2

    if-ne p3, v1, :cond_4

    .line 1739
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    .line 1740
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1741
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    iget-object v1, v1, Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;->mDialingOutDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$Fkf10qV-7_-YxeHrPtOfF5nH-ek;

    invoke-direct {v2, p0}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$Fkf10qV-7_-YxeHrPtOfF5nH-ek;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->doForStateMachine(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)Z

    goto :goto_1

    .line 1745
    :cond_4
    if-eqz p3, :cond_5

    if-ne p3, v2, :cond_6

    .line 1748
    :cond_5
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    .line 1749
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1750
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    .line 1754
    :cond_6
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", numHeld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isVirtual="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1759
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadHandler()Landroid/os/Handler;

    move-result-object p7

    new-instance v0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$CA0EZ8-o1HO0uE66u-wBMZSPPzs;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$CA0EZ8-o1HO0uE66u-wBMZSPPzs;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;III)V

    invoke-virtual {p7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1788
    new-instance p7, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;

    move-object v1, p7

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;-><init>(IIILjava/lang/String;ILjava/lang/String;)V

    invoke-direct {p0, p7}, Lcom/android/bluetooth/hfp/HeadsetService;->doForEachConnectedStateMachine(Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V

    .line 1791
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$2AioQygfPzTuZMmPOe1cmzdhz5I;

    invoke-direct {p2, p0, p3}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$2AioQygfPzTuZMmPOe1cmzdhz5I;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1798
    return-void

    .line 1754
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private phoneStateChangedDelay()V
    .locals 4

    .line 1479
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mPhoneStateChangeTimer:Ljava/util/Timer;

    .line 1480
    new-instance v1, Lcom/android/bluetooth/hfp/HeadsetService$2;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/hfp/HeadsetService$2;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1488
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mPhoneStateChangeTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/bluetooth/hfp/HeadsetService$3;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/hfp/HeadsetService$3;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    const-wide/16 v2, 0x352

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1497
    return-void
.end method

.method private sendBSIR()V
    .locals 4

    .line 2178
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->CONNECTING_CONNECTED_STATES:[I

    .line 2179
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    .line 2180
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v1

    .line 2181
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_3

    .line 2182
    nop

    .line 2183
    invoke-static {p0}, Landroid/bluetooth/BluetoothHeadset;->isInbandRingingSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2184
    invoke-static {}, Lcom/android/bluetooth/Utils;->isHfpInbandRingingSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "persist.bluetooth.disableinbandringing"

    .line 2185
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    .line 2186
    :goto_0
    if-eqz v2, :cond_3

    .line 2191
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isCallIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2192
    iput-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInbandRingingRuntimeDisable:Z

    .line 2193
    sget-object v0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$2n0UffDc0XeQiCl7_MfiD-b7GGg;->INSTANCE:Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$2n0UffDc0XeQiCl7_MfiD-b7GGg;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->doForEachConnectingConnectedStateMachine(Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V

    goto :goto_1

    .line 2197
    :cond_2
    sget-object v0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$TkzlF5CI16lQFRH0bGIX6Y21K8U;->INSTANCE:Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$TkzlF5CI16lQFRH0bGIX6Y21K8U;

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->doForEachConnectedStateMachine(Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V

    .line 2206
    :cond_3
    :goto_1
    monitor-exit v1

    .line 2207
    return-void

    .line 2206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendVendorSpecificResultCode(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 1835
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1836
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1837
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1838
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1839
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendVendorSpecificResultCode: device "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was never connected/connecting"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1841
    monitor-exit v0

    return v2

    .line 1843
    :cond_0
    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v3

    .line 1844
    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 1845
    monitor-exit v0

    return v2

    .line 1848
    :cond_1
    const-string v3, "+ANDROID"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1849
    const-string p1, "HeadsetService"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disallowed unsolicited result code command: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    monitor-exit v0

    return v2

    .line 1852
    :cond_2
    const/16 v2, 0xc

    new-instance v3, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;

    invoke-direct {v3, p1, p2, p3}, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;-><init>(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1854
    monitor-exit v0

    .line 1855
    const/4 p1, 0x1

    return p1

    .line 1854
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static declared-synchronized setHeadsetService(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 3

    const-class v0, Lcom/android/bluetooth/hfp/HeadsetService;

    monitor-enter v0

    .line 804
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHeadsetService(): set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 805
    sput-object p0, Lcom/android/bluetooth/hfp/HeadsetService;->sHeadsetService:Lcom/android/bluetooth/hfp/HeadsetService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    monitor-exit v0

    return-void

    .line 803
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private shouldCallAudioBeActive()Z
    .locals 1

    .line 1944
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isInCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1945
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isInbandRingingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1944
    :goto_1
    return v0
.end method

.method private shouldPersistAudio()Z
    .locals 1

    .line 1958
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->shouldCallAudioBeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startScoUsingVirtualVoiceCall()Z
    .locals 10

    .line 1438
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startScoUsingVirtualVoiceCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1442
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1443
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 1444
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startScoUsingVirtualVoiceCall: voice recognition is still active, just called stopVoiceRecognition, returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " on "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", please try again"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1447
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    .line 1448
    monitor-exit v0

    return v2

    .line 1450
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioModeIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startScoUsingVirtualVoiceCall: audio mode not idle, active device is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1453
    monitor-exit v0

    return v2

    .line 1456
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1458
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio()Z

    move-result v1

    .line 1459
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startScoUsingVirtualVoiceCall: audio is still active, please wait for audio to be disconnected, disconnectAudio() returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", active device is "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1462
    monitor-exit v0

    return v2

    .line 1464
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_3

    .line 1465
    const-string v1, "HeadsetService"

    const-string v3, "startScoUsingVirtualVoiceCall: no active device"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1466
    monitor-exit v0

    return v2

    .line 1468
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    .line 1470
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v9, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/bluetooth/hfp/HeadsetService;->phoneStateChanged(IIILjava/lang/String;ILjava/lang/String;Z)V

    .line 1472
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->phoneStateChangedDelay()V

    .line 1474
    monitor-exit v0

    return v1

    .line 1475
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method activeDeviceSwitched(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 1308
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    if-nez p1, :cond_0

    .line 1310
    const/4 p1, 0x0

    return p1

    .line 1312
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activeDeviceChanged: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1313
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1314
    :try_start_0
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1317
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1318
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInSwitchActiveDevice:Z

    goto :goto_0

    .line 1320
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->broadcastActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1323
    :goto_0
    monitor-exit v0

    .line 1324
    return v1

    .line 1323
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method broadcastActiveDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 2005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "broadcastActiveDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 2006
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 2007
    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->obfuscateAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 2008
    invoke-virtual {v1, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getMetricId(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 2006
    const/16 v2, 0x97

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v1}, Lcom/android/bluetooth/BluetoothStatsLog;->write(II[BI)V

    .line 2009
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2010
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2011
    const/high16 p1, 0x5000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2013
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 2014
    return-void
.end method

.method protected cleanup()V
    .locals 2

    .line 291
    const-string v0, "HeadsetService"

    const-string v1, "cleanup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mCreated:Z

    if-nez v1, :cond_0

    .line 293
    const-string v1, "cleanup() called before create()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mCreated:Z

    .line 296
    return-void
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 10

    .line 809
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 811
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: CONNECTION_POLICY_FORBIDDEN, device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 812
    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 811
    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 813
    return v1

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 816
    sget-object v2, Lcom/android/bluetooth/hfp/HeadsetService;->HEADSET_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, v2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect: Cannot connect to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": no headset UUID, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 817
    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 819
    return v1

    .line 821
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 822
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect: device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 823
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 824
    if-nez v2, :cond_2

    .line 825
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->getInstance()Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    move-result-object v3

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThread:Landroid/os/HandlerThread;

    .line 826
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v8, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v9, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-object v4, p1

    move-object v6, p0

    invoke-virtual/range {v3 .. v9}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->makeStateMachine(Landroid/bluetooth/BluetoothDevice;Landroid/os/Looper;Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/hfp/HeadsetNativeInterface;Lcom/android/bluetooth/hfp/HeadsetSystemInterface;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v2

    .line 828
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 830
    :cond_2
    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v3

    .line 831
    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_2

    .line 837
    :cond_3
    sget-object v3, Lcom/android/bluetooth/hfp/HeadsetService;->CONNECTING_CONNECTED_STATES:[I

    .line 838
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v3

    .line 839
    nop

    .line 840
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mMaxHeadsetConnections:I

    if-lt v5, v6, :cond_5

    .line 842
    iget v5, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mMaxHeadsetConnections:I

    if-ne v5, v4, :cond_4

    .line 844
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 845
    move v1, v4

    goto :goto_0

    .line 848
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max connection has reached, rejecting connection to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 849
    monitor-exit v0

    return v1

    .line 852
    :cond_5
    :goto_0
    if-eqz v1, :cond_7

    .line 853
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 854
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 855
    goto :goto_1

    .line 856
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 858
    :cond_7
    invoke-virtual {v2, v4, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 859
    monitor-exit v0

    .line 860
    return v4

    .line 833
    :cond_8
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connect: device "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already connected/connecting, connectionState="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 835
    monitor-exit v0

    return v1

    .line 859
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method connectAudio()Z
    .locals 4

    .line 1340
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1342
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1343
    if-nez v1, :cond_0

    .line 1344
    const-string v1, "HeadsetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAudio: no active device, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 1347
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1348
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method connectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    .line 1352
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectAudio: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1355
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->isScoAcceptable(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAudio, rejected SCO request to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1357
    monitor-exit v0

    return v2

    .line 1359
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1360
    if-nez v1, :cond_1

    .line 1361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectAudio: device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was never connected/connecting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1362
    monitor-exit v0

    return v2

    .line 1364
    :cond_1
    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 1365
    const-string p1, "connectAudio: profile not connected"

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1366
    monitor-exit v0

    return v2

    .line 1368
    :cond_2
    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAudioState()I

    move-result v3

    const/16 v4, 0xa

    const/4 v5, 0x1

    if-eq v3, v4, :cond_3

    .line 1369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectAudio: audio is not idle for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1370
    monitor-exit v0

    return v5

    .line 1372
    :cond_3
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1373
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectAudio: audio is not idle, current audio devices are "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getNonIdleAudioDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1373
    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1375
    monitor-exit v0

    return v2

    .line 1377
    :cond_4
    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1378
    monitor-exit v0

    .line 1379
    return v5

    .line 1378
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected create()V
    .locals 2

    .line 165
    const-string v0, "HeadsetService"

    const-string v1, "create()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mCreated:Z

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mCreated:Z

    .line 170
    return-void

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "create() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dialOutgoingCall(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 5

    .line 1554
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1555
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialOutgoingCall: from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1556
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isOnStateMachineThread()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1557
    const-string p1, "HeadsetService"

    const-string p2, "dialOutgoingCall must be called from state machine thread"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    monitor-exit v0

    return v2

    .line 1560
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    if-eqz v1, :cond_1

    .line 1561
    const-string p1, "HeadsetService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialOutgoingCall, already dialing by "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    monitor-exit v0

    return v2

    .line 1564
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isVirtualCallStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1565
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->stopScoUsingVirtualVoiceCall()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1566
    const-string p1, "HeadsetService"

    const-string p2, "dialOutgoingCall failed to stop current virtual call"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    monitor-exit v0

    return v2

    .line 1570
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1571
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialOutgoingCall failed to set active device to "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1572
    monitor-exit v0

    return v2

    .line 1574
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    const/4 v4, 0x0

    .line 1575
    invoke-static {v3, p2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1576
    const/high16 p2, 0x10000000

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1577
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->startActivity(Landroid/content/Intent;)V

    .line 1578
    new-instance p2, Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    invoke-direct {p2, p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    .line 1579
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    const-wide/16 v1, 0x2710

    .line 1580
    invoke-virtual {p1, p2, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1581
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 1582
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    .line 870
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 872
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 873
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 874
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect: device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not ever connected/connecting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 876
    monitor-exit v0

    return v2

    .line 878
    :cond_0
    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v3

    .line 879
    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq v3, v5, :cond_1

    if-eq v3, v4, :cond_1

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disconnect: device "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not connected/connecting, connectionState="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 883
    monitor-exit v0

    return v2

    .line 885
    :cond_1
    invoke-virtual {v1, v5, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 886
    monitor-exit v0

    .line 887
    return v4

    .line 886
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method disconnectAudio()Z
    .locals 6

    .line 1395
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    nop

    .line 1397
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1398
    :try_start_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getNonIdleAudioDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1399
    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1400
    const/4 v2, 0x1

    goto :goto_1

    .line 1402
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disconnectAudio() from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " failed"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1404
    :goto_1
    goto :goto_0

    .line 1405
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    if-nez v2, :cond_2

    .line 1407
    const-string v0, "disconnectAudio() no active audio connection"

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1409
    :cond_2
    return v2

    .line 1405
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 1413
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1415
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectAudio: device="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1416
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1417
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectAudio: device "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was never connected/connecting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1419
    monitor-exit v0

    return v2

    .line 1421
    :cond_0
    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAudioState()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 1422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnectAudio, audio is already disconnected for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1423
    monitor-exit v0

    return v2

    .line 1425
    :cond_1
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1426
    monitor-exit v0

    .line 1427
    const/4 p1, 0x1

    return p1

    .line 1426
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 5

    .line 2112
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 2113
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/bluetooth/btservice/ProfileService;->dump(Ljava/lang/StringBuilder;)V

    .line 2114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMaxHeadsetConnections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mMaxHeadsetConnections:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultMaxHeadsetConnections: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 2116
    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getMaxConnectedAudioDevices()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2115
    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mActiveDevice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInbandRingingEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isInbandRingingEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInbandRingingSupported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2120
    invoke-static {p0}, Landroid/bluetooth/BluetoothHeadset;->isInbandRingingSupported(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2119
    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInbandRingingRuntimeDisable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInbandRingingRuntimeDisable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAudioRouteAllowed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAudioRouteAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVoiceRecognitionStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVoiceRecognitionTimeoutEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVirtualCallStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDialingOutTimeoutEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mForceScoAudio: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mForceScoAudio:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioManager.isBluetoothScoOn(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2132
    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telecom.isInCall(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isInCall()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Telecom.isRinging(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isRinging()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2136
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 2137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==== StateMachine for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2138
    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ===="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2137
    invoke-static {p1, v3}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->dump(Ljava/lang/StringBuilder;)V

    .line 2140
    goto :goto_0

    .line 2141
    :cond_0
    monitor-exit v0

    .line 2142
    return-void

    .line 2141
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getActiveDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .line 1333
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1335
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    monitor-exit v0

    return-object v1

    .line 1336
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAudioRouteAllowed()Z
    .locals 2

    .line 1135
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAudioRouteAllowed:Z

    return v0
.end method

.method getAudioState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 1117
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1119
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1120
    if-nez p1, :cond_0

    .line 1121
    const/16 p1, 0xa

    monitor-exit v0

    return p1

    .line 1123
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAudioState()I

    move-result p1

    monitor-exit v0

    return p1

    .line 1124
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 891
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 893
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v1

    .line 894
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 895
    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 896
    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 898
    :cond_0
    goto :goto_0

    .line 899
    :cond_1
    monitor-exit v1

    .line 900
    return-object v0

    .line 899
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 990
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 991
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->getProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)I

    move-result p1

    .line 990
    return p1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    .line 939
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 942
    if-nez p1, :cond_0

    .line 943
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 945
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result p1

    monitor-exit v0

    return p1

    .line 946
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 911
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 913
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v1

    .line 914
    if-eqz p1, :cond_6

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    if-nez v2, :cond_0

    goto :goto_3

    .line 917
    :cond_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v2}, Lcom/android/bluetooth/btservice/AdapterService;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 918
    if-nez v2, :cond_1

    .line 919
    monitor-exit v1

    return-object v0

    .line 921
    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 922
    iget-object v7, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v7, v6}, Lcom/android/bluetooth/btservice/AdapterService;->getRemoteUuids(Landroid/bluetooth/BluetoothDevice;)[Landroid/os/ParcelUuid;

    move-result-object v7

    .line 923
    sget-object v8, Lcom/android/bluetooth/hfp/HeadsetService;->HEADSET_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v7, v8}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 924
    goto :goto_2

    .line 926
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v7

    .line 927
    array-length v8, p1

    move v9, v4

    :goto_1
    if-ge v9, v8, :cond_4

    aget v10, p1, v9

    .line 928
    if-ne v7, v10, :cond_3

    .line 929
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    goto :goto_2

    .line 927
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 921
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 934
    :cond_5
    monitor-exit v1

    .line 935
    return-object v0

    .line 915
    :cond_6
    :goto_3
    monitor-exit v1

    return-object v0

    .line 934
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getFirstConnectedAudioDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 5

    .line 1158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1159
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v1

    .line 1160
    :try_start_0
    sget-object v2, Lcom/android/bluetooth/hfp/HeadsetService;->CONNECTING_CONNECTED_STATES:[I

    .line 1161
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v2

    .line 1162
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 1163
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1164
    if-nez v3, :cond_0

    .line 1165
    goto :goto_0

    .line 1167
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    goto :goto_0

    .line 1169
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    sget-object v1, Lcom/android/bluetooth/hfp/-$$Lambda$zZhcclBCEMTE1UUJjcoEJjXmX_8;->INSTANCE:Lcom/android/bluetooth/hfp/-$$Lambda$zZhcclBCEMTE1UUJjcoEJjXmX_8;

    invoke-static {v1}, Ljava/util/Comparator;->comparingLong(Ljava/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1171
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1172
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    return-object v0

    .line 1174
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 1169
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getForceScoAudio()Z
    .locals 1

    .line 1147
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mForceScoAudio:Z

    return v0
.end method

.method public getStateMachinesThreadLooper()Landroid/os/Looper;
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public hasDeviceInitiatedDialingOut()Z
    .locals 2

    .line 1592
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1593
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 1594
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initBinder()Lcom/android/bluetooth/btservice/ProfileService$IProfileServiceBinder;
    .locals 1

    .line 160
    new-instance v0, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetService$BluetoothHeadsetBinder;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;)V

    return-object v0
.end method

.method public isAlive()Z
    .locals 1

    .line 304
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mCreated:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isAudioConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 1106
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1108
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1109
    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 1110
    monitor-exit v0

    return v1

    .line 1112
    :cond_0
    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getAudioState()I

    move-result p1

    const/16 v2, 0xc

    if-ne p1, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit v0

    return v1

    .line 1113
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isAudioOn()Z
    .locals 2

    .line 1101
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getNonIdleAudioDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInSwitchActiveDevice()Z
    .locals 2

    .line 2168
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 2169
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInSwitchActiveDevice:Z

    monitor-exit v0

    return v1

    .line 2170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isInbandRingingEnabled()Z
    .locals 7

    .line 1859
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    invoke-static {p0}, Landroid/bluetooth/BluetoothHeadset;->isInbandRingingSupported(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 1861
    invoke-static {}, Lcom/android/bluetooth/Utils;->isHfpInbandRingingSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInbandRingingRuntimeDisable:Z

    if-nez v0, :cond_1

    .line 1862
    const-string v0, "persist.bluetooth.disableinbandringing"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1863
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "none qurey black list inbandRingingSupported="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HeadsetService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v3

    .line 1865
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v4, :cond_2

    .line 1866
    monitor-exit v3

    return v0

    .line 1869
    :cond_2
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v4, v4, Lcom/android/bluetooth/btservice/AdapterService;->mInteropDatabase:Lcom/android/bluetooth/interop/InteropDatabase;

    const-string v5, "MtkHfpInbandRingingDisable"

    iget-object v6, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1870
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 1869
    invoke-virtual {v4, v5, v2, v6}, Lcom/android/bluetooth/interop/InteropDatabase;->interopDatabaseMatch(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v4

    .line 1872
    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    .line 1873
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after qurey black list device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inbandRingingSupported="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1875
    monitor-exit v3

    return v1

    .line 1877
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScoAcceptable(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 2059
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 2060
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 2065
    :cond_0
    iget-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mForceScoAudio:Z

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 2066
    monitor-exit v0

    return v2

    .line 2068
    :cond_1
    iget-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAudioRouteAllowed:Z

    if-nez p1, :cond_2

    .line 2069
    const-string p1, "HeadsetService"

    const-string v2, "isScoAcceptable: rejected SCO since audio route is not allowed"

    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    monitor-exit v0

    return v1

    .line 2072
    :cond_2
    iget-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 2075
    :cond_3
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->shouldCallAudioBeActive()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2076
    monitor-exit v0

    return v2

    .line 2078
    :cond_4
    const-string p1, "HeadsetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isScoAcceptable: rejected SCO, inCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isInCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", voiceRecognition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", ringing="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    .line 2080
    invoke-virtual {v3}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isRinging()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", inbandRinging="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isInbandRingingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isVirtualCallStarted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2078
    invoke-static {p1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    monitor-exit v0

    return v1

    .line 2073
    :cond_5
    :goto_0
    monitor-exit v0

    return v2

    .line 2061
    :cond_6
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isScoAcceptable: rejected SCO since "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not the current active device "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 2063
    monitor-exit v0

    return v1

    .line 2083
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method isVirtualCallStarted()Z
    .locals 2

    .line 1431
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1433
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    monitor-exit v0

    return v1

    .line 1434
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$clccResponse$6$HeadsetService(IIIIZLjava/lang/String;ILcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 13

    .line 1819
    move-object/from16 v0, p8

    move-object v1, p0

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->needDelayClcc(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v1

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1820
    new-instance v1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    move-object v4, v1

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Lcom/android/bluetooth/hfp/HeadsetClccResponse;-><init>(IIIIZLjava/lang/String;I)V

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    goto :goto_0

    .line 1824
    :cond_0
    new-instance v1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    move-object v5, v1

    move v6, p1

    move v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Lcom/android/bluetooth/hfp/HeadsetClccResponse;-><init>(IIIIZLjava/lang/String;I)V

    invoke-virtual {v0, v2, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1829
    :goto_0
    return-void
.end method

.method public synthetic lambda$phoneStateChanged$2$HeadsetService(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 4

    .line 1742
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;->mDialingOutDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0xe

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$phoneStateChanged$3$HeadsetService(III)V
    .locals 2

    .line 1760
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isCallIdle()Z

    move-result v0

    .line 1761
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setNumActiveCall(I)V

    .line 1762
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setNumHeldCall(I)V

    .line 1763
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->setCallState(I)V

    .line 1765
    const/4 p1, 0x7

    if-eq p3, p1, :cond_2

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    .line 1766
    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isCallIdle()Z

    move-result p1

    if-nez p1, :cond_2

    if-eqz v0, :cond_2

    .line 1767
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    const-string p2, "A2dpSuspended=true"

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1770
    new-instance p1, Lcom/android/bluetooth/btservice/ServiceFactory;

    invoke-direct {p1}, Lcom/android/bluetooth/btservice/ServiceFactory;-><init>()V

    .line 1772
    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0x64

    if-ge p2, p3, :cond_2

    .line 1773
    invoke-virtual {p1}, Lcom/android/bluetooth/btservice/ServiceFactory;->getA2dpService()Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object p3

    .line 1774
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1775
    if-eqz p3, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1776
    invoke-virtual {p3, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->isA2dpPlaying(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_2

    .line 1779
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1781
    const-wide/16 v0, 0x14

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1784
    goto :goto_1

    .line 1782
    :catch_0
    move-exception p3

    .line 1783
    const-string v0, "HeadsetService"

    const-string v1, "Thread sleep 20ms"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1772
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1777
    :cond_1
    :goto_2
    :try_start_2
    monitor-exit v0

    goto :goto_3

    .line 1779
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 1787
    :cond_2
    :goto_3
    return-void
.end method

.method public synthetic lambda$phoneStateChanged$5$HeadsetService(I)V
    .locals 1

    .line 1792
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    .line 1793
    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isCallIdle()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1795
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    const-string v0, "A2dpSuspended=false"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1797
    :cond_0
    return-void
.end method

.method messageFromNative(Lcom/android/bluetooth/hfp/HeadsetStackEvent;)V
    .locals 19

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v8, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device should never be null, event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 381
    iget-object v9, v0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v9

    .line 382
    :try_start_0
    iget-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    iget-object v2, v8, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 383
    iget v2, v8, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 384
    iget v2, v8, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    if-eq v2, v3, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    if-nez v1, :cond_1

    .line 389
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->getInstance()Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    move-result-object v1

    iget-object v2, v8, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThread:Landroid/os/HandlerThread;

    .line 391
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v5, v0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    iget-object v6, v0, Lcom/android/bluetooth/hfp/HeadsetService;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v7, v0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    .line 390
    move-object/from16 v4, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->makeStateMachine(Landroid/bluetooth/BluetoothDevice;Landroid/os/Looper;Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/btservice/AdapterService;Lcom/android/bluetooth/hfp/HeadsetNativeInterface;Lcom/android/bluetooth/hfp/HeadsetSystemInterface;)Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    move-result-object v1

    .line 393
    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    iget-object v3, v8, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    :cond_1
    :goto_0
    iget v2, v8, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->type:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_3

    .line 400
    invoke-virtual/range {p0 .. p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isVirtualCallStarted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 402
    const-string v17, "10000000"

    .line 403
    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->toaFromString(Ljava/lang/String;)I

    move-result v18

    .line 404
    iget-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getCallState()I

    move-result v1

    .line 405
    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getHeadsetPhoneState()Lcom/android/bluetooth/hfp/HeadsetPhoneState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/bluetooth/hfp/HeadsetPhoneState;->getNumActiveCall()I

    move-result v2

    .line 407
    const/4 v3, 0x6

    if-ne v1, v3, :cond_2

    if-eqz v2, :cond_2

    .line 409
    const/4 v1, 0x0

    move v14, v1

    goto :goto_1

    .line 411
    :cond_2
    move v14, v1

    :goto_1
    iget-object v10, v0, Lcom/android/bluetooth/hfp/HeadsetService;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v11, v8, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v18}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->clccResponse(Landroid/bluetooth/BluetoothDevice;IIIIZLjava/lang/String;I)Z

    .line 413
    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetService;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    iget-object v1, v8, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->clccResponse(Landroid/bluetooth/BluetoothDevice;IIIIZLjava/lang/String;I)Z

    .line 414
    monitor-exit v9

    return-void

    .line 417
    :cond_3
    if-eqz v1, :cond_4

    .line 421
    const/16 v0, 0x65

    invoke-virtual {v1, v0, v8}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 422
    monitor-exit v9

    .line 423
    return-void

    .line 418
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State machine not found for stack event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public okToAcceptConnection(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    .line 2024
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->isQuietModeEnabled()Z

    move-result v0

    const-string v1, "HeadsetService"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2025
    const-string p1, "okToAcceptConnection: return false as quiet mode enabled"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    return v2

    .line 2029
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 2030
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v3, p1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    .line 2033
    const/16 v4, 0xc

    if-eq v3, v4, :cond_1

    .line 2034
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "okToAcceptConnection: return false, bondState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    return v2

    .line 2036
    :cond_1
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    const/16 v3, 0x64

    if-eq v0, v3, :cond_2

    .line 2039
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "okToAcceptConnection: return false, connectionPolicy="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    return v2

    .line 2042
    :cond_2
    sget-object v0, Lcom/android/bluetooth/hfp/HeadsetService;->CONNECTING_CONNECTED_STATES:[I

    .line 2043
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v0

    .line 2044
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mMaxHeadsetConnections:I

    if-lt v0, v1, :cond_3

    .line 2045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum number of connections "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mMaxHeadsetConnections:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " was reached, rejecting connection from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 2047
    return v2

    .line 2049
    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public onAudioStateChangedFromStateMachine(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 2

    .line 1972
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1973
    const/16 v1, 0xa

    if-ne p3, v1, :cond_3

    .line 1974
    if-eq p2, v1, :cond_0

    .line 1975
    :try_start_0
    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1976
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->shouldPersistAudio()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1977
    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 1978
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onAudioStateChangedFromStateMachine, failed to connect audio to new active device "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", after "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is disconnected from SCO"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1984
    :cond_0
    iget-boolean p2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    if-eqz p2, :cond_1

    .line 1985
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopVoiceRecognitionByHeadset(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1986
    const-string p1, "HeadsetService"

    const-string p2, "onAudioStateChangedFromStateMachine: failed to stop voice recognition"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    :cond_1
    iget-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    if-eqz p1, :cond_2

    .line 1991
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->stopScoUsingVirtualVoiceCall()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1992
    const-string p1, "HeadsetService"

    const-string p2, "onAudioStateChangedFromStateMachine: failed to stop virtual voice call"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isCallIdle()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1998
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object p1

    const-string p2, "A2dpSuspended=false"

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 2001
    :cond_3
    monitor-exit v0

    .line 2002
    return-void

    .line 2001
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onConnectionStateChangedFromStateMachine(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 5

    .line 1891
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1892
    :try_start_0
    sget-object v1, Lcom/android/bluetooth/hfp/HeadsetService;->CONNECTING_CONNECTED_STATES:[I

    .line 1893
    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1

    .line 1894
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p2, v2, :cond_4

    if-ne p3, v2, :cond_4

    .line 1896
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    if-le v2, v3, :cond_2

    .line 1897
    iput-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInbandRingingRuntimeDisable:Z

    .line 1898
    nop

    .line 1899
    invoke-static {p0}, Landroid/bluetooth/BluetoothHeadset;->isInbandRingingSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1900
    invoke-static {}, Lcom/android/bluetooth/Utils;->isHfpInbandRingingSupport()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "persist.bluetooth.disableinbandringing"

    .line 1901
    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    nop

    .line 1902
    :goto_0
    if-eqz v4, :cond_3

    .line 1903
    sget-object v2, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wVTEkKLAeSgOMGSZraQxSzc7kaA;->INSTANCE:Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wVTEkKLAeSgOMGSZraQxSzc7kaA;

    invoke-direct {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->doForEachConnectedStateMachine(Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V

    goto :goto_1

    .line 1907
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 1908
    iput-boolean v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInbandRingingRuntimeDisable:Z

    goto :goto_2

    .line 1907
    :cond_3
    :goto_1
    nop

    .line 1910
    :goto_2
    sget-object v2, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEADSET:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v2}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 1912
    :cond_4
    if-eqz p2, :cond_7

    if-nez p3, :cond_7

    .line 1914
    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1915
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1917
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v3, :cond_6

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_6

    .line 1918
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->sendBSIR()V

    goto :goto_3

    .line 1919
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_7

    .line 1920
    iput-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInbandRingingRuntimeDisable:Z

    .line 1923
    :cond_7
    :goto_3
    monitor-exit v0

    .line 1924
    return-void

    .line 1923
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method onDeviceStateChanged(Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V
    .locals 1

    .line 367
    new-instance v0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$aK7IyaKUC7uqefRgWRqWtTOWFfE;

    invoke-direct {v0, p1}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$aK7IyaKUC7uqefRgWRqWtTOWFfE;-><init>(Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V

    invoke-direct {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->doForEachConnectedStateMachine(Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V

    .line 370
    return-void
.end method

.method removeStateMachine(Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 2092
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 2093
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 2094
    if-nez v1, :cond_0

    .line 2095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeStateMachine(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have a state machine"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 2096
    monitor-exit v0

    return-void

    .line 2098
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeStateMachine(), removing state machine for device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 2099
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->getInstance()Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->destroyStateMachine(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    .line 2100
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    monitor-exit v0

    .line 2102
    return-void

    .line 2101
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    .line 1214
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveDevice: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1216
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1217
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInSwitchActiveDevice:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveDevice: Cannot set "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as still in switching"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1219
    monitor-exit v0

    return v2

    .line 1221
    :cond_0
    const/16 v1, 0xa

    const/4 v3, 0x1

    if-nez p1, :cond_5

    .line 1223
    iget-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    if-eqz p1, :cond_1

    .line 1224
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1225
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveDevice: fail to stopVoiceRecognition from "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1229
    :cond_1
    iget-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    if-eqz p1, :cond_2

    .line 1230
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->stopScoUsingVirtualVoiceCall()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1231
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveDevice: fail to stopScoUsingVirtualVoiceCall from "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1235
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-eq p1, v1, :cond_3

    .line 1236
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveDevice: disconnectAudio failed on "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1240
    :cond_3
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1241
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->broadcastActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1245
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isInbandRingingEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1246
    iput-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInbandRingingRuntimeDisable:Z

    .line 1247
    sget-object p1, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$F0LcLiMTADvJYCfizdQc20m4V00;->INSTANCE:Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$F0LcLiMTADvJYCfizdQc20m4V00;

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->doForEachConnectedStateMachine(Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)V

    .line 1250
    :cond_4
    monitor-exit v0

    return v3

    .line 1252
    :cond_5
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setActiveDevice: device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already active"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1254
    monitor-exit v0

    return v3

    .line 1256
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_7

    .line 1257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveDevice: Cannot set "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as active, device is not connected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1259
    monitor-exit v0

    return v2

    .line 1261
    :cond_7
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {v4, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 1262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setActiveDevice: Cannot set "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as active in native layer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1263
    monitor-exit v0

    return v2

    .line 1265
    :cond_8
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1266
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1267
    invoke-virtual {p0, v4}, Lcom/android/bluetooth/hfp/HeadsetService;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-eq p1, v1, :cond_b

    .line 1268
    invoke-virtual {p0, v4}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveDevice: fail to disconnectAudio from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1271
    iput-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1272
    if-eqz v4, :cond_9

    .line 1273
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, v4}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1275
    :cond_9
    monitor-exit v0

    return v2

    .line 1279
    :cond_a
    iput-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInSwitchActiveDevice:Z

    goto :goto_0

    .line 1282
    :cond_b
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->shouldPersistAudio()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1283
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->broadcastActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1284
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 1285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveDevice: fail to connectAudio to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1286
    iput-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1287
    if-eqz v4, :cond_c

    .line 1288
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {p1, v4}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1290
    :cond_c
    monitor-exit v0

    return v2

    .line 1293
    :cond_d
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->broadcastActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1296
    :cond_e
    :goto_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->sendBSIR()V

    .line 1297
    monitor-exit v0

    .line 1298
    return v3

    .line 1297
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setActiveDeviceDone()Z
    .locals 3

    .line 2158
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 2159
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInSwitchActiveDevice:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2160
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInSwitchActiveDevice:Z

    .line 2161
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 2163
    :cond_0
    monitor-exit v0

    return v2

    .line 2164
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAudioRouteAllowed(Z)V
    .locals 2

    .line 1128
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioRouteAllowed: allowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadsetService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAudioRouteAllowed:Z

    .line 1131
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->setScoAllowed(Z)Z

    .line 1132
    return-void
.end method

.method public setConnectionPolicy(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 2

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setConnectionPolicy: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectionPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 965
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 967
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getDatabase()Lcom/android/bluetooth/btservice/storage/DatabaseManager;

    move-result-object v0

    .line 968
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/bluetooth/btservice/storage/DatabaseManager;->setProfileConnectionPolicy(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 969
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 970
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 971
    :cond_0
    if-nez p2, :cond_1

    .line 972
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 974
    :cond_1
    :goto_0
    return v1
.end method

.method public setForceScoAudio(Z)V
    .locals 2

    .line 1140
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setForceScoAudio: forced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadsetService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mForceScoAudio:Z

    .line 1143
    return-void
.end method

.method setInbandRingtoneRuntimeDisable(Z)V
    .locals 1

    .line 2213
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 2214
    :try_start_0
    iput-boolean p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInbandRingingRuntimeDisable:Z

    .line 2215
    monitor-exit v0

    .line 2216
    return-void

    .line 2215
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSilenceMode(Landroid/bluetooth/BluetoothDevice;Z)Z
    .locals 2

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSilenceMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1188
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1189
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 1190
    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_1

    .line 1192
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1194
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1195
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1196
    if-nez v1, :cond_2

    .line 1197
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSilenceMode: device "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " was never connected/connecting"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1199
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 1201
    :cond_2
    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->setSilenceDevice(Z)Z

    .line 1202
    monitor-exit v0

    .line 1204
    const/4 p1, 0x1

    return p1

    .line 1202
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected start()Z
    .locals 4

    .line 174
    const-string v0, "HeadsetService"

    const-string v1, "start()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStarted:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 177
    const-string v0, "HeadsetService"

    const-string v2, "HeadsetService start() called twice "

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v1

    .line 181
    :cond_0
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    const-string v2, "AdapterService cannot be null when HeadsetService starts"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/btservice/AdapterService;

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 184
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "HeadsetService.StateMachines"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThread:Landroid/os/HandlerThread;

    .line 185
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 187
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->getInstance()Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->makeSystemInterface(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    .line 188
    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->init()V

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-virtual {v0}, Lcom/android/bluetooth/btservice/AdapterService;->getMaxConnectedAudioDevices()I

    move-result v0

    iput v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mMaxHeadsetConnections:I

    .line 191
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->getInstance()Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->getNativeInterface()Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    .line 193
    iget v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mMaxHeadsetConnections:I

    add-int/2addr v2, v1

    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isInbandRingingEnabled()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->init(IZ)V

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 201
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    invoke-static {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->setHeadsetService(Lcom/android/bluetooth/hfp/HeadsetService;)V

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 212
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInSwitchActiveDevice:Z

    .line 214
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInbandRingingRuntimeDisable:Z

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStarted:Z

    .line 217
    return v1

    .line 215
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 196
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start(): mStateMachines is not empty, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    .line 197
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is already created. Was stop() called properly?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 7

    .line 995
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVoiceRecognition: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 997
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 999
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1000
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    .line 1001
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceRecognition: voice recognition is still active, just called stopVoiceRecognition, returned "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", please try again"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1004
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    .line 1005
    monitor-exit v0

    return v2

    .line 1007
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioModeIdle()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1008
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVoiceRecognition: audio mode not idle, active device is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1010
    monitor-exit v0

    return v2

    .line 1013
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1015
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio()Z

    move-result p1

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceRecognition: audio is still active, please wait for audio to be disconnected, disconnectAudio() returned "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", active device is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1019
    monitor-exit v0

    return v2

    .line 1021
    :cond_2
    if-nez p1, :cond_3

    .line 1022
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device is null, use active device "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " instead"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1023
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1025
    :cond_3
    nop

    .line 1026
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 1027
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    iget-object v1, v1, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->mVoiceRecognitionDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1029
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVoiceRecognition: device "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not the same as requesting device "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    iget-object p1, p1, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->mVoiceRecognitionDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", fall back to requesting device"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1033
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    iget-object p1, p1, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->mVoiceRecognitionDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1035
    :cond_4
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1036
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    .line 1037
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getVoiceRecognitionWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1038
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getVoiceRecognitionWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1040
    :cond_5
    move v1, v3

    goto :goto_0

    .line 1026
    :cond_6
    move v1, v2

    .line 1042
    :goto_0
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1043
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceRecognition: failed to set "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as active"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1044
    monitor-exit v0

    return v2

    .line 1046
    :cond_7
    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1047
    if-nez v4, :cond_8

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceRecognition: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is never connected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1049
    monitor-exit v0

    return v2

    .line 1051
    :cond_8
    invoke-virtual {v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v5

    .line 1052
    const/4 v6, 0x2

    if-eq v5, v6, :cond_9

    if-eq v5, v3, :cond_9

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceRecognition: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not connected or connecting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1055
    monitor-exit v0

    return v2

    .line 1057
    :cond_9
    iput-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    .line 1058
    if-eqz v1, :cond_a

    .line 1059
    const/16 v1, 0xf

    invoke-virtual {v4, v1, v3, v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_1

    .line 1062
    :cond_a
    const/4 v1, 0x5

    invoke-virtual {v4, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1064
    :goto_1
    const/4 v1, 0x3

    invoke-virtual {v4, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1065
    monitor-exit v0

    .line 1066
    return v3

    .line 1065
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method startVoiceRecognitionByHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 1624
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1625
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVoiceRecognitionByHeadset: from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1627
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1628
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    .line 1629
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceRecognitionByHeadset: voice recognition is still active, just called stopVoiceRecognition, returned "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", please try again"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1632
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    .line 1633
    monitor-exit v0

    return v2

    .line 1635
    :cond_0
    if-nez p1, :cond_1

    .line 1636
    const-string p1, "HeadsetService"

    const-string v1, "startVoiceRecognitionByHeadset: fromDevice is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1637
    monitor-exit v0

    return v2

    .line 1639
    :cond_1
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioModeIdle()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1640
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startVoiceRecognitionByHeadset: audio mode not idle, active device is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1642
    monitor-exit v0

    return v2

    .line 1645
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->isAudioOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1647
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio()Z

    move-result p1

    .line 1648
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceRecognitionByHeadset: audio is still active, please wait for audio to be disconnected, disconnectAudio() returned "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", active device is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1651
    monitor-exit v0

    return v2

    .line 1654
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    if-eqz v1, :cond_4

    .line 1655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceRecognitionByHeadset: failed request from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", already pending by "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1657
    monitor-exit v0

    return v2

    .line 1659
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1660
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceRecognitionByHeadset: failed to set "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " as active"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1662
    monitor-exit v0

    return v2

    .line 1664
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->activateVoiceRecognition()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1665
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startVoiceRecognitionByHeadset: failed request from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1666
    monitor-exit v0

    return v2

    .line 1668
    :cond_6
    new-instance v1, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    invoke-direct {v1, p0, p1}, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;-><init>(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;)V

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    .line 1669
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    sget v2, Lcom/android/bluetooth/hfp/HeadsetService;->sStartVrTimeoutMs:I

    int-to-long v2, v2

    .line 1670
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1672
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getVoiceRecognitionWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1673
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getVoiceRecognitionWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    sget v1, Lcom/android/bluetooth/hfp/HeadsetService;->sStartVrTimeoutMs:I

    int-to-long v1, v1

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1675
    :cond_7
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 1676
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected stop()Z
    .locals 6

    .line 222
    const-string v0, "HeadsetService"

    const-string v1, "stop()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 224
    const-string v0, "HeadsetService"

    const-string v2, "stop() called before start()"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v1

    .line 230
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStarted:Z

    .line 231
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetService;->setHeadsetService(Lcom/android/bluetooth/hfp/HeadsetService;)V

    .line 233
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mHeadsetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v3

    .line 235
    :try_start_0
    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInSwitchActiveDevice:Z

    .line 237
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 239
    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->broadcastActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 241
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mInbandRingingRuntimeDisable:Z

    .line 242
    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mForceScoAudio:Z

    .line 243
    iput-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAudioRouteAllowed:Z

    .line 244
    iput v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mMaxHeadsetConnections:I

    .line 245
    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    .line 246
    iput-boolean v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    .line 247
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    if-eqz v0, :cond_1

    .line 248
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    .line 249
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 250
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mDialingOutTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    if-eqz v0, :cond_2

    .line 253
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    .line 254
    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 255
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    .line 256
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getVoiceRecognitionWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getVoiceRecognitionWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 262
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->getInstance()Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/bluetooth/hfp/HeadsetObjectsFactory;->destroyStateMachine(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    .line 263
    goto :goto_0

    .line 264
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 265
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 267
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mNativeInterface:Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->cleanup()V

    .line 269
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->stop()V

    .line 272
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 273
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 274
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThread:Landroid/os/HandlerThread;

    .line 275
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachinesThreadHandler:Landroid/os/Handler;

    .line 276
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mPhoneStateChangeTimer:Ljava/util/Timer;

    if-eqz v3, :cond_4

    .line 277
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mPhoneStateChangeTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 278
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mPhoneStateChangeTimer:Ljava/util/Timer;

    .line 280
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 283
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v3

    .line 284
    :try_start_2
    iput-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mAdapterService:Lcom/android/bluetooth/btservice/AdapterService;

    .line 285
    monitor-exit v3

    .line 286
    return v1

    .line 285
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 280
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 265
    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method stopScoUsingVirtualVoiceCall()Z
    .locals 10

    .line 1500
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    const-string v1, "Need BLUETOOTH_ADMIN permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopScoUsingVirtualVoiceCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeadsetService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1504
    :try_start_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1505
    const-string v1, "HeadsetService"

    const-string v3, "stopScoUsingVirtualVoiceCall: virtual call not started"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    monitor-exit v0

    return v2

    .line 1509
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mPhoneStateChangeTimer:Ljava/util/Timer;

    if-eqz v1, :cond_1

    .line 1510
    const-string v1, "HeadsetService"

    const-string v3, "cancel phone state change timer when stop virtual call"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mPhoneStateChangeTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1512
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mPhoneStateChangeTimer:Ljava/util/Timer;

    .line 1515
    :cond_1
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVirtualCallStarted:Z

    .line 1517
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const-string v6, ""

    const/4 v7, 0x0

    const-string v8, ""

    const/4 v9, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/bluetooth/hfp/HeadsetService;->phoneStateChanged(IIILjava/lang/String;ILjava/lang/String;Z)V

    .line 1518
    monitor-exit v0

    .line 1519
    const/4 v0, 0x1

    return v0

    .line 1518
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    .line 1070
    const-string v0, "android.permission.BLUETOOTH"

    const-string v1, "Need BLUETOOTH permission"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVoiceRecognition: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/bluetooth/Utils;->getUidPidString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1072
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1073
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1074
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startVoiceRecognition: requested device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not active, use active device "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " instead"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1076
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1078
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1079
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 1080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVoiceRecognition: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is never connected"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1081
    monitor-exit v0

    return v2

    .line 1083
    :cond_1
    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getConnectionState()I

    move-result v3

    .line 1084
    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    if-eq v3, v5, :cond_2

    .line 1086
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVoiceRecognition: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not connected or connecting"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1087
    monitor-exit v0

    return v2

    .line 1089
    :cond_2
    iget-boolean v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    if-nez v3, :cond_3

    .line 1090
    const-string p1, "HeadsetService"

    const-string v1, "stopVoiceRecognition: voice recognition was not started"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    monitor-exit v0

    return v2

    .line 1093
    :cond_3
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    .line 1094
    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1095
    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1096
    monitor-exit v0

    .line 1097
    return v5

    .line 1096
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method stopVoiceRecognitionByHeadset(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    .line 1680
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mStateMachines:Ljava/util/HashMap;

    monitor-enter v0

    .line 1681
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVoiceRecognitionByHeadset: from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1682
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVoiceRecognitionByHeadset: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not active, active device is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mActiveDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1685
    monitor-exit v0

    return v2

    .line 1687
    :cond_0
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    if-nez v1, :cond_1

    .line 1688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVoiceRecognitionByHeadset: voice recognition not started, device="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1690
    monitor-exit v0

    return v2

    .line 1692
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    if-eqz v1, :cond_3

    .line 1693
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getVoiceRecognitionWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1694
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getVoiceRecognitionWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1696
    :cond_2
    invoke-direct {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->getStateMachinesThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    .line 1697
    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1699
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionTimeoutEvent:Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    .line 1701
    :cond_3
    iget-boolean v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    if-eqz v1, :cond_5

    .line 1702
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetService;->disconnectAudio()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVoiceRecognitionByHeadset: failed to disconnect audio from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1706
    :cond_4
    iput-boolean v2, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mVoiceRecognitionStarted:Z

    .line 1708
    :cond_5
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService;->mSystemInterface:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->deactivateVoiceRecognition()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopVoiceRecognitionByHeadset: failed request from "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->logD(Ljava/lang/String;)V

    .line 1710
    monitor-exit v0

    return v2

    .line 1712
    :cond_6
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    .line 1713
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
