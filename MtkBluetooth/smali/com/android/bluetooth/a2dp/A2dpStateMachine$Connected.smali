.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;
.super Lcom/android/bluetooth/statemachine/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private processAudioStateEvent(I)V
    .locals 5

    .line 583
    const/16 v0, 0xa

    const/16 v1, 0xb

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio State Device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " bad state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "A2dpStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    :cond_0
    monitor-enter p0

    .line 586
    :try_start_0
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 587
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connected: started playing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 588
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    .line 589
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;II)V

    .line 592
    :cond_1
    monitor-exit p0

    .line 593
    goto :goto_0

    .line 592
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 596
    :cond_2
    monitor-enter p0

    .line 597
    :try_start_1
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 598
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: stopped playing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 599
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    .line 600
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1, v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;II)V

    .line 603
    :cond_3
    monitor-exit p0

    .line 604
    nop

    .line 609
    :goto_0
    return-void

    .line 603
    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method private processConnectionEvent(I)V
    .locals 3

    .line 560
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    const-string v1, "A2dpStateMachine"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection State Device: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " bad event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 572
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnecting from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 573
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 574
    goto :goto_0

    .line 566
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore A2DP CONNECTED event: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    goto :goto_0

    .line 569
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore A2DP CONNECTING event: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    goto :goto_0

    .line 562
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnected from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 563
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 564
    nop

    .line 579
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 484
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    .line 485
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter Connected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 486
    :cond_0
    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 485
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$202(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I

    .line 488
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    .line 489
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->updateOptionalCodecsSupport(Landroid/bluetooth/BluetoothDevice;)V

    .line 497
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;II)V

    .line 499
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v1, 0xb

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;II)V

    .line 501
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$402(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    .line 502
    return-void
.end method

.method public exit()V
    .locals 4

    .line 506
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    .line 507
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit Connected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 508
    :cond_0
    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I

    .line 510
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    .line 514
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected process message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 516
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "A2dpStateMachine"

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/16 v4, 0x65

    if-eq v0, v4, :cond_0

    .line 553
    const/4 p1, 0x0

    return p1

    .line 532
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;

    .line 533
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connected: stack event: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v4, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): event mismatch: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_1
    iget v0, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->type:I

    if-eq v0, v1, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: ignoring stack event: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    goto/16 :goto_0

    .line 545
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->codecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->processCodecConfigEvent(Landroid/bluetooth/BluetoothCodecStatus;)V

    .line 546
    goto/16 :goto_0

    .line 542
    :cond_3
    iget p1, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->processAudioStateEvent(I)V

    .line 543
    goto/16 :goto_0

    .line 539
    :cond_4
    iget p1, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->processConnectionEvent(I)V

    .line 540
    goto :goto_0

    .line 521
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 522
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->disconnectA2dp(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 524
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connected: error disconnecting from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 526
    goto :goto_0

    .line 528
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 530
    goto :goto_0

    .line 518
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connected: CONNECT ignored: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    nop

    .line 555
    :goto_0
    return v1
.end method
