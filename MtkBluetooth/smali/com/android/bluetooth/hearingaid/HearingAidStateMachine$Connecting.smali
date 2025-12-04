.class Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "HearingAidStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)V
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private processConnectionEvent(I)V
    .locals 3

    .line 307
    const-string v0, "HearingAidStateMachine"

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 318
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting interrupted: device is disconnecting: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$1200(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 320
    goto :goto_0

    .line 313
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$900(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 314
    goto :goto_0

    .line 316
    :cond_2
    goto :goto_0

    .line 309
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting device disconnected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$1100(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 311
    nop

    .line 325
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Connecting("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 242
    invoke-virtual {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 241
    const-string v1, "HearingAidStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    sget v1, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->sConnectTimeoutMs:I

    int-to-long v1, v1

    const/16 v3, 0xc9

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->sendMessageDelayed(IJ)V

    .line 244
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$202(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)I

    .line 245
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$400(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$500(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;II)V

    .line 246
    return-void
.end method

.method public exit()V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Connecting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 251
    invoke-virtual {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$402(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)I

    .line 253
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    const/16 v1, 0xc9

    invoke-static {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$1000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)V

    .line 254
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 258
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting process message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    .line 259
    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 261
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/16 v2, 0x65

    const-string v3, "HearingAidStateMachine"

    if-eq v0, v2, :cond_2

    const/16 p1, 0xc9

    const/4 v4, 0x0

    if-eq v0, p1, :cond_0

    .line 300
    return v4

    .line 266
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Connecting connection timeout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$600(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->disconnectHearingAid(Landroid/bluetooth/BluetoothDevice;)Z

    .line 268
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$700(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->isConnectedPeerDevices(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "One side connection timeout: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". Try whitelist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$600(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->addToWhiteList(Landroid/bluetooth/BluetoothDevice;)Z

    .line 272
    :cond_1
    new-instance p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;

    invoke-direct {p1, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;-><init>(I)V

    .line 275
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    .line 276
    iput v4, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->valueInt1:I

    .line 277
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-virtual {v0, v2, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 278
    goto/16 :goto_0

    .line 285
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;

    .line 286
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting: stack event: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v2, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): event mismatch: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    iget v0, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->type:I

    if-eq v0, v1, :cond_4

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting: ignoring stack event: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    goto :goto_0

    .line 292
    :cond_4
    iget p1, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->valueInt1:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->processConnectionEvent(I)V

    .line 293
    goto :goto_0

    .line 280
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connecting: connection canceled to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 281
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$600(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->disconnectHearingAid(Landroid/bluetooth/BluetoothDevice;)Z

    .line 282
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$1100(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 283
    goto :goto_0

    .line 263
    :cond_6
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 264
    nop

    .line 302
    :goto_0
    return v1
.end method
