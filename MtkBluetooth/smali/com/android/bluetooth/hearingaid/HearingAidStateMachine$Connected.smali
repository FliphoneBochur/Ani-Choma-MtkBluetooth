.class Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;
.super Lcom/android/bluetooth/statemachine/State;
.source "HearingAidStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)V
    .locals 0

    .line 428
    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private processConnectionEvent(I)V
    .locals 3

    .line 487
    const-string v0, "HearingAidStateMachine"

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection State Device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " bad state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 493
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnecting from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$1200(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 495
    goto :goto_0

    .line 489
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnected from "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " but still in Whitelist"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$1100(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 491
    nop

    .line 500
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Connected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 432
    invoke-virtual {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    const-string v1, "HearingAidStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$202(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)I

    .line 434
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$1400(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)V

    .line 435
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$400(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$500(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;II)V

    .line 436
    return-void
.end method

.method public exit()V
    .locals 3

    .line 440
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Connected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 441
    invoke-virtual {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 440
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$402(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)I

    .line 443
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 447
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connected process message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    .line 448
    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 447
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 450
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "HearingAidStateMachine"

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/16 v3, 0x65

    if-eq v0, v3, :cond_0

    .line 480
    const/4 p1, 0x0

    return p1

    .line 465
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;

    .line 466
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connected: stack event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v3, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): event mismatch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1
    iget v0, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->type:I

    if-eq v0, v1, :cond_2

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected: ignoring stack event: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    goto/16 :goto_0

    .line 472
    :cond_2
    iget p1, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->valueInt1:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->processConnectionEvent(I)V

    .line 473
    goto :goto_0

    .line 455
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnecting from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 456
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$600(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->disconnectHearingAid(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connected: error disconnecting from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$1100(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 460
    goto :goto_0

    .line 462
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$1200(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 463
    goto :goto_0

    .line 452
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connected: CONNECT ignored: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    nop

    .line 482
    :goto_0
    return v1
.end method
