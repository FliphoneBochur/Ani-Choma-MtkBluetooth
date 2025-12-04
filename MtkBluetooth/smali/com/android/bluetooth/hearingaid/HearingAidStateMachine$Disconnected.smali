.class Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;
.super Lcom/android/bluetooth/statemachine/State;
.source "HearingAidStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method private processConnectionEvent(I)V
    .locals 3

    .line 202
    const-string v0, "HearingAidStateMachine"

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " device: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 228
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore HearingAid DISCONNECTING event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    goto/16 :goto_0

    .line 217
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HearingAid Connected from Disconnected state: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$700(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 219
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming HearingAid Connected request accepted: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$900(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connected;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto/16 :goto_0

    .line 223
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming HearingAid Connected request rejected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$600(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->disconnectHearingAid(Landroid/bluetooth/BluetoothDevice;)Z

    .line 226
    goto/16 :goto_0

    .line 207
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$700(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object p1

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/bluetooth/hearingaid/HearingAidService;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming HearingAid Connecting request accepted: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$800(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_0

    .line 212
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming HearingAid Connecting request rejected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$600(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->disconnectHearingAid(Landroid/bluetooth/BluetoothDevice;)Z

    .line 215
    goto :goto_0

    .line 204
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore HearingAid DISCONNECTED event: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    nop

    .line 234
    :goto_0
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter Disconnected("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 135
    invoke-virtual {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v1

    iget v1, v1, Landroid/os/Message;->what:I

    .line 134
    invoke-static {v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HearingAidStateMachine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$202(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)I

    .line 138
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$300(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)V

    .line 140
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$400(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 143
    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$400(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)I

    move-result v2

    .line 142
    invoke-static {v0, v1, v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$500(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;II)V

    .line 145
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 3

    .line 149
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exit Disconnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    .line 150
    invoke-virtual {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v2

    iget v2, v2, Landroid/os/Message;->what:I

    .line 149
    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$402(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;I)I

    .line 152
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disconnected process message("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v2}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$100(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 159
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "HearingAidStateMachine"

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/16 v3, 0x65

    if-eq v0, v3, :cond_0

    .line 195
    const/4 p1, 0x0

    return p1

    .line 178
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;

    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iget-object v3, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "): event mismatch: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    iget v0, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->type:I

    if-eq v0, v1, :cond_2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected: ignoring stack event: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    goto/16 :goto_0

    .line 187
    :cond_2
    iget p1, p1, Lcom/android/bluetooth/hearingaid/HearingAidStackEvent;->valueInt1:I

    invoke-direct {p0, p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->processConnectionEvent(I)V

    .line 188
    goto/16 :goto_0

    .line 174
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disconnected: DISCONNECT: call native disconnect for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$600(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->disconnectHearingAid(Landroid/bluetooth/BluetoothDevice;)Z

    .line 176
    goto/16 :goto_0

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connecting to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v3}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->log(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$600(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidNativeInterface;->connectHearingAid(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disconnected: error connecting to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    goto :goto_0

    .line 166
    :cond_5
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$700(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidService;->okToConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 167
    iget-object p1, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$800(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Connecting;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    goto :goto_0

    .line 170
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Outgoing HearingAid Connecting request rejected: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;->access$000(Lcom/android/bluetooth/hearingaid/HearingAidStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    nop

    .line 197
    :goto_0
    return v1
.end method
