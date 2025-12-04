.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private processConnectionEvent(IIILandroid/bluetooth/BluetoothDevice;)V
    .locals 10

    .line 986
    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const-string v1, "HeadsetClientStateMachine"

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p1, v2, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 1047
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Incorrect state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 992
    :cond_0
    const-string p1, "HFPClient Connected from Connecting state"

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 994
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 995
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, p3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 998
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result p1

    and-int/lit8 p1, p1, 0x40

    if-nez p1, :cond_1

    .line 999
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object p1

    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p2, p4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/NativeInterface;->disconnect([B)Z

    .line 1000
    return-void

    .line 1004
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 1005
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)I

    move-result p1

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_3

    .line 1007
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object v4

    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v5

    const/16 v6, 0xf

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/android/bluetooth/hfpclient/NativeInterface;->sendATCmd([BIIILjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1010
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 p2, 0x14

    invoke-static {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    goto :goto_0

    .line 1012
    :cond_2
    const-string p1, "Failed to send NREC"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 1017
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 p3, 0x8

    .line 1018
    invoke-virtual {p2, p3, p1, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 1017
    invoke-virtual {p2, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1021
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 p2, 0x7

    .line 1022
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/media/AudioManager;

    move-result-object p3

    invoke-virtual {p3}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result p3

    if-eqz p3, :cond_4

    move p3, v3

    goto :goto_1

    :cond_4
    const/16 p3, 0xf

    .line 1021
    :goto_1
    invoke-virtual {p1, p2, p3, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1024
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 p2, 0x34

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1025
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1026
    goto :goto_2

    .line 1029
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, p4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1030
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "incoming connection event, device: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-static {p1, p2, v3, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1035
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, p4, v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1038
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, p4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto :goto_2

    .line 1043
    :cond_6
    const-string p1, "outgoing connection started, ignore"

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1044
    goto :goto_2

    .line 988
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 989
    nop

    .line 1050
    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Connecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 916
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x35

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessageDelayed(IJ)V

    .line 917
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 918
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 921
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "null"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v0

    .line 922
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected: Illegal state transition from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to Connecting, mCurrentDevice="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 923
    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 922
    const-string v1, "HeadsetClientStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :goto_1
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit Connecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1055
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v1, 0x35

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    .line 1056
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/State;

    .line 1057
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 4

    monitor-enter p0

    .line 929
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting process message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 931
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/16 v2, 0x35

    if-eq v0, v2, :cond_1

    const/16 v2, 0x64

    if-eq v0, v2, :cond_0

    .line 977
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message not handled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    .line 938
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/bluetooth/hfpclient/StackEvent;

    .line 939
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting: event type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 940
    iget v2, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    packed-switch v2, :pswitch_data_0

    .line 966
    :pswitch_0
    const-string p1, "HeadsetClientStateMachine"

    goto :goto_0

    .line 959
    :pswitch_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 960
    goto :goto_1

    .line 942
    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting: Connection "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state changed:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 944
    iget p1, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    iget v2, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt2:I

    iget v3, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt3:I

    iget-object v0, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->processConnectionEvent(IIILandroid/bluetooth/BluetoothDevice;)V

    .line 946
    goto :goto_1

    .line 966
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting: ignoring stack event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    goto :goto_1

    .line 972
    :cond_1
    const-string p1, "HeadsetClientStateMachine"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection timeout for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 974
    goto :goto_1

    .line 935
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 936
    nop

    .line 980
    :goto_1
    monitor-exit p0

    return v1

    .line 928
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
