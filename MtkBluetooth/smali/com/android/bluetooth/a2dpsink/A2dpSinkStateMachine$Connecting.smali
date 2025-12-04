.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connecting"
.end annotation


# instance fields
.field mIncomingConnection:Z

.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    .line 194
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->mIncomingConnection:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .line 198
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2DPSinkStateMachine"

    const-string v1, "Enter Connecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->onConnectionStateChanged(I)V

    .line 200
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/16 v1, 0x65

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessageDelayed(IJ)V

    .line 202
    iget-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->mIncomingConnection:Z

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    iget-object v1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, v1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDeviceAddress:[B

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->connectA2dpNative([B)Z

    .line 206
    :cond_1
    invoke-super {p0}, Lcom/android/bluetooth/statemachine/State;->enter()V

    .line 207
    return-void
.end method

.method public exit()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/16 v1, 0x65

    invoke-static {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->access$000(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;I)V

    .line 238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->mIncomingConnection:Z

    .line 239
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 211
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 219
    const/4 p1, 0x0

    return p1

    .line 213
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/a2dpsink/StackEvent;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->processStackEvent(Lcom/android/bluetooth/a2dpsink/StackEvent;)V

    .line 214
    return v2

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 217
    return v2
.end method

.method processStackEvent(Lcom/android/bluetooth/a2dpsink/StackEvent;)V
    .locals 2

    .line 223
    iget v0, p1, Lcom/android/bluetooth/a2dpsink/StackEvent;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    iget p1, p1, Lcom/android/bluetooth/a2dpsink/StackEvent;->mState:I

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 228
    goto :goto_0

    .line 230
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 234
    :goto_0
    return-void
.end method
