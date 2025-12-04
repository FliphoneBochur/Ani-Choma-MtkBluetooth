.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;
.super Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    .line 526
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 539
    invoke-super {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->enter()V

    .line 540
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-wide/high16 v1, -0x8000000000000000L

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1602(Lcom/android/bluetooth/hfp/HeadsetStateMachine;J)J

    .line 541
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/AtPhonebook;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/AtPhonebook;->resetAtState()V

    .line 542
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;)V

    .line 543
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 544
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 545
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->broadcastStateTransitions()V

    .line 547
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 548
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 549
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetStateMachine$Disconnected$-mNaaz94NnZzh1U9fBYMQFwvbrU;

    invoke-direct {v1, p0}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetStateMachine$Disconnected$-mNaaz94NnZzh1U9fBYMQFwvbrU;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    :cond_0
    return-void
.end method

.method getAudioStateInt()I
    .locals 1

    .line 534
    const/16 v0, 0xa

    return v0
.end method

.method getConnectionStateInt()I
    .locals 1

    .line 529
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$enter$0$HeadsetStateMachine$Disconnected()V
    .locals 2

    .line 549
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->removeStateMachine(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method public processConnectionEvent(Landroid/os/Message;I)V
    .locals 1

    .line 611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processConnectionEvent, state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogD(Ljava/lang/String;)V

    .line 612
    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 639
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Incorrect state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogE(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 636
    :cond_0
    const-string p1, "Ignore DISCONNECTING event"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogW(Ljava/lang/String;)V

    .line 637
    goto/16 :goto_0

    .line 619
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfp/HeadsetService;->okToAcceptConnection(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 620
    const-string p1, "accept incoming connection"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogI(Ljava/lang/String;)V

    .line 621
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_0

    .line 623
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rejected incoming HF, connectionPolicy="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 624
    invoke-static {p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p2

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bondState="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 625
    invoke-static {p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/btservice/AdapterService;

    move-result-object p2

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->getBondState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 623
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogI(Ljava/lang/String;)V

    .line 627
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->disconnectHfp(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 628
    const-string p1, "failed to disconnect"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogE(Ljava/lang/String;)V

    .line 631
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 634
    goto :goto_0

    .line 614
    :cond_4
    const-string p1, "ignore DISCONNECTED event"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogW(Ljava/lang/String;)V

    .line 615
    nop

    .line 642
    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 556
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogD(Ljava/lang/String;)V

    .line 558
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/16 v3, 0x9

    if-eq v0, v3, :cond_4

    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0x65

    if-eq v0, v3, :cond_0

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected msg "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogE(Ljava/lang/String;)V

    .line 604
    return v1

    .line 586
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STACK_EVENT: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogD(Ljava/lang/String;)V

    .line 588
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 589
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event device does not match currentDevice["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogE(Ljava/lang/String;)V

    .line 591
    goto/16 :goto_0

    .line 593
    :cond_1
    iget v1, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->type:I

    if-eq v1, v2, :cond_2

    .line 598
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected stack event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogE(Ljava/lang/String;)V

    .line 599
    goto/16 :goto_0

    .line 595
    :cond_2
    iget v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->processConnectionEvent(Landroid/os/Message;I)V

    .line 596
    goto/16 :goto_0

    .line 583
    :cond_3
    const-string p1, "Ignoring DEVICE_STATE_CHANGED event"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogD(Ljava/lang/String;)V

    .line 584
    goto/16 :goto_0

    .line 580
    :cond_4
    const-string p1, "Ignoring CALL_STATE_CHANGED event"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogD(Ljava/lang/String;)V

    .line 581
    goto/16 :goto_0

    .line 578
    :cond_5
    goto/16 :goto_0

    .line 560
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogD(Ljava/lang/String;)V

    .line 562
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 563
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT failed, device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", currentDevice="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 564
    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogE(Ljava/lang/String;)V

    .line 565
    goto :goto_0

    .line 567
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->connectHfp(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CONNECT failed for connectHfp("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->stateLogE(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->broadcastConnectionState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 572
    goto :goto_0

    .line 574
    :cond_8
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 575
    nop

    .line 606
    :goto_0
    return v2
.end method
