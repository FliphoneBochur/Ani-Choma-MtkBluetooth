.class Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;
.super Lcom/android/bluetooth/statemachine/State;
.source "PbapClientStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 297
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$000(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    iget-object v2, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v2}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$100(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v0, v1, v2, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$200(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;Landroid/bluetooth/BluetoothDevice;II)V

    .line 299
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0, v3}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$102(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;I)I

    .line 300
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$1400(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$500(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 304
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2

    .line 311
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/16 p1, 0x8

    if-eq v0, p1, :cond_0

    .line 325
    const-string p1, "PbapClientStateMachine"

    const-string v0, "Received unexpected message while Connected"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/4 p1, 0x0

    return p1

    .line 320
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$500(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientConnectionHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 322
    goto :goto_0

    .line 313
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_2

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    .line 314
    invoke-static {v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$000(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 315
    iget-object p1, p0, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine$Connected;->this$0:Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;

    invoke-static {p1}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->access$800(Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;)Lcom/android/bluetooth/statemachine/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/pbapclient/PbapClientStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 328
    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
