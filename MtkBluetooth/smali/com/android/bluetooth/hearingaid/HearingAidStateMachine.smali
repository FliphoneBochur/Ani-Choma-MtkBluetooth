.class final Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;
.super Lcom/android/bluetooth/statemachine/StateMachine;
.source "HearingAidStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;,
        Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnecting;,
        Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;,
        Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;
    }
.end annotation


# static fields
.field static final CONNECT:I = 0x1

.field private static final CONNECT_TIMEOUT:I = 0xc9

.field private static final DBG:Z = false

.field static final DISCONNECT:I = 0x2

.field static final STACK_EVENT:I = 0x65

.field private static final TAG:Ljava/lang/String; = "HearingAidStateMachine"

.field static sConnectTimeoutMs:I


# instance fields
.field private mConnected:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;

.field private mConnecting:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;

.field private mConnectionState:I

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDisconnected:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;

.field private mDisconnecting:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnecting;

.field private mLastConnectionState:I

.field private mNativeInterface:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

.field private mService:Lcom/android/bluetooth/hearingaid/HearingAidService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const/16 v0, 0x7530

    sput v0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->sConnectTimeoutMs:I

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hearingaid/HearingAidService;Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;Landroid/os/Looper;)V
    .locals 1

    .line 94
    const-string v0, "HearingAidStateMachine"

    invoke-direct {p0, v0, p4}, Lcom/android/bluetooth/statemachine/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 84
    const/4 p4, 0x0

    iput p4, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mConnectionState:I

    .line 85
    const/4 p4, -0x1

    iput p4, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mLastConnectionState:I

    .line 95
    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 96
    iput-object p2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    .line 97
    iput-object p3, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mNativeInterface:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    .line 99
    new-instance p1, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDisconnected:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;

    .line 100
    new-instance p1, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;-><init>(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mConnecting:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;

    .line 101
    new-instance p1, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnecting;-><init>(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDisconnecting:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnecting;

    .line 102
    new-instance p1, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;-><init>(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mConnected:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;

    .line 104
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDisconnected:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 105
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mConnecting:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 106
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDisconnecting:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 107
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mConnected:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 109
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDisconnected:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->setInitialState(Lcom/android/bluetooth/statemachine/State;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$100(I)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-static {p0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->messageWhatToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDisconnected:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnecting;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDisconnecting:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnecting;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mConnectionState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->removeDeferredMessages(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mLastConnectionState:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mLastConnectionState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;II)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->broadcastConnectionState(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mNativeInterface:Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidService;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mConnecting:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mConnected:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;

    return-object p0
.end method

.method private broadcastConnectionState(II)V
    .locals 2

    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->profileStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->profileStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 521
    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    const-string p2, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 523
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string p2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 524
    const/high16 p1, 0x5000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 526
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mService:Lcom/android/bluetooth/hearingaid/HearingAidService;

    const-string p2, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, p2}, Lcom/android/bluetooth/hearingaid/HearingAidService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 527
    return-void
.end method

.method static make(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hearingaid/HearingAidService;Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;Landroid/os/Looper;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "make for device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingAidStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hearingaid/HearingAidService;Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;Landroid/os/Looper;)V

    .line 117
    invoke-virtual {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->start()V

    .line 118
    return-object v0
.end method

.method private static messageWhatToString(I)Ljava/lang/String;
    .locals 1

    .line 530
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x65

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc9

    if-eq p0, v0, :cond_0

    .line 542
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 538
    :cond_0
    const-string p0, "CONNECT_TIMEOUT"

    return-object p0

    .line 536
    :cond_1
    const-string p0, "STACK_EVENT"

    return-object p0

    .line 534
    :cond_2
    const-string p0, "DISCONNECT"

    return-object p0

    .line 532
    :cond_3
    const-string p0, "CONNECT"

    return-object p0
.end method

.method private static profileStateToString(I)Ljava/lang/String;
    .locals 1

    .line 546
    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 558
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 554
    :cond_0
    const-string p0, "DISCONNECTING"

    return-object p0

    .line 552
    :cond_1
    const-string p0, "CONNECTED"

    return-object p0

    .line 550
    :cond_2
    const-string p0, "CONNECTING"

    return-object p0

    .line 548
    :cond_3
    const-string p0, "DISCONNECTED"

    return-object p0
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cleanup for device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public doQuit()V
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doQuit for device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->quitNow()V

    .line 124
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  StateMachine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 565
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 566
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 567
    new-instance v2, Ljava/io/FileDescriptor;

    invoke-direct {v2}, Ljava/io/FileDescriptor;-><init>()V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-super {p0, v2, v1, v3}, Lcom/android/bluetooth/statemachine/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 568
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 569
    invoke-virtual {v0}, Ljava/io/StringWriter;->flush()V

    .line 570
    const-string v1, "  StateMachineLog:"

    invoke-static {p1, v1}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 571
    new-instance v1, Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/lang/String;)V

    .line 572
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v0

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 575
    goto :goto_0

    .line 576
    :cond_0
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 577
    return-void
.end method

.method getConnectionState()I
    .locals 1

    .line 504
    iget v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mConnectionState:I

    return v0
.end method

.method getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method declared-synchronized isConnected()Z
    .locals 2

    monitor-enter p0

    .line 512
    :try_start_0
    invoke-virtual {p0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getConnectionState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0

    .line 584
    return-void
.end method
