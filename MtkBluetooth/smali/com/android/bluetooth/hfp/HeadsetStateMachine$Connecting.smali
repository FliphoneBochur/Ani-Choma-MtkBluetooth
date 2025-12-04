.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;
.super Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    .line 649
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .line 662
    invoke-super {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->enter()V

    .line 663
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1602(Lcom/android/bluetooth/hfp/HeadsetStateMachine;J)J

    .line 664
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    sget v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sConnectTimeoutMs:I

    int-to-long v2, v2

    const/16 v4, 0xc9

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 665
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->broadcastStateTransitions()V

    .line 666
    return-void
.end method

.method public exit()V
    .locals 2

    .line 830
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 831
    invoke-super {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->exit()V

    .line 832
    return-void
.end method

.method getAudioStateInt()I
    .locals 1

    .line 657
    const/16 v0, 0xa

    return v0
.end method

.method getConnectionStateInt()I
    .locals 1

    .line 652
    const/4 v0, 0x1

    return v0
.end method

.method public processConnectionEvent(Landroid/os/Message;I)V
    .locals 1

    .line 796
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processConnectionEvent, state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogD(Ljava/lang/String;)V

    .line 797
    if-eqz p2, :cond_4

    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 823
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Incorrect state "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogE(Ljava/lang/String;)V

    goto :goto_0

    .line 820
    :cond_0
    const-string p1, "Disconnecting"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 821
    goto :goto_0

    .line 813
    :cond_1
    const-string p1, "SLC connected"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogD(Ljava/lang/String;)V

    .line 814
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 815
    goto :goto_0

    .line 803
    :cond_2
    const-string p1, "RFCOMM connected"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogD(Ljava/lang/String;)V

    .line 809
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 p2, 0xc9

    invoke-static {p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 811
    goto :goto_0

    .line 818
    :cond_3
    goto :goto_0

    .line 799
    :cond_4
    const-string p1, "Disconnected"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 800
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 801
    nop

    .line 826
    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogD(Ljava/lang/String;)V

    .line 673
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_c

    const/4 v2, 0x2

    if-eq v0, v2, :cond_c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    const/16 v3, 0x65

    if-eq v0, v3, :cond_4

    const/16 v2, 0x68

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2100(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogE(Ljava/lang/String;)V

    .line 789
    const/4 p1, 0x0

    return p1

    .line 698
    :pswitch_0
    const-string v0, "receive SEND_CCLC_RESPONSE at connecting state!"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V

    .line 700
    goto/16 :goto_0

    .line 694
    :pswitch_1
    const-string p1, "ignoring DEVICE_STATE_CHANGED event"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogD(Ljava/lang/String;)V

    .line 695
    goto/16 :goto_0

    .line 691
    :pswitch_2
    const-string p1, "ignoring CALL_STATE_CHANGED event"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogD(Ljava/lang/String;)V

    .line 692
    goto/16 :goto_0

    .line 681
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 682
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 683
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device timeout "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogE(Ljava/lang/String;)V

    .line 684
    goto/16 :goto_0

    .line 686
    :cond_1
    const-string p1, "CONNECT_TIMEOUT"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 687
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 688
    goto/16 :goto_0

    .line 702
    :cond_2
    const-string v0, "receive CLCC_RSP_TIMEOUT at connecting state!"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 703
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 704
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 705
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CLCC_RSP_TIMEOUT failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " is not currentDevice"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 706
    goto/16 :goto_0

    .line 708
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const-string v9, ""

    invoke-virtual/range {v2 .. v10}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->clccResponse(Landroid/bluetooth/BluetoothDevice;IIIIZLjava/lang/String;I)Z

    .line 710
    goto/16 :goto_0

    .line 713
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STACK_EVENT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogD(Ljava/lang/String;)V

    .line 715
    iget-object v3, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 716
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event device does not match currentDevice["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], event: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogE(Ljava/lang/String;)V

    .line 718
    goto/16 :goto_0

    .line 720
    :cond_5
    iget v3, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->type:I

    if-eq v3, v1, :cond_b

    const-string p1, ", state="

    if-eq v3, v2, :cond_a

    const/4 v2, 0x4

    if-eq v3, v2, :cond_9

    const/4 v2, 0x5

    if-eq v3, v2, :cond_8

    const/4 v2, 0x6

    if-eq v3, v2, :cond_7

    const/4 v2, 0x7

    if-eq v3, v2, :cond_6

    packed-switch v3, :pswitch_data_1

    .line 783
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogE(Ljava/lang/String;)V

    .line 784
    goto/16 :goto_0

    .line 766
    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected BIEV event for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", indId="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", indVal="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt2:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 768
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    iget v3, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt2:I

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v2, v3, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    .line 769
    goto/16 :goto_0

    .line 731
    :pswitch_4
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueString:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 732
    goto/16 :goto_0

    .line 728
    :pswitch_5
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 729
    goto/16 :goto_0

    .line 762
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected key-press event for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 763
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 764
    goto/16 :goto_0

    .line 757
    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected unknown AT event for"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cmd="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 759
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueString:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 760
    goto/16 :goto_0

    .line 753
    :pswitch_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting: Unexpected CLCC event for"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 754
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 755
    goto/16 :goto_0

    .line 749
    :pswitch_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected COPS event for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 750
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 751
    goto/16 :goto_0

    .line 725
    :pswitch_a
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 726
    goto/16 :goto_0

    .line 744
    :pswitch_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected subscriber number event for"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 746
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 747
    goto/16 :goto_0

    .line 740
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected dial event, device="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 741
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueString:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    .line 742
    goto/16 :goto_0

    .line 771
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected volume event for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 772
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    iget v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt2:I

    invoke-static {p1, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;II)V

    .line 773
    goto/16 :goto_0

    .line 779
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected hangup event for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 780
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object p1

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->hangupCall(Landroid/bluetooth/BluetoothDevice;)V

    .line 781
    goto :goto_0

    .line 775
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected answer event for "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 776
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object p1

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->answerCall(Landroid/bluetooth/BluetoothDevice;)V

    .line 777
    goto :goto_0

    .line 735
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected VR event, device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->stateLogW(Ljava/lang/String;)V

    .line 737
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 738
    goto :goto_0

    .line 722
    :cond_b
    iget v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->processConnectionEvent(Landroid/os/Message;I)V

    .line 723
    goto :goto_0

    .line 677
    :cond_c
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 678
    nop

    .line 791
    :goto_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
