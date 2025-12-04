.class Lcom/android/bluetooth/pbap/PbapStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "PbapStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;,
        Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;,
        Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;,
        Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;
    }
.end annotation


# static fields
.field static final AUTHORIZED:I = 0x1

.field static final AUTH_CANCELLED:I = 0x8

.field static final AUTH_KEY_INPUT:I = 0x7

.field static final CREATE_NOTIFICATION:I = 0x5

.field private static final DEBUG:Z = true

.field static final DISCONNECT:I = 0x3

.field private static final PBAP_OBEX_NOTIFICATION_CHANNEL:Ljava/lang/String; = "pbap_obex_notification_channel"

.field static final REJECTED:I = 0x2

.field static final REMOVE_NOTIFICATION:I = 0x6

.field static final REQUEST_PERMISSION:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PbapStateMachine"

.field private static final VERBOSE:Z


# instance fields
.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private final mConnected:Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;

.field private final mFinished:Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;

.field private mIObexConnectionHandler:Lcom/android/bluetooth/IObexConnectionHandler;

.field private mNotificationId:I

.field private mObexAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

.field private mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

.field private mPrevState:Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

.field private mServiceHandler:Landroid/os/Handler;

.field private final mWaitingForAuth:Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    nop

    .line 67
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/pbap/PbapStateMachine;->VERBOSE:Z

    .line 66
    return-void
.end method

.method private constructor <init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/Looper;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;Lcom/android/bluetooth/IObexConnectionHandler;Landroid/os/Handler;I)V
    .locals 1

    .line 97
    const-string v0, "PbapStateMachine"

    invoke-direct {p0, v0, p2}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 82
    new-instance p2, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;-><init>(Lcom/android/bluetooth/pbap/PbapStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mWaitingForAuth:Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;

    .line 83
    new-instance p2, Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;-><init>(Lcom/android/bluetooth/pbap/PbapStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mFinished:Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;

    .line 84
    new-instance p2, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;

    invoke-direct {p2, p0}, Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;-><init>(Lcom/android/bluetooth/pbap/PbapStateMachine;)V

    iput-object p2, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mConnected:Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;

    .line 98
    iput-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    .line 99
    iput-object p5, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mIObexConnectionHandler:Lcom/android/bluetooth/IObexConnectionHandler;

    .line 100
    iput-object p3, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 101
    iput-object p6, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mServiceHandler:Landroid/os/Handler;

    .line 102
    iput-object p4, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 103
    iput p7, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mNotificationId:I

    .line 105
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mFinished:Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 106
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mWaitingForAuth:Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 107
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mConnected:Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 108
    iget-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mWaitingForAuth:Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/pbap/PbapStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 109
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mPrevState:Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/bluetooth/pbap/PbapStateMachine;Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;)Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mPrevState:Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapService;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mService:Lcom/android/bluetooth/pbap/BluetoothPbapService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/bluetooth/pbap/PbapStateMachine;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/pbap/PbapStateMachine;)Ljavax/obex/ServerSession;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mServerSession:Ljavax/obex/ServerSession;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/bluetooth/pbap/PbapStateMachine;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mServerSession:Ljavax/obex/ServerSession;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/pbap/PbapStateMachine;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mNotificationId:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mObexAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/bluetooth/pbap/PbapStateMachine;Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;)Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mObexAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mWaitingForAuth:Lcom/android/bluetooth/pbap/PbapStateMachine$WaitingForAuth;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mFinished:Lcom/android/bluetooth/pbap/PbapStateMachine$Finished;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mConnected:Lcom/android/bluetooth/pbap/PbapStateMachine$Connected;

    return-object p0
.end method

.method static synthetic access$600()Z
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/bluetooth/pbap/PbapStateMachine;->VERBOSE:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/pbap/PbapStateMachine;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mServiceHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/pbap/PbapStateMachine;)Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/bluetooth/pbap/PbapStateMachine;Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;)Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    return-object p1
.end method

.method static make(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/Looper;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;Lcom/android/bluetooth/IObexConnectionHandler;Landroid/os/Handler;I)Lcom/android/bluetooth/pbap/PbapStateMachine;
    .locals 9

    .line 114
    new-instance v8, Lcom/android/bluetooth/pbap/PbapStateMachine;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/bluetooth/pbap/PbapStateMachine;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/os/Looper;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothSocket;Lcom/android/bluetooth/IObexConnectionHandler;Landroid/os/Handler;I)V

    .line 117
    invoke-virtual {v8}, Lcom/android/bluetooth/pbap/PbapStateMachine;->start()V

    .line 118
    return-object v8
.end method


# virtual methods
.method declared-synchronized getConnectionState()I
    .locals 1

    monitor-enter p0

    .line 440
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/pbap/PbapStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 441
    if-nez v0, :cond_0

    .line 442
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 444
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/PbapStateMachine$PbapStateBase;->getConnectionStateInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 439
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getRemoteDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/bluetooth/pbap/PbapStateMachine;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 449
    sget-boolean v0, Lcom/android/bluetooth/pbap/PbapStateMachine;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 450
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->log(Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method
