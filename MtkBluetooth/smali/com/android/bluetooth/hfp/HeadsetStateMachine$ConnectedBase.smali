.class abstract Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;
.super Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ConnectedBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    .line 926
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetStateMachine$1;)V
    .locals 0

    .line 926
    invoke-direct {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;-><init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method


# virtual methods
.method getConnectionStateInt()I
    .locals 1

    .line 929
    const/4 v0, 0x2

    return v0
.end method

.method public abstract processAudioEvent(I)V
.end method

.method public processConnectionEvent(Landroid/os/Message;I)V
    .locals 1

    .line 1169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processConnectionEvent, state="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogD(Ljava/lang/String;)V

    .line 1170
    if-eqz p2, :cond_3

    const/4 p1, 0x2

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_1

    const/4 p1, 0x4

    if-eq p2, p1, :cond_0

    .line 1186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "processConnectionEvent: bad state: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogE(Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    :cond_0
    const-string p1, "processConnectionEvent: Disconnecting"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogI(Ljava/lang/String;)V

    .line 1179
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnecting;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1180
    goto :goto_0

    .line 1175
    :cond_1
    const-string p1, "processConnectionEvent: SLC connected again, shouldn\'t happen"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogE(Ljava/lang/String;)V

    .line 1176
    goto :goto_0

    .line 1172
    :cond_2
    const-string p1, "processConnectionEvent: RFCOMM connected again, shouldn\'t happen"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogE(Ljava/lang/String;)V

    .line 1173
    goto :goto_0

    .line 1182
    :cond_3
    const-string p1, "processConnectionEvent: Disconnected"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogI(Ljava/lang/String;)V

    .line 1183
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$Disconnected;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1184
    nop

    .line 1189
    :goto_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 14

    .line 941
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_d

    const/16 v1, 0x68

    const-string v4, " is not currentDevice"

    if-eq v0, v1, :cond_b

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_a

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0x69

    const/16 v5, 0x13

    packed-switch v0, :pswitch_data_1

    .line 1161
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

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogE(Ljava/lang/String;)V

    .line 1162
    return v2

    .line 1026
    :pswitch_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {p1, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1027
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1028
    goto/16 :goto_2

    .line 1075
    :pswitch_1
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$HeadsetStateBase;->getAudioStateInt()I

    move-result v0

    .line 1076
    invoke-virtual {p0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->getAudioStateInt()I

    move-result v1

    .line 1075
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->broadcastAudioState(Landroid/bluetooth/BluetoothDevice;II)V

    .line 1077
    goto/16 :goto_2

    .line 1071
    :pswitch_2
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDeviceDone()Z

    .line 1072
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->broadcastActiveDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 1073
    goto/16 :goto_2

    .line 1060
    :pswitch_3
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->queryPhoneState()V

    .line 1062
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 1063
    const-string v0, "set QUERY_PHONE_STATE_TIMEOUT!!"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogD(Ljava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1067
    goto/16 :goto_2

    .line 1030
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1031
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1032
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOICE_RECOGNITION_RESULT failed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogW(Ljava/lang/String;)V

    .line 1034
    goto/16 :goto_2

    .line 1036
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1037
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_1

    move p1, v3

    goto :goto_0

    .line 1038
    :cond_1
    move p1, v2

    :goto_0
    nop

    .line 1036
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 1039
    goto/16 :goto_2

    .line 1042
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1043
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1044
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIALING_OUT_RESULT failed "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogW(Ljava/lang/String;)V

    .line 1045
    goto/16 :goto_2

    .line 1047
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1048
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1902(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)Z

    .line 1049
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 1050
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v3, :cond_3

    move p1, v3

    goto :goto_1

    .line 1051
    :cond_3
    move p1, v2

    :goto_1
    nop

    .line 1049
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->atResponseCode(Landroid/bluetooth/BluetoothDevice;II)Z

    .line 1054
    :cond_4
    goto/16 :goto_2

    .line 1020
    :pswitch_6
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendBsir(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 1021
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_10

    .line 1022
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    goto/16 :goto_2

    .line 1016
    :pswitch_7
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetVendorSpecificResultCode;)V

    .line 1018
    goto/16 :goto_2

    .line 1004
    :pswitch_8
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetClccResponse;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetClccResponse;)V

    .line 1005
    goto/16 :goto_2

    .line 1001
    :pswitch_9
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->notifyDeviceStatus(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hfp/HeadsetDeviceState;)Z

    .line 1002
    goto/16 :goto_2

    .line 977
    :pswitch_a
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const/16 v4, 0x10

    invoke-static {v0, v4}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 978
    const-string p1, "HeadsetStateMachine"

    const-string v0, "Delay Call state change"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    goto/16 :goto_2

    .line 983
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 985
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hfp/HeadsetCallState;

    .line 987
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isInCall()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    .line 988
    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p1, Lcom/android/bluetooth/hfp/HeadsetCallState;->mCallState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_7

    .line 990
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->sendBsir(Landroid/bluetooth/BluetoothDevice;Z)Z

    .line 991
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->setInbandRingtoneRuntimeDisable(Z)V

    .line 992
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0, v5}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 994
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->phoneStateChange(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hfp/HeadsetCallState;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processCallState: failed to update call state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogW(Ljava/lang/String;)V

    .line 996
    goto/16 :goto_2

    .line 1056
    :pswitch_b
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/content/Intent;)V

    .line 1057
    goto/16 :goto_2

    .line 963
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 964
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 965
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOICE_RECOGNITION_STOP failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogW(Ljava/lang/String;)V

    .line 967
    goto/16 :goto_2

    .line 969
    :cond_8
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 970
    const-string p1, "Failed to stop voice recognition"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogW(Ljava/lang/String;)V

    .line 971
    goto/16 :goto_2

    .line 950
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 951
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VOICE_RECOGNITION_START failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogW(Ljava/lang/String;)V

    .line 954
    goto/16 :goto_2

    .line 956
    :cond_9
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->startVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 957
    const-string p1, "Failed to start voice recognition"

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogW(Ljava/lang/String;)V

    .line 958
    goto/16 :goto_2

    .line 947
    :cond_a
    :pswitch_e
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal message in generic handler: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1007
    :cond_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 1008
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, v6}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 1009
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CLCC_RSP_TIMEOUT failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogW(Ljava/lang/String;)V

    .line 1010
    goto/16 :goto_2

    .line 1012
    :cond_c
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetNativeInterface;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const-string v12, ""

    invoke-virtual/range {v5 .. v13}, Lcom/android/bluetooth/hfp/HeadsetNativeInterface;->clccResponse(Landroid/bluetooth/BluetoothDevice;IIIIZLjava/lang/String;I)Z

    .line 1014
    goto/16 :goto_2

    .line 1080
    :cond_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STACK_EVENT: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogD(Ljava/lang/String;)V

    .line 1082
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v4, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 1083
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event device does not match currentDevice["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogE(Ljava/lang/String;)V

    .line 1085
    goto/16 :goto_2

    .line 1087
    :cond_e
    iget v1, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->type:I

    packed-switch v1, :pswitch_data_2

    .line 1156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown stack event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->stateLogE(Ljava/lang/String;)V

    .line 1157
    goto/16 :goto_2

    .line 1153
    :pswitch_f
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->activeDeviceSwitched(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1154
    goto/16 :goto_2

    .line 1150
    :pswitch_10
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetService;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 1151
    goto/16 :goto_2

    .line 1146
    :pswitch_11
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueObject:Lcom/android/bluetooth/hfp/HeadsetMessageObject;

    check-cast v0, Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$1800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Lcom/android/bluetooth/hfp/HeadsetAgIndicatorEnableState;)V

    .line 1148
    goto/16 :goto_2

    .line 1143
    :pswitch_12
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v1, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    iget v2, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt2:I

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v1, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;IILandroid/bluetooth/BluetoothDevice;)V

    .line 1144
    goto/16 :goto_2

    .line 1140
    :pswitch_13
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueString:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 1141
    goto/16 :goto_2

    .line 1116
    :pswitch_14
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 1117
    goto/16 :goto_2

    .line 1137
    :pswitch_15
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3200(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 1138
    goto/16 :goto_2

    .line 1134
    :pswitch_16
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v1, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueString:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3100(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 1135
    goto/16 :goto_2

    .line 1131
    :pswitch_17
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3000(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 1132
    goto/16 :goto_2

    .line 1128
    :pswitch_18
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 1129
    goto/16 :goto_2

    .line 1125
    :pswitch_19
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2300(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 1126
    goto/16 :goto_2

    .line 1122
    :pswitch_1a
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Landroid/bluetooth/BluetoothDevice;)V

    .line 1123
    goto :goto_2

    .line 1119
    :pswitch_1b
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v1, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;ILandroid/bluetooth/BluetoothDevice;)V

    .line 1120
    goto :goto_2

    .line 1113
    :pswitch_1c
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    if-ne v0, v3, :cond_f

    move v2, v3

    :cond_f
    invoke-static {p1, v2}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$4700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Z)V

    .line 1114
    goto :goto_2

    .line 1110
    :pswitch_1d
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object p1

    iget v1, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->sendDtmf(ILandroid/bluetooth/BluetoothDevice;)Z

    .line 1111
    goto :goto_2

    .line 1107
    :pswitch_1e
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueString:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    .line 1108
    goto :goto_2

    .line 1104
    :pswitch_1f
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v1, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    iget v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt2:I

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3400(Lcom/android/bluetooth/hfp/HeadsetStateMachine;II)V

    .line 1105
    goto :goto_2

    .line 1101
    :pswitch_20
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object p1

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->hangupCall(Landroid/bluetooth/BluetoothDevice;)V

    .line 1102
    goto :goto_2

    .line 1098
    :pswitch_21
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$3500(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object p1

    iget-object v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->answerCall(Landroid/bluetooth/BluetoothDevice;)V

    .line 1099
    goto :goto_2

    .line 1095
    :pswitch_22
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    iget v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-static {p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$2600(Lcom/android/bluetooth/hfp/HeadsetStateMachine;I)V

    .line 1096
    goto :goto_2

    .line 1092
    :pswitch_23
    iget p1, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->processAudioEvent(I)V

    .line 1093
    goto :goto_2

    .line 1089
    :pswitch_24
    iget v0, v0, Lcom/android/bluetooth/hfp/HeadsetStackEvent;->valueInt:I

    invoke-virtual {p0, p1, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine$ConnectedBase;->processConnectionEvent(Landroid/os/Message;I)V

    .line 1090
    nop

    .line 1164
    :cond_10
    :goto_2
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method
