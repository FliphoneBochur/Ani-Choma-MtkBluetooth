.class public Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.super Lcom/android/bluetooth/statemachine/StateMachine;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;,
        Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;
    }
.end annotation


# static fields
.field protected static final CLEANUP:I = 0x64

.field public static final CONNECT:I = 0x1

.field private static final CONNECT_TIMEOUT:I = 0x65

.field static final CONNECT_TIMEOUT_MS:I = 0x1388

.field static final DBG:Z

.field public static final DISCONNECT:I = 0x2

.field static final STACK_EVENT:I = 0xc8

.field static final TAG:Ljava/lang/String; = "A2DPSinkStateMachine"


# instance fields
.field protected mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

.field protected final mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

.field protected final mConnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;

.field protected final mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected final mDeviceAddress:[B

.field protected final mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

.field protected final mDisconnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;

.field protected mMostRecentState:I

.field protected final mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    const-string v0, "A2DPSinkStateMachine"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/a2dpsink/A2dpSinkService;)V
    .locals 2

    .line 64
    const-string v0, "A2DPSinkStateMachine"

    invoke-direct {p0, v0}, Lcom/android/bluetooth/statemachine/StateMachine;-><init>(Ljava/lang/String;)V

    .line 60
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    .line 65
    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 66
    invoke-static {p1}, Lcom/android/bluetooth/Utils;->getByteAddress(Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDeviceAddress:[B

    .line 67
    iput-object p2, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    .line 68
    sget-boolean p2, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    :cond_0
    new-instance p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    .line 71
    new-instance p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;

    .line 72
    new-instance p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    .line 73
    new-instance p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;-><init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;

    .line 75
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 76
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 77
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 78
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->addState(Lcom/android/bluetooth/statemachine/State;)V

    .line 80
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->setInitialState(Lcom/android/bluetooth/statemachine/State;)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public final connect()V
    .locals 1

    .line 116
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(I)V

    .line 117
    return-void
.end method

.method public final disconnect()V
    .locals 1

    .line 123
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(I)V

    .line 124
    return-void
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 132
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-static {p1, v0}, Lcom/android/bluetooth/btservice/ProfileService;->println(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method getAudioConfig()Landroid/bluetooth/BluetoothAudioConfig;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    return-object v0
.end method

.method protected getConnectionStateChangedIntent()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    return-object v0
.end method

.method public declared-synchronized getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 109
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getState()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    return v0
.end method

.method protected onConnectionStateChanged(I)V
    .locals 3

    .line 294
    iget v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    if-ne v0, p1, :cond_0

    .line 295
    return-void

    .line 297
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 298
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->A2DP_SINK:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    .line 300
    :cond_1
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v0, :cond_2

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2DPSinkStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 305
    iget v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    const-string v1, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 307
    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 308
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 309
    iput p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    .line 310
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 311
    return-void
.end method

.method protected unhandledMessage(Landroid/os/Message;)V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unhandledMessage in state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->getCurrentState()Lcom/android/bluetooth/statemachine/IState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "msg.what="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "A2DPSinkStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method
