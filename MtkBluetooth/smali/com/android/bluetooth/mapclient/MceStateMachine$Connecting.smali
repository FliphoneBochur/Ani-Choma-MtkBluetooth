.class Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "MceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/mapclient/MceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/mapclient/MceStateMachine;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 390
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Connecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MceSM"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$100(Lcom/android/bluetooth/mapclient/MceStateMachine;)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$200(Lcom/android/bluetooth/mapclient/MceStateMachine;II)V

    .line 396
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$300(Lcom/android/bluetooth/mapclient/MceStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    .line 397
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    const/4 v1, 0x3

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/mapclient/MceStateMachine;->sendMessageDelayed(IJ)V

    .line 398
    return-void
.end method

.method public exit()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$102(Lcom/android/bluetooth/mapclient/MceStateMachine;I)I

    .line 454
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$800(Lcom/android/bluetooth/mapclient/MceStateMachine;I)V

    .line 455
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 402
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "MceSM"

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_8

    const/4 v3, 0x2

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    if-eq v0, v3, :cond_7

    const/16 v3, 0x3e9

    if-eq v0, v3, :cond_6

    const/16 v3, 0x3ea

    if-eq v0, v3, :cond_4

    const/16 v3, 0x3ed

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " from state:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p0}, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 444
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    return v4

    .line 408
    :cond_1
    invoke-static {}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 409
    const-string v0, "SDP Complete"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object v0

    if-nez v0, :cond_9

    .line 412
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/SdpMasRecord;

    .line 413
    if-nez p1, :cond_3

    .line 414
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected: SDP record is null for device "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    .line 415
    invoke-static {v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$300(Lcom/android/bluetooth/mapclient/MceStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 414
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    return v4

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    new-instance v1, Lcom/android/bluetooth/mapclient/MasClient;

    iget-object v3, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$300(Lcom/android/bluetooth/mapclient/MceStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-direct {v1, v3, v4, p1}, Lcom/android/bluetooth/mapclient/MasClient;-><init>(Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/statemachine/StateMachine;Landroid/bluetooth/SdpMasRecord;)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$402(Lcom/android/bluetooth/mapclient/MceStateMachine;Lcom/android/bluetooth/mapclient/MasClient;)Lcom/android/bluetooth/mapclient/MasClient;

    .line 419
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->setDefaultMessageType(Landroid/bluetooth/SdpMasRecord;)V

    .line 420
    goto :goto_0

    .line 428
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 429
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$400(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/mapclient/MasClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/mapclient/MasClient;->shutdown()V

    .line 431
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$600(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 432
    goto :goto_0

    .line 424
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$500(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 425
    goto :goto_0

    .line 435
    :cond_7
    iget-object p1, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->access$700(Lcom/android/bluetooth/mapclient/MceStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/mapclient/MceStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 436
    goto :goto_0

    .line 440
    :cond_8
    iget-object v0, p0, Lcom/android/bluetooth/mapclient/MceStateMachine$Connecting;->this$0:Lcom/android/bluetooth/mapclient/MceStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/mapclient/MceStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 441
    nop

    .line 448
    :cond_9
    :goto_0
    return v2
.end method
