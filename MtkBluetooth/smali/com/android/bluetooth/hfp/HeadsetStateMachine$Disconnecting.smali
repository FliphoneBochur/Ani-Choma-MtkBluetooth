.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;
.super Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    .line 835
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .line 848
    invoke-super {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->enter()V

    .line 849
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    sget v2, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sConnectTimeoutMs:I

    int-to-long v2, v2

    const/16 v4, 0xc9

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 850
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->broadcastStateTransitions()V

    .line 851
    return-void
.end method

.method public exit()V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 919
    invoke-super {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->exit()V

    .line 920
    return-void
.end method

.method getAudioStateInt()I
    .locals 1

    .line 843
    const/16 v0, 0xa

    return v0
.end method

.method getConnectionStateInt()I
    .locals 1

    .line 838
    const/4 v0, 0x3

    return v0
.end method

.method public processConnectionEvent(Landroid/os/Message;I)V
    .locals 1

    .line 901
    if-eqz p2, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    .line 911
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processConnectionEvent: Bad state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->stateLogE(Ljava/lang/String;)V

    goto :goto_0

    .line 907
    :cond_0
    const-string p1, "processConnectionEvent: Connected"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->stateLogD(Ljava/lang/String;)V

    .line 908
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Connected;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 909
    goto :goto_0

    .line 903
    :cond_1
    const-string p1, "processConnectionEvent: Disconnected"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->stateLogD(Ljava/lang/String;)V

    .line 904
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 905
    nop

    .line 914
    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processMessage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->stateLogD(Ljava/lang/String;)V

    .line 858
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_5

    const/16 v2, 0x65

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_0

    .line 892
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

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->stateLogE(Ljava/lang/String;)V

    .line 893
    const/4 p1, 0x0

    return p1

    .line 865
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 866
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown device timeout "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->stateLogE(Ljava/lang/String;)V

    .line 868
    goto/16 :goto_0

    .line 870
    :cond_1
    const-string p1, "timeout"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->stateLogE(Ljava/lang/String;)V

    .line 871
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 872
    goto :goto_0

    .line 875
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 876
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "STACK_EVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->stateLogD(Ljava/lang/String;)V

    .line 877
    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 878
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event device does not match currentDevice["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], event: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->stateLogE(Ljava/lang/String;)V

    .line 880
    goto :goto_0

    .line 882
    :cond_3
    iget v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->type:I

    if-eq v2, v1, :cond_4

    .line 887
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected event: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->stateLogE(Ljava/lang/String;)V

    .line 888
    goto :goto_0

    .line 884
    :cond_4
    iget v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->processConnectionEvent(Landroid/os/Message;I)V

    .line 885
    goto :goto_0

    .line 862
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 863
    nop

    .line 895
    :goto_0
    return v1
.end method
