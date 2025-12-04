.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;
.super Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioDisconnecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    .line 1604
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .line 1613
    invoke-super {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->enter()V

    .line 1614
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    sget v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sConnectTimeoutMs:I

    int-to-long v2, v2

    const/16 v4, 0xc9

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 1615
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->broadcastStateTransitions()V

    .line 1616
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1671
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$6300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 1672
    invoke-super {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->exit()V

    .line 1673
    return-void
.end method

.method getAudioStateInt()I
    .locals 1

    .line 1608
    const/16 v0, 0xc

    return v0
.end method

.method public processAudioEvent(I)V
    .locals 2

    .line 1648
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processAudioEvent: bad state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->stateLogE(Ljava/lang/String;)V

    goto :goto_0

    .line 1655
    :cond_0
    goto :goto_0

    .line 1657
    :cond_1
    const-string p1, "processAudioEvent: audio disconnection failed"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->stateLogW(Ljava/lang/String;)V

    .line 1658
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioOn;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1659
    goto :goto_0

    .line 1662
    :cond_2
    goto :goto_0

    .line 1650
    :cond_3
    const-string p1, "processAudioEvent: audio disconnected"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->stateLogI(Ljava/lang/String;)V

    .line 1651
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1652
    nop

    .line 1667
    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->stateLogD(Ljava/lang/String;)V

    .line 1623
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_0

    .line 1641
    invoke-super {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->processMessage(Landroid/os/Message;)Z

    move-result p1

    return p1

    .line 1631
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 1632
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONNECT_TIMEOUT for unknown device "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->stateLogW(Ljava/lang/String;)V

    .line 1634
    goto :goto_0

    .line 1636
    :cond_1
    const-string p1, "CONNECT_TIMEOUT"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->stateLogW(Ljava/lang/String;)V

    .line 1637
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1638
    goto :goto_0

    .line 1628
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$AudioDisconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1629
    nop

    .line 1643
    :goto_0
    return v1
.end method
