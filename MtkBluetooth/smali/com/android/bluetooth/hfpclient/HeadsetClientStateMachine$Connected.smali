.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;
.super Lcom/android/bluetooth/statemachine/State;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connected"
.end annotation


# instance fields
.field mCommandedSpeakerVolume:I

.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .line 1060
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    .line 1061
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->mCommandedSpeakerVolume:I

    return-void
.end method

.method private broadcastVoiceRecognitionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 1

    .line 1427
    if-ne p2, p3, :cond_0

    .line 1428
    return-void

    .line 1430
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1431
    const-string v0, "android.bluetooth.headsetclient.extra.VOICE_RECOGNITION"

    invoke-virtual {p2, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1432
    const-string p3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1433
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    const-string p3, "android.permission.BLUETOOTH"

    invoke-virtual {p1, p2, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1434
    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 5

    .line 1457
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "HeadsetClientStateMachine"

    if-nez v0, :cond_0

    .line 1458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio changed on disconnected device: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    return-void

    .line 1462
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    .line 1521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio State Device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " bad state: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1464
    :cond_1
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 1475
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->isScoRouted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1476
    new-instance v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    invoke-direct {v0, v3}, Lcom/android/bluetooth/hfpclient/StackEvent;-><init>(I)V

    .line 1478
    iput p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    .line 1479
    iput-object p2, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 1480
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 p2, 0x64

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 1481
    goto/16 :goto_1

    .line 1484
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1488
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 1489
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->amToHfVol(I)I

    move-result p1

    .line 1491
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hfp_enable=true mAudioWbs is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1492
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1493
    const-string p2, "Setting sampling rate as 16000"

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1494
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object p2

    const-string v0, "hfp_set_sampling_rate=16000"

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    .line 1496
    :cond_4
    const-string p2, "Setting sampling rate as 8000"

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1497
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object p2

    const-string v0, "hfp_set_sampling_rate=8000"

    invoke-virtual {p2, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1499
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hf_volume "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1500
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {p2, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->routeHfpAudio(Z)V

    .line 1501
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioFocusRequest;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/media/AudioFocusRequest;)Landroid/media/AudioFocusRequest;

    .line 1502
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hfp_volume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1503
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1504
    goto :goto_1

    .line 1508
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1509
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    .line 1508
    invoke-static {p1, p2, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1510
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1511
    goto :goto_1

    .line 1515
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1516
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    .line 1515
    invoke-static {p1, p2, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1517
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1518
    nop

    .line 1524
    :goto_1
    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1438
    const-string v0, "HeadsetClientStateMachine"

    if-eqz p1, :cond_0

    .line 1449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " bad state: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1440
    :cond_0
    const-string p1, "Connected disconnects."

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1442
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1443
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_0

    .line 1445
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnected from unknown device: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    nop

    .line 1452
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1065
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 1067
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->mCommandedSpeakerVolume:I

    .line 1068
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1069
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1071
    sget-object v0, Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;->HEADSET_CLIENT:Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;

    invoke-static {v0}, Lcom/android/bluetooth/btservice/MetricsLogger;->logProfileConnectionEvent(Lcom/android/bluetooth/BluetoothMetricsProto$ProfileId;)V

    goto :goto_1

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 1074
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "null"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1075
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Illegal state transition from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to Connecting, mCurrentDevice="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1076
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1075
    const-string v1, "HeadsetClientStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_2
    :goto_1
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit Connected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1529
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/State;

    .line 1530
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 12

    monitor-enter p0

    .line 1082
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected process message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1083
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2900()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1085
    const-string p1, "HeadsetClientStateMachine"

    const-string v0, "ERROR: mCurrentDevice is null in Connected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    monitor-exit p0

    return v1

    .line 1090
    :cond_0
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0xa

    const/4 v3, -0x1

    const/16 v4, 0x32

    const/4 v5, 0x1

    if-eq v0, v2, :cond_19

    const/16 v2, 0x15

    if-eq v0, v2, :cond_18

    if-eq v0, v4, :cond_16

    const/16 v2, 0x34

    if-eq v0, v2, :cond_14

    const/16 v2, 0x64

    const/4 v6, 0x6

    const/4 v7, 0x5

    if-eq v0, v2, :cond_7

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1420
    monitor-exit p0

    return v1

    .line 1207
    :pswitch_0
    :try_start_2
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    .line 1208
    goto/16 :goto_4

    .line 1210
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    int-to-byte p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->sendDtmf([BB)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1212
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v0, 0x11

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_4

    .line 1214
    :cond_1
    const-string p1, "HeadsetClientStateMachine"

    const-string v0, "ERROR: Couldn\'t send DTMF"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    goto/16 :goto_4

    .line 1204
    :pswitch_2
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    .line 1205
    goto/16 :goto_4

    .line 1201
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    .line 1202
    goto/16 :goto_4

    .line 1198
    :pswitch_4
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    .line 1199
    goto/16 :goto_4

    .line 1195
    :pswitch_5
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    .line 1196
    goto/16 :goto_4

    .line 1192
    :pswitch_6
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    .line 1193
    goto/16 :goto_4

    .line 1161
    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1162
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->amToHfVol(I)I

    move-result v0

    .line 1163
    iget v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->mCommandedSpeakerVolume:I

    if-eq p1, v2, :cond_1b

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Volume"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->mCommandedSpeakerVolume:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1166
    iput v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->mCommandedSpeakerVolume:I

    .line 1167
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object p1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v2

    invoke-virtual {p1, v2, v1, v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->setVolume([BII)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1169
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_4

    .line 1158
    :pswitch_8
    goto/16 :goto_4

    .line 1139
    :pswitch_9
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result p1

    if-ne p1, v5, :cond_1b

    .line 1140
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1141
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    .line 1140
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->stopVoiceRecognition([B)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1142
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, v6}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_4

    .line 1144
    :cond_2
    const-string p1, "HeadsetClientStateMachine"

    const-string v0, "ERROR: Couldn\'t stop voice recognition"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1128
    :pswitch_a
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result p1

    if-nez p1, :cond_1b

    .line 1129
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1130
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    .line 1129
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->startVoiceRecognition([B)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1131
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_4

    .line 1133
    :cond_3
    const-string p1, "HeadsetClientStateMachine"

    const-string v0, "ERROR: Couldn\'t start voice recognition"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1122
    :pswitch_b
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->disconnectAudio([B)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 1123
    const-string p1, "HeadsetClientStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: Couldn\'t disconnect Audio for device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1110
    :pswitch_c
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->connectAudio([B)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1111
    const-string p1, "HeadsetClientStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ERROR: Couldn\'t connect Audio for device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {p1, v0, v1, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_4

    .line 1117
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1119
    goto/16 :goto_4

    .line 1100
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1101
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1102
    goto/16 :goto_4

    .line 1104
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->disconnect([B)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1105
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectNative failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1092
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1093
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1095
    goto/16 :goto_4

    .line 1097
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/NativeInterface;->connect([B)Z

    .line 1098
    goto/16 :goto_4

    .line 1234
    :cond_7
    nop

    .line 1235
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hfpclient/StackEvent;

    .line 1236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: event type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1238
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    packed-switch v0, :pswitch_data_2

    .line 1414
    :pswitch_f
    const-string v0, "HeadsetClientStateMachine"

    goto/16 :goto_3

    .line 1408
    :pswitch_10
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;

    move-result-object v0

    iget-object v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->processEvent(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1409
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown event :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1406
    :pswitch_11
    goto/16 :goto_4

    .line 1394
    :pswitch_12
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1395
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v3, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    if-ne v3, v5, :cond_8

    move v1, v5

    :cond_8
    invoke-static {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 1396
    const-string v1, "android.bluetooth.headsetclient.extra.IN_BAND_RING"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1398
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1399
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    const-string v2, "android.permission.BLUETOOTH"

    invoke-virtual {v1, v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "onInBandRing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1401
    goto/16 :goto_4

    .line 1386
    :pswitch_13
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1388
    const-string v1, "android.bluetooth.headsetclient.extra.SUBSCRIBER_INFO"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1389
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;

    move-result-object v2

    .line 1388
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1390
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1391
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1392
    goto/16 :goto_4

    .line 1346
    :pswitch_14
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 1349
    if-eqz v0, :cond_d

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    .line 1354
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: command result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " queuedAction: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1357
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v7, :cond_c

    if-eq v0, v6, :cond_b

    if-eq v0, v4, :cond_a

    .line 1380
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled AT OK "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    goto/16 :goto_4

    .line 1359
    :cond_a
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    .line 1360
    goto/16 :goto_4

    .line 1371
    :cond_b
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    if-nez v0, :cond_1b

    .line 1372
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    .line 1373
    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3202(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1375
    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1376
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    .line 1375
    invoke-direct {p0, p1, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->broadcastVoiceRecognitionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_4

    .line 1362
    :cond_c
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    if-nez v0, :cond_1b

    .line 1363
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    .line 1364
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1, v5}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3202(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1366
    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1367
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    .line 1366
    invoke-direct {p0, p1, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->broadcastVoiceRecognitionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_4

    .line 1350
    :cond_d
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    .line 1351
    goto/16 :goto_4

    .line 1335
    :pswitch_15
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    if-nez v0, :cond_e

    .line 1336
    iget p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt2:I

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->hfToAmVol(I)I

    move-result p1

    iput p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->mCommandedSpeakerVolume:I

    .line 1337
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AM volume set to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->mCommandedSpeakerVolume:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1338
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object p1

    iget v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->mCommandedSpeakerVolume:I

    invoke-virtual {p1, v1, v0, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto/16 :goto_4

    .line 1340
    :cond_e
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    if-ne v0, v5, :cond_1b

    .line 1342
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object v0

    iget p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt2:I

    if-nez p1, :cond_f

    move v1, v5

    :cond_f
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    goto/16 :goto_4

    .line 1328
    :pswitch_16
    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v7, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    iget v8, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt3:I

    iget-object v9, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt4:I

    if-ne v0, v5, :cond_10

    move v10, v5

    goto :goto_1

    :cond_10
    move v10, v1

    :goto_1
    iget p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt2:I

    if-nez p1, :cond_11

    move v11, v5

    goto :goto_2

    :cond_11
    move v11, v1

    :goto_2
    invoke-static/range {v6 .. v11}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;IILjava/lang/String;ZZ)V

    .line 1333
    goto/16 :goto_4

    .line 1325
    :pswitch_17
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {p1, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    .line 1326
    goto/16 :goto_4

    .line 1305
    :pswitch_18
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1307
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1308
    const-string v1, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    iget-object v2, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1310
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1311
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1312
    goto/16 :goto_4

    .line 1296
    :pswitch_19
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1298
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1299
    const-string v1, "android.bluetooth.headsetclient.extra.BATTERY_LEVEL"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1301
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1302
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1303
    goto/16 :goto_4

    .line 1287
    :pswitch_1a
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1290
    const-string v1, "android.bluetooth.headsetclient.extra.NETWORK_SIGNAL_STRENGTH"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1292
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1293
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1294
    goto/16 :goto_4

    .line 1278
    :pswitch_1b
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$202(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1280
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1281
    const-string v1, "android.bluetooth.headsetclient.extra.NETWORK_ROAMING"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1283
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1284
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1285
    goto/16 :goto_4

    .line 1250
    :pswitch_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected: Network state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1253
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.headsetclient.profile.action.AG_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1254
    const-string v1, "android.bluetooth.headsetclient.extra.NETWORK_STATUS"

    iget v2, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1257
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    if-nez v1, :cond_12

    .line 1259
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 1260
    const-string v1, "android.bluetooth.headsetclient.extra.OPERATOR_NAME"

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1261
    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/lang/String;

    move-result-object v2

    .line 1260
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1264
    :cond_12
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1265
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object p1

    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1267
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result p1

    if-ne p1, v5, :cond_1b

    .line 1269
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1270
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    .line 1269
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->queryCurrentOperatorName([B)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 1271
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v0, 0x33

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_4

    .line 1273
    :cond_13
    const-string p1, "HeadsetClientStateMachine"

    const-string v0, "ERROR: Couldn\'t querry operator name"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1314
    :pswitch_1d
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v0

    .line 1315
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget v2, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3202(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1316
    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1317
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result v1

    .line 1316
    invoke-direct {p0, p1, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->broadcastVoiceRecognitionStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1318
    goto/16 :goto_4

    .line 1245
    :pswitch_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected: Audio state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1247
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 1248
    goto/16 :goto_4

    .line 1240
    :pswitch_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected: Connection state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1242
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 1243
    goto/16 :goto_4

    .line 1414
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown stack event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    goto/16 :goto_4

    .line 1218
    :cond_14
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1219
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    .line 1218
    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->retrieveSubscriberInfo([B)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 1220
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto/16 :goto_4

    .line 1222
    :cond_15
    const-string p1, "HeadsetClientStateMachine"

    const-string v0, "ERROR: Couldn\'t retrieve subscriber info"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    goto/16 :goto_4

    .line 1226
    :cond_16
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    .line 1227
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result p1

    if-lez p1, :cond_17

    .line 1229
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const-wide/16 v0, 0x7d0

    invoke-virtual {p1, v4, v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessageDelayed(IJ)V

    .line 1231
    :cond_17
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Z

    .line 1232
    goto/16 :goto_4

    .line 1150
    :cond_18
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1151
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 1152
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/bluetooth/hfpclient/VendorCommandResponseProcessor;->sendCommand(ILjava/lang/String;Landroid/bluetooth/BluetoothDevice;)Z

    .line 1153
    goto :goto_4

    .line 1175
    :cond_19
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClientCall;

    .line 1176
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object v1

    iget-object v6, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v7, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v6

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lcom/android/bluetooth/hfpclient/NativeInterface;->dial([BLjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1179
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClientCall;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v2, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;ILjava/lang/Object;)V

    .line 1181
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {p1, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(I)V

    goto :goto_4

    .line 1183
    :cond_1a
    const-string v1, "HeadsetClientStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ERROR: Cannot dial with a given number:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const/4 p1, 0x7

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHeadsetClientCall;->setState(I)V

    .line 1187
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothHeadsetClientCall;)V

    .line 1188
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1190
    nop

    .line 1422
    :cond_1b
    :goto_4
    monitor-exit p0

    return v5

    .line 1081
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_f
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method
