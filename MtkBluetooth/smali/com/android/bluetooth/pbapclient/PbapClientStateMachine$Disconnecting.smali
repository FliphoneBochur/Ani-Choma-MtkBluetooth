.class Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "PbapClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 252
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$000(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$100(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)I

    move-result v2

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$200(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 254
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$102(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)I

    .line 255
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$500(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 257
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    const/4 v1, 0x4

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->sendMessageDelayed(IJ)V

    .line 258
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const-string p1, "PbapClientStateMachine"

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 286
    const-string v0, "Received unexpected message while Disconnecting"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 p1, 0x0

    return p1

    .line 283
    :cond_0
    goto :goto_0

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1, v1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$1200(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)V

    .line 268
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$400(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 269
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$1300(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 270
    goto :goto_0

    .line 277
    :cond_2
    const-string v0, "Disconnect Timeout, Forcing"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$500(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->abort()V

    .line 279
    goto :goto_0

    .line 273
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->deferMessage(Landroid/os/Message;)V

    .line 274
    nop

    .line 289
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
