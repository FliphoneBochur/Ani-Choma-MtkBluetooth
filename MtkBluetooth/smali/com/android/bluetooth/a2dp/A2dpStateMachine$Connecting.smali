.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private processConnectionEvent(I)V
    .locals 3

    .line 353
    const-string v0, "A2dpStateMachine"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting interrupted: device is disconnecting: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 367
    goto :goto_0

    .line 359
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 360
    goto :goto_0

    .line 363
    :cond_2
    goto :goto_0

    .line 355
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting device disconnected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 357
    nop

    .line 372
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .line 280
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter Connecting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 282
    :cond_0
    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 283
    sget v0, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sConnectTimeoutMs:I

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    .line 284
    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/a2dp/A2dpService;->getConnecttingDeviceCount()I

    move-result v1

    sget v2, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sConnectTimeoutAddStep:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 285
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v2, 0xc9

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessageDelayed(IJ)V

    .line 287
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$202(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I

    .line 288
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v1

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;II)V

    .line 289
    return-void
.end method

.method public exit()V
    .locals 4

    .line 293
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    .line 294
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit Connecting("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 295
    :cond_0
    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I

    .line 297
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    .line 298
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting process message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    .line 303
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 305
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/16 v3, 0x65

    const-string v4, "A2dpStateMachine"

    if-eq v0, v3, :cond_1

    const/16 p1, 0xc9

    const/4 v2, 0x0

    if-eq v0, p1, :cond_0

    .line 346
    return v2

    .line 310
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connecting connection timeout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->disconnectA2dp(Landroid/bluetooth/BluetoothDevice;)Z

    .line 312
    new-instance p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;

    invoke-direct {p1, v1}, Lcom/android/bluetooth/a2dp/A2dpStackEvent;-><init>(I)V

    .line 314
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 315
    iput v2, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    .line 316
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, v3, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 317
    goto/16 :goto_0

    .line 326
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;

    .line 327
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting: stack event: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v3, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): event mismatch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_2
    iget v0, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->type:I

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting: ignoring stack event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    goto :goto_0

    .line 336
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->codecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->processCodecConfigEvent(Landroid/bluetooth/BluetoothCodecStatus;)V

    .line 337
    goto :goto_0

    .line 339
    :cond_4
    goto :goto_0

    .line 333
    :cond_5
    iget p1, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->processConnectionEvent(I)V

    .line 334
    goto :goto_0

    .line 321
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting: connection canceled to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 322
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->disconnectA2dp(Landroid/bluetooth/BluetoothDevice;)Z

    .line 323
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1500(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 324
    goto :goto_0

    .line 307
    :cond_7
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 308
    nop

    .line 348
    :goto_0
    return v1
.end method
