.class final Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;
.super Lcom/android/bluetooth/statemachine/StateMachine;
.source "PbapClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;,
        Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;,
        Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;,
        Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnected;
    }
.end annotation


# static fields
.field static final CONNECT_TIMEOUT:I = 0x2710

.field private static final DBG:Z = false

.field static final DISCONNECT_TIMEOUT:I = 0xbb8

.field static final MSG_CONNECTION_CLOSED:I = 0x7

.field static final MSG_CONNECTION_COMPLETE:I = 0x5

.field static final MSG_CONNECTION_FAILED:I = 0x6

.field private static final MSG_CONNECT_TIMEOUT:I = 0x3

.field private static final MSG_DISCONNECT:I = 0x2

.field private static final MSG_DISCONNECT_TIMEOUT:I = 0x4

.field static final MSG_RESUME_DOWNLOAD:I = 0x8

.field private static final MSG_SDP_COMPLETE:I = 0x9

.field private static final TAG:Ljava/lang/String; = "PbapClientStateMachine"


# instance fields
.field private mConnected:Lcom/android/bluetooth/statemachine/State;

.field private mConnecting:Lcom/android/bluetooth/statemachine/State;

.field private mConnectionHandler:Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;

.field private final mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDisconnected:Lcom/android/bluetooth/statemachine/State;

.field private mDisconnecting:Lcom/android/bluetooth/statemachine/State;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private mMostRecentState:I

.field private mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 107
    const-string v0, "PbapClientStateMachine"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/statemachine/StateMachine;-><init>(Ljava/lang/String;)V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    .line 101
    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mUserManager:Landroid/os/UserManager;

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mMostRecentState:I

    .line 109
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    .line 110
    iput-object p2, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 111
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mLock:Ljava/lang/Object;

    .line 112
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mUserManager:Landroid/os/UserManager;

    .line 113
    new-instance p1, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mDisconnected:Lcom/android/bluetooth/statemachine/State;

    .line 114
    new-instance p1, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mConnecting:Lcom/android/bluetooth/statemachine/State;

    .line 115
    new-instance p1, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mDisconnecting:Lcom/android/bluetooth/statemachine/State;

    .line 116
    new-instance p1, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mConnected:Lcom/android/bluetooth/statemachine/State;

    .line 118
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mDisconnected:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 119
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mConnecting:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 120
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mDisconnecting:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 121
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mConnected:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 123
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mConnecting:Lcom/android/bluetooth/statemachine/State;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->setInitialState(Lcom/android/bluetooth/statemachine/State;)V

    .line 124
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)I
    .locals 0

    .line 69
    iget p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mMostRecentState:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/statemachine/State;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mConnected:Lcom/android/bluetooth/statemachine/State;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)I
    .locals 0

    .line 69
    iput p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mMostRecentState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/statemachine/State;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mDisconnected:Lcom/android/bluetooth/statemachine/State;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/os/UserManager;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/os/HandlerThread;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mConnectionHandler:Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mConnectionHandler:Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientService;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/statemachine/State;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mDisconnecting:Lcom/android/bluetooth/statemachine/State;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->removeMessages(I)V

    return-void
.end method

.method private onConnectionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 3

    .line 333
    const-string v0, "PbapClientStateMachine"

    if-nez p1, :cond_0

    .line 334
    const-string p1, "onConnectionStateChanged with invalid device"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return-void

    .line 337
    :cond_0
    if-eq p2, p3, :cond_1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 338
    sget-object v1, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->PBAP_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v1}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 340
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 342
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    const-string p2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 344
    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 345
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/pbapclient/PbapClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 347
    return-void
.end method


# virtual methods
.method public disconnect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 351
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 352
    return-void
.end method

.method doQuit()V
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->quitNow()V

    .line 363
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    .line 435
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 434
    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public getConnectionState()I
    .locals 3

    .line 371
    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object v0

    .line 372
    instance-of v1, v0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnected;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 373
    return v2

    .line 374
    :cond_0
    instance-of v1, v0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;

    if-eqz v1, :cond_1

    .line 375
    const/4 v0, 0x1

    return v0

    .line 376
    :cond_1
    instance-of v1, v0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;

    if-eqz v1, :cond_2

    .line 377
    const/4 v0, 0x2

    return v0

    .line 378
    :cond_2
    instance-of v0, v0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;

    if-eqz v0, :cond_3

    .line 379
    const/4 v0, 0x3

    return v0

    .line 381
    :cond_3
    const-string v0, "PbapClientStateMachine"

    const-string v1, "Unknown State"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return v2
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 404
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 405
    return v0

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 408
    :try_start_0
    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 409
    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getConnectionState()I

    move-result p1

    monitor-exit v1

    return p1

    .line 411
    :cond_1
    monitor-exit v1

    .line 412
    return v0

    .line 411
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 423
    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object v0

    instance-of v0, v0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnected;

    if-eqz v0, :cond_0

    .line 424
    const/4 v0, 0x0

    return-object v0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getConnectionState()I

    move-result v1

    .line 390
    invoke-virtual {p0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 391
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    array-length v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget v5, p1, v4

    .line 394
    if-ne v1, v5, :cond_0

    .line 395
    if-eqz v2, :cond_0

    .line 396
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 400
    :cond_1
    return-object v0

    .line 391
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected onQuitting()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mService:Lcom/android/bluetooth/pbapclient/PbapClientService;

    iget-object v1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->mCurrentDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientService;->cleanupDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 368
    return-void
.end method

.method public resumeDownload()V
    .locals 1

    .line 355
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->sendMessage(I)V

    .line 356
    return-void
.end method
