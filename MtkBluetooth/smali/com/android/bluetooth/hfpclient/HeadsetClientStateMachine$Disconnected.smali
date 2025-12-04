.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;
.super Lcom/android/bluetooth/statemachine/State;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .line 783
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 872
    const-string v0, "HeadsetClientStateMachine"

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 897
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 874
    :cond_0
    const-string p1, "HFPClient Connecting from Disconnected state"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 876
    const-string p1, "Incoming AG accepted"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 878
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_0

    .line 880
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming AG rejected. connectionPolicy="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 881
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2400(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bondState="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 882
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 880
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->disconnect([B)Z

    .line 887
    invoke-static {}, Lcom/android/bluetooth/btservice/AdapterService;->getAdapterService()Lcom/android/bluetooth/btservice/AdapterService;

    .line 889
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 892
    nop

    .line 900
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .line 786
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 789
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 790
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$202(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 791
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 792
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 793
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$502(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 795
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Z)Z

    .line 799
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$702(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 800
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/lang/String;)Ljava/lang/String;

    .line 802
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$902(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Ljava/util/Queue;)Ljava/util/Queue;

    .line 803
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    .line 805
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 806
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 808
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1302(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 809
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1402(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 811
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/16 v3, 0x32

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    .line 813
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v3, v1, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_1

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    move-result-object v3

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2100(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;

    move-result-object v3

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 819
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connected: Illegal state transition from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1600(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/statemachine/State;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to Connecting, mCurrentDevice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 821
    invoke-static {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 820
    const-string v1, "HeadsetClientStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 817
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v0, v3, v1, v4}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 823
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, v2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 824
    return-void
.end method

.method public exit()V
    .locals 2

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit Disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/State;

    .line 906
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 4

    monitor-enter p0

    .line 828
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnected process message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 830
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 831
    const-string p1, "HeadsetClientStateMachine"

    const-string v0, "ERROR: current device not null in Disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 832
    monitor-exit p0

    return v1

    .line 835
    :cond_0
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/16 v3, 0x64

    if-eq v0, v3, :cond_1

    .line 865
    monitor-exit p0

    return v1

    .line 851
    :cond_1
    :try_start_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hfpclient/StackEvent;

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stack event type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 853
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    if-eq v0, v2, :cond_2

    .line 860
    const-string v0, "HeadsetClientStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected: Unexpected stack event: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    goto :goto_0

    .line 855
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnected: Connection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state changed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 857
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 858
    goto :goto_0

    .line 849
    :cond_3
    goto :goto_0

    .line 837
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 838
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object v0

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/hfpclient/NativeInterface;->connect([B)Z

    move-result v0

    if-nez v0, :cond_5

    .line 840
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, p1, v1, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 842
    goto :goto_0

    .line 844
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1802(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 845
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1700(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 846
    nop

    .line 867
    :goto_0
    monitor-exit p0

    return v2

    .line 827
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
