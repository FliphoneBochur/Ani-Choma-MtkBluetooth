.class final Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.super Lcom/android/bluetooth/statemachine/StateMachine;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;,
        Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    }
.end annotation


# static fields
.field static final CONNECT:I = 0x1

.field private static final CONNECT_TIMEOUT:I = 0xc9

.field private static final DBG:Z

.field static final DISCONNECT:I = 0x2

.field static final STACK_EVENT:I = 0x65

.field private static final TAG:Ljava/lang/String; = "A2dpStateMachine"

.field static sConnectTimeoutAddStep:I

.field static sConnectTimeoutMs:I


# instance fields
.field private mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

.field mA2dpOffloadEnabled:Z

.field private mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

.field private mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

.field private mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

.field private mConnecting:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;

.field private mConnectionState:I

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

.field private mDisconnecting:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;

.field private mFirstConnected:Z

.field private mIsPlaying:Z

.field private mLastBroadcastConnState:I

.field private mLastConnectionState:I

.field private mOptionCodecsEnabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 71
    nop

    .line 72
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    .line 83
    const v0, 0x9c40

    sput v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sConnectTimeoutMs:I

    .line 84
    const/16 v0, 0x2710

    sput v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sConnectTimeoutAddStep:I

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/a2dp/A2dpService;Lcom/android/bluetooth/a2dp/A2dpNativeInterface;Landroid/os/Looper;)V
    .locals 1

    .line 106
    const-string v0, "A2dpStateMachine"

    invoke-direct {p0, v0, p4}, Lcom/android/bluetooth/statemachine/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 89
    const/4 p4, 0x0

    iput p4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectionState:I

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mLastConnectionState:I

    .line 92
    iput p4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mLastBroadcastConnState:I

    .line 97
    iput-boolean p4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpOffloadEnabled:Z

    .line 100
    iput-boolean p4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIsPlaying:Z

    .line 102
    iput v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mOptionCodecsEnabled:I

    .line 103
    iput-boolean p4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mFirstConnected:Z

    .line 107
    sget-boolean p4, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    invoke-virtual {p0, p4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setDbg(Z)V

    .line 108
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 109
    iput-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    .line 110
    iput-object p3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    .line 112
    new-instance p1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    .line 113
    new-instance p1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnecting:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;

    .line 114
    new-instance p1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnecting:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;

    .line 115
    new-instance p1, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    .line 117
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 118
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnecting:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 119
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnecting:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 120
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 121
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    iget-boolean p1, p1, Lcom/android/bluetooth/a2dp/A2dpService;->mA2dpOffloadEnabled:Z

    iput-boolean p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpOffloadEnabled:Z

    .line 123
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->setInitialState(Lcom/android/bluetooth/statemachine/State;)V

    .line 124
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mFirstConnected:Z

    .line 125
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->messageWhatToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpNativeInterface;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpNativeInterface:Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnecting:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDisconnecting:Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectionState:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectionState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mFirstConnected:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mFirstConnected:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mOptionCodecsEnabled:I

    return p0
.end method

.method static synthetic access$502(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mOptionCodecsEnabled:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I
    .locals 0

    .line 70
    iget p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mLastConnectionState:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I
    .locals 0

    .line 70
    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mLastConnectionState:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;II)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIsPlaying:Z

    return p0
.end method

.method static synthetic access$902(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIsPlaying:Z

    return p1
.end method

.method private static audioStateToString(I)Ljava/lang/String;
    .locals 1

    .line 782
    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    .line 790
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 786
    :cond_0
    const-string p0, "NOT_PLAYING"

    return-object p0

    .line 784
    :cond_1
    const-string p0, "PLAYING"

    return-object p0
.end method

.method private broadcastAudioState(II)V
    .locals 3

    .line 714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A2DP Playing state : device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->audioStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->audioStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 716
    const/16 v0, 0x98

    invoke-static {v0, p1}, Lcom/android/bluetooth/BluetoothStatsLog;->write(II)V

    .line 717
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 719
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 720
    const-string p2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 721
    const/high16 p1, 0x4000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 722
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/a2dp/A2dpService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method private broadcastConnectionState(II)V
    .locals 2

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->profileStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->profileStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 701
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 702
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 703
    const-string p2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 704
    iget-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 705
    const/high16 p2, 0x5000000

    invoke-virtual {v0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 707
    iget-object p2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p2, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 709
    iput p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mLastBroadcastConnState:I

    .line 711
    return-void
.end method

.method static make(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/a2dp/A2dpService;Lcom/android/bluetooth/a2dp/A2dpNativeInterface;Landroid/os/Looper;)Lcom/android/bluetooth/a2dp/A2dpStateMachine;
    .locals 2

    .line 129
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "make for device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_0
    new-instance v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/a2dp/A2dpService;Lcom/android/bluetooth/a2dp/A2dpNativeInterface;Landroid/os/Looper;)V

    .line 134
    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->start()V

    .line 135
    return-object v0
.end method

.method private static messageWhatToString(I)Ljava/lang/String;
    .locals 1

    .line 750
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x65

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_0

    .line 762
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 758
    :cond_0
    const-string p0, "CONNECT_TIMEOUT"

    return-object p0

    .line 756
    :cond_1
    const-string p0, "STACK_EVENT"

    return-object p0

    .line 754
    :cond_2
    const-string p0, "DISCONNECT"

    return-object p0

    .line 752
    :cond_3
    const-string p0, "CONNECT"

    return-object p0
.end method

.method private static profileStateToString(I)Ljava/lang/String;
    .locals 1

    .line 766
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 778
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 774
    :cond_0
    const-string p0, "DISCONNECTING"

    return-object p0

    .line 772
    :cond_1
    const-string p0, "CONNECTED"

    return-object p0

    .line 770
    :cond_2
    const-string p0, "CONNECTING"

    return-object p0

    .line 768
    :cond_3
    const-string p0, "DISCONNECTED"

    return-object p0
.end method

.method private static sameSelectableCodec(Landroid/bluetooth/BluetoothCodecStatus;Landroid/bluetooth/BluetoothCodecStatus;)Z
    .locals 0

    .line 741
    if-nez p0, :cond_0

    .line 742
    const/4 p0, 0x0

    return p0

    .line 744
    :cond_0
    nop

    .line 745
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p0

    .line 746
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    .line 744
    invoke-static {p0, p1}, Landroid/bluetooth/BluetoothCodecStatus;->sameCapabilities([Landroid/bluetooth/BluetoothCodecConfig;[Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanup for device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public doQuit()V
    .locals 3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doQuit for device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 140
    iget-boolean v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIsPlaying:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doQuit: stopped playing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 143
    iput-boolean v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIsPlaying:Z

    .line 144
    const/16 v0, 0xb

    const/16 v2, 0xa

    invoke-direct {p0, v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastAudioState(II)V

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState()I

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    const-string v0, "doQuit()- Broadcast A2DP State to DISCONNECTED"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mLastBroadcastConnState:I

    invoke-direct {p0, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->broadcastConnectionState(II)V

    .line 153
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->quitNow()V

    .line 154
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 7

    .line 794
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/A2dpService;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 795
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "=== A2dpStateMachine for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 796
    if-eqz v0, :cond_0

    const-string v0, " (Active) ==="

    goto :goto_0

    :cond_0
    const-string v0, " ==="

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getConnectionPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 798
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 799
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mConnectionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectionState:I

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->profileStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLastConnectionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mLastConnectionState:I

    .line 800
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->profileStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsPlaying: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIsPlaying:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  getSupportsOptionalCodecs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 803
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->getSupportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", getOptionalCodecsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 804
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 805
    monitor-enter p0

    .line 806
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCodecConfig: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 808
    const-string v0, "  mCodecsSelectableCapabilities:"

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 809
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v0

    array-length v2, v0

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 810
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 809
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 813
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  StateMachine: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 816
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 817
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 818
    new-instance v3, Ljava/io/FileDescriptor;

    invoke-direct {v3}, Ljava/io/FileDescriptor;-><init>()V

    new-array v1, v1, [Ljava/lang/String;

    invoke-super {p0, v3, v2, v1}, Lcom/android/bluetooth/statemachine/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 819
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 820
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    .line 821
    const-string v1, "  StateMachineLog:"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 822
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 823
    :goto_2
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 824
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 826
    goto :goto_2

    .line 827
    :cond_2
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 828
    return-void

    .line 813
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method getCodecStatus()Landroid/bluetooth/BluetoothCodecStatus;
    .locals 1

    .line 633
    monitor-enter p0

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    monitor-exit p0

    return-object v0

    .line 635
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getConnectionState()I
    .locals 1

    .line 613
    iget v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mConnectionState:I

    return v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 617
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method protected getLogRecString(Landroid/os/Message;)Ljava/lang/String;
    .locals 2

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 728
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->messageWhatToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    const-string v1, "arg1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 731
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 732
    const-string v1, ", arg2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 733
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 734
    const-string v1, ", obj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 735
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 736
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method isConnected()Z
    .locals 2

    .line 621
    monitor-enter p0

    .line 622
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getConnectionState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 623
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isPlaying()Z
    .locals 1

    .line 627
    monitor-enter p0

    .line 628
    :try_start_0
    iget-boolean v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mIsPlaying:Z

    monitor-exit p0

    return v0

    .line 629
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1

    .line 832
    sget-boolean v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 833
    invoke-super {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->log(Ljava/lang/String;)V

    .line 835
    :cond_0
    return-void
.end method

.method processCodecConfigEvent(Landroid/bluetooth/BluetoothCodecStatus;)V
    .locals 9

    .line 641
    nop

    .line 642
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    .line 644
    monitor-enter p0

    .line 645
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    if-eqz v1, :cond_0

    .line 646
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v1

    goto :goto_0

    .line 645
    :cond_0
    const/4 v1, 0x0

    .line 648
    :goto_0
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    .line 649
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    sget-boolean v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->DBG:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 652
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "A2DP Codec Config: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 652
    const-string v4, "A2dpStateMachine"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsLocalCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    .line 656
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A2DP Codec Local Capability: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "A2dpStateMachine"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 659
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecsSelectableCapabilities()[Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 660
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "A2DP Codec Selectable Capability: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "A2dpStateMachine"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 664
    :cond_2
    invoke-virtual {p0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sameSelectableCodec(Landroid/bluetooth/BluetoothCodecStatus;Landroid/bluetooth/BluetoothCodecStatus;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 668
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->updateOptionalCodecsSupport(Landroid/bluetooth/BluetoothDevice;)V

    .line 670
    :cond_3
    iget-boolean v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpOffloadEnabled:Z

    if-eqz v0, :cond_8

    .line 671
    nop

    .line 672
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    .line 673
    const/4 v0, 0x1

    if-eqz v1, :cond_4

    .line 674
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v4

    if-eq v2, v4, :cond_4

    .line 675
    goto :goto_3

    .line 676
    :cond_4
    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig;->sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 677
    goto :goto_3

    .line 678
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_6

    if-eqz v1, :cond_6

    .line 681
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v1

    .line 682
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v4

    cmp-long p1, v1, v4

    if-eqz p1, :cond_6

    .line 683
    goto :goto_3

    .line 685
    :cond_6
    move v0, v3

    :goto_3
    if-eqz v0, :cond_7

    .line 686
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->codecConfigUpdated(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;Z)V

    .line 688
    :cond_7
    return-void

    .line 691
    :cond_8
    nop

    .line 692
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecStatus;->getCodecConfig()Landroid/bluetooth/BluetoothCodecConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothCodecConfig;->sameAudioFeedingParameters(Landroid/bluetooth/BluetoothCodecConfig;)Z

    move-result p1

    .line 693
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mA2dpService:Lcom/android/bluetooth/a2dp/A2dpService;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->mCodecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/bluetooth/a2dp/A2dpService;->codecConfigUpdated(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothCodecStatus;Z)V

    .line 694
    return-void

    .line 649
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
