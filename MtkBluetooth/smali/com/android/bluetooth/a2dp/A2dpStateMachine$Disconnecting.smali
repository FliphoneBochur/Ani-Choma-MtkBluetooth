.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private processConnectionEvent(I)V
    .locals 3

    .line 445
    if-eqz p1, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "A2dpStateMachine"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 474
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 472
    :cond_0
    goto/16 :goto_0

    .line 451
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->okToConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disconnecting interrupted: device is connected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto/16 :goto_0

    .line 456
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Incoming A2DP Connected request rejected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->disconnectA2dp(Landroid/bluetooth/BluetoothDevice;)Z

    .line 459
    goto/16 :goto_0

    .line 461
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->okToConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 462
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnecting interrupted: try to reconnect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 463
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_0

    .line 466
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Incoming A2DP Connecting request rejected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->disconnectA2dp(Landroid/bluetooth/BluetoothDevice;)Z

    .line 469
    goto :goto_0

    .line 447
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 448
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 449
    nop

    .line 477
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 379
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    .line 380
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter Disconnecting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 381
    :cond_0
    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v1, 0xc9

    sget v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sConnectTimeoutMs:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessageDelayed(IJ)V

    .line 383
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$202(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I

    .line 384
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;II)V

    .line 385
    return-void
.end method

.method public exit()V
    .locals 4

    .line 389
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit Disconnecting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 391
    :cond_0
    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 390
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I

    .line 393
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    .line 394
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 398
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting process message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    .line 399
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 401
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/16 v2, 0x65

    const-string v3, "A2dpStateMachine"

    if-eq v0, v2, :cond_1

    const/16 p1, 0xc9

    const/4 v4, 0x0

    if-eq v0, p1, :cond_0

    .line 438
    return v4

    .line 406
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disconnecting connection timeout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->disconnectA2dp(Landroid/bluetooth/BluetoothDevice;)Z

    .line 408
    new-instance p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;

    invoke-direct {p1, v1}, Lcom/android/bluetooth/a2dp/A2dpStackEvent;-><init>(I)V

    .line 410
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 411
    iput v4, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    .line 412
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, v2, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 413
    goto/16 :goto_0

    .line 419
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;

    .line 420
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnecting: stack event: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 421
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): event mismatch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_2
    iget v0, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->type:I

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnecting: ignoring stack event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    goto :goto_0

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->codecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->processCodecConfigEvent(Landroid/bluetooth/BluetoothCodecStatus;)V

    .line 430
    goto :goto_0

    .line 426
    :cond_4
    iget p1, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->processConnectionEvent(I)V

    .line 427
    goto :goto_0

    .line 416
    :cond_5
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 417
    goto :goto_0

    .line 403
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 404
    nop

    .line 440
    :goto_0
    return v1
.end method
