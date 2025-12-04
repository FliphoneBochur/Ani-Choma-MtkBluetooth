.class Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;
.super Lcom/android/bluetooth/statemachine/State;
.source "A2dpStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dp/A2dpStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private processConnectionEvent(I)V
    .locals 3

    .line 241
    const-string v0, "A2dpStateMachine"

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " device: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 267
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore A2DP DISCONNECTING event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    goto/16 :goto_0

    .line 256
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A2DP Connected from Disconnected state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->okToConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 258
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming A2DP Connected request accepted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 259
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto/16 :goto_0

    .line 262
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming A2DP Connected request rejected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->disconnectA2dp(Landroid/bluetooth/BluetoothDevice;)Z

    .line 265
    goto/16 :goto_0

    .line 246
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpService;->okToConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 247
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming A2DP Connecting request accepted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 248
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_0

    .line 251
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming A2DP Connecting request rejected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->disconnectA2dp(Landroid/bluetooth/BluetoothDevice;)Z

    .line 254
    goto :goto_0

    .line 243
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore A2DP DISCONNECTED event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    nop

    .line 273
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Enter Disconnected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 166
    :cond_0
    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 165
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$202(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I

    .line 169
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$300(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)V

    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$400(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/bluetooth/a2dp/A2dpService;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$502(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v2

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$700(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)I

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$800(Lcom/android/bluetooth/a2dp/A2dpStateMachine;II)V

    .line 176
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$900(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected: stopped playing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$902(Lcom/android/bluetooth/a2dp/A2dpStateMachine;Z)Z

    .line 179
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/16 v1, 0xb

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;II)V

    .line 183
    :cond_2
    return-void
.end method

.method public exit()V
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exit Disconnected("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 189
    :cond_0
    iget v0, v0, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    invoke-virtual {v1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$702(Lcom/android/bluetooth/a2dp/A2dpStateMachine;I)I

    .line 191
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 195
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected process message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    .line 196
    invoke-static {v2}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "A2dpStateMachine"

    if-eq v0, v1, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/16 v3, 0x65

    if-eq v0, v3, :cond_0

    .line 234
    const/4 p1, 0x0

    return p1

    .line 216
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;

    .line 217
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disconnected: stack event: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v3, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): event mismatch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_1
    iget v0, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->type:I

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected: ignoring stack event: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    goto/16 :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->codecStatus:Landroid/bluetooth/BluetoothCodecStatus;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->processCodecConfigEvent(Landroid/bluetooth/BluetoothCodecStatus;)V

    .line 227
    goto/16 :goto_0

    .line 223
    :cond_3
    iget p1, p1, Lcom/android/bluetooth/a2dp/A2dpStackEvent;->valueInt:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->processConnectionEvent(I)V

    .line 224
    goto/16 :goto_0

    .line 213
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disconnected: DISCONNECT ignored: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    goto/16 :goto_0

    .line 200
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->log(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1100(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpNativeInterface;->connectA2dp(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disconnected: error connecting to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    goto :goto_0

    .line 205
    :cond_6
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$600(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcom/android/bluetooth/a2dp/A2dpService;->okToConnect(Landroid/bluetooth/BluetoothDevice;Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 206
    iget-object p1, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$1200(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Lcom/android/bluetooth/a2dp/A2dpStateMachine$Connecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_0

    .line 209
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Outgoing A2DP Connecting request rejected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dp/A2dpStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dp/A2dpStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/a2dp/A2dpStateMachine;->access$000(Lcom/android/bluetooth/a2dp/A2dpStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    nop

    .line 236
    :goto_0
    return v1
.end method
