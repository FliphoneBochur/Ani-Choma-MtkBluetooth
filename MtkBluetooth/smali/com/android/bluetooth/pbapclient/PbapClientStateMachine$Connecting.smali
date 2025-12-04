.class Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "PbapClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connecting"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mSdpReceiver:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;

.field final synthetic this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$000(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$100(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$200(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 147
    new-instance v0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;-><init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->mSdpReceiver:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;

    .line 148
    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;->register()V

    .line 149
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$000(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothDevice;->sdpSearch(Landroid/os/ParcelUuid;)Z

    .line 150
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$102(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)I

    .line 154
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PBAP PCE handler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$402(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    .line 156
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$400(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 157
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    new-instance v1, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;

    invoke-direct {v1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;-><init>()V

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 158
    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$400(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->setLooper(Landroid/os/Looper;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 159
    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$600(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientService;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->setContext(Landroid/content/Context;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 160
    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->setClientSM(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 161
    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$000(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->setRemoteDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;

    move-result-object v1

    .line 162
    invoke-virtual {v1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler$Builder;->build()Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;

    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$502(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;

    .line 164
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    const/4 v1, 0x3

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->sendMessageDelayed(IJ)V

    .line 165
    return-void
.end method

.method public exit()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->mSdpReceiver:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;->unregister()V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->mSdpReceiver:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting$SDPBroadcastReceiver;

    .line 208
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 172
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v1, :cond_3

    if-eq v0, v3, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 198
    const-string p1, "PbapClientStateMachine"

    const-string v0, "Received unexpected message while Connecting"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 p1, 0x0

    return p1

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$500(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2, p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 194
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 195
    goto :goto_0

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$900(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)V

    .line 183
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$1000(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 184
    goto :goto_0

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$1100(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)V

    .line 189
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$800(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 190
    goto :goto_0

    .line 174
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 175
    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$000(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 176
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$700(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)V

    .line 177
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$800(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 201
    :cond_4
    :goto_0
    return v2
.end method
