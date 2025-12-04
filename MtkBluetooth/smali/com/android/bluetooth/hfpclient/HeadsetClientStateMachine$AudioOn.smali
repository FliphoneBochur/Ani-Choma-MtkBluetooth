.class Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;
.super Lcom/android/bluetooth/statemachine/State;
.source "HeadsetClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioOn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    .locals 0

    .line 1533
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1622
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "HeadsetClientStateMachine"

    if-nez v0, :cond_0

    .line 1623
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Audio changed on disconnected device: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    return-void

    .line 1627
    :cond_0
    if-eqz p1, :cond_1

    .line 1641
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

    goto :goto_0

    .line 1629
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4900(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)V

    .line 1630
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3102(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;I)I

    .line 1635
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->routeHfpAudio(Z)V

    .line 1636
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    .line 1637
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Connected;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 1638
    nop

    .line 1644
    :goto_0
    return-void
.end method

.method private processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V
    .locals 3

    .line 1604
    const-string v0, "HeadsetClientStateMachine"

    if-eqz p1, :cond_0

    .line 1615
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

    .line 1606
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1607
    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 1609
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2500(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$Disconnected;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_0

    .line 1611
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnected from unknown device: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    nop

    .line 1618
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter AudioOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1539
    return-void
.end method

.method public exit()V
    .locals 4

    .line 1648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exit AudioOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1649
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0, p0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1602(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Lcom/android/bluetooth/statemachine/State;)Lcom/android/bluetooth/statemachine/State;

    .line 1650
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3000(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 1652
    return-void
.end method

.method public declared-synchronized processMessage(Landroid/os/Message;)Z
    .locals 5

    monitor-enter p0

    .line 1543
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioOn process message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1544
    invoke-static {}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2900()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1546
    const-string p1, "HeadsetClientStateMachine"

    const-string v0, "ERROR: mCurrentDevice is null in Connected"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1547
    monitor-exit p0

    return v1

    .line 1551
    :cond_0
    :try_start_1
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_7

    const/16 v4, 0xe

    if-eq v0, v4, :cond_4

    const/16 v4, 0x64

    if-eq v0, v4, :cond_1

    .line 1597
    monitor-exit p0

    return v1

    .line 1579
    :cond_1
    :try_start_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hfpclient/StackEvent;

    .line 1580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AudioOn: event type: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$000(Ljava/lang/String;)V

    .line 1581
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->type:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    .line 1593
    monitor-exit p0

    return v1

    .line 1588
    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioOn audio state changed"

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

    .line 1590
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->processAudioEvent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 1591
    goto :goto_0

    .line 1583
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioOn connection state changed"

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

    .line 1585
    iget v0, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->valueInt:I

    iget-object p1, p1, Lcom/android/bluetooth/hfpclient/StackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->processConnectionEvent(ILandroid/bluetooth/BluetoothDevice;)V

    .line 1586
    goto :goto_0

    .line 1575
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$3800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V

    .line 1576
    goto :goto_0

    .line 1553
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1554
    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1555
    goto :goto_0

    .line 1557
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 1568
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2300(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Lcom/android/bluetooth/hfpclient/NativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    iget-object v3, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$1800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$2200(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;Landroid/bluetooth/BluetoothDevice;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hfpclient/NativeInterface;->disconnectAudio([B)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1569
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->routeHfpAudio(Z)V

    .line 1570
    iget-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine$AudioOn;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->access$4800(Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1599
    :cond_8
    :goto_0
    monitor-exit p0

    return v2

    .line 1542
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
