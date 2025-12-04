.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;
.super Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioOn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    .line 1465
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    return-void
.end method

.method private processIntentScoVolume(Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 1595
    const-string v0, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1596
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1597
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6202(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)I

    .line 1598
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1599
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)I

    move-result v0

    .line 1598
    invoke-virtual {p1, p2, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->setVolume(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 1601
    :cond_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 1473
    invoke-super {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->enter()V

    .line 1474
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 1478
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v1, 0x4

    .line 1479
    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1480
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1482
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    .line 1484
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1485
    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->mAudioServerStateCallback:Lcom/android/bluetooth/hfp/HeadsetStateMachine$MyAudioServerStateCallback;

    .line 1484
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->setAudioServerStateCallback(Ljava/util/concurrent/Executor;Landroid/media/AudioManager$AudioServerStateCallback;)V

    .line 1487
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->broadcastStateTransitions()V

    .line 1488
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1492
    invoke-super {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->exit()V

    .line 1494
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->clearAudioServerStateCallback()V

    .line 1495
    return-void
.end method

.method getAudioStateInt()I
    .locals 1

    .line 1468
    const/16 v0, 0xc

    return v0
.end method

.method public processAudioEvent(I)V
    .locals 2

    .line 1579
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAudioEvent: bad state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogE(Ljava/lang/String;)V

    goto :goto_0

    .line 1585
    :cond_0
    const-string p1, "processAudioEvent: audio being disconnected by remote"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogI(Ljava/lang/String;)V

    .line 1586
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1587
    goto :goto_0

    .line 1581
    :cond_1
    const-string p1, "processAudioEvent: audio disconnected by remote"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogI(Ljava/lang/String;)V

    .line 1582
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1583
    nop

    .line 1592
    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogD(Ljava/lang/String;)V

    .line 1502
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v2, 0x65

    if-eq v0, v2, :cond_0

    .line 1572
    invoke-super {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->processMessage(Landroid/os/Message;)Z

    move-result p1

    return p1

    .line 1555
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 1556
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STACK_EVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogD(Ljava/lang/String;)V

    .line 1557
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event device does not match currentDevice["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], event: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogE(Ljava/lang/String;)V

    .line 1560
    goto/16 :goto_0

    .line 1562
    :cond_1
    iget v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->type:I

    const/16 v3, 0x11

    if-eq v2, v3, :cond_2

    .line 1567
    invoke-super {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->processMessage(Landroid/os/Message;)Z

    .line 1568
    goto/16 :goto_0

    .line 1564
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot change WBS state when audio is connected: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogE(Ljava/lang/String;)V

    .line 1565
    goto/16 :goto_0

    .line 1552
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->processIntentScoVolume(Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 1553
    goto/16 :goto_0

    .line 1535
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1536
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISCONNECT_AUDIO, failed, device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", currentDevice="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 1538
    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1537
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogW(Ljava/lang/String;)V

    .line 1539
    goto/16 :goto_0

    .line 1541
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DISCONNECT_AUDIO, device="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogD(Ljava/lang/String;)V

    .line 1543
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto/16 :goto_0

    .line 1545
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DISCONNECT_AUDIO failed, device="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogW(Ljava/lang/String;)V

    .line 1546
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1549
    goto/16 :goto_0

    .line 1526
    :cond_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1527
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT_AUDIO device is not connected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogW(Ljava/lang/String;)V

    .line 1529
    goto/16 :goto_0

    .line 1531
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT_AUDIO device auido is already connected "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogW(Ljava/lang/String;)V

    .line 1532
    goto/16 :goto_0

    .line 1509
    :cond_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DISCONNECT, device="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogD(Ljava/lang/String;)V

    .line 1511
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DISCONNECT, device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not connected"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogW(Ljava/lang/String;)V

    .line 1513
    goto :goto_0

    .line 1516
    :cond_a
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->disconnectAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1517
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DISCONNECT failed, device="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogW(Ljava/lang/String;)V

    .line 1521
    :cond_b
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1522
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1523
    goto :goto_0

    .line 1504
    :cond_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT, ignored, device="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", currentDevice"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;->stateLogW(Ljava/lang/String;)V

    .line 1506
    nop

    .line 1574
    :goto_0
    return v1
.end method
