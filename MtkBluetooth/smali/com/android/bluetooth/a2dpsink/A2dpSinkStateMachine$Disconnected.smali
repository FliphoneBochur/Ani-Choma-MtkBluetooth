.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;
.super Lcom/android/bluetooth/statemachine/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 143
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2DPSinkStateMachine"

    const-string v1, "Enter Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget v0, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mMostRecentState:I

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(I)V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->onConnectionStateChanged(I)V

    .line 148
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 152
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_0

    .line 164
    const/4 p1, 0x0

    return p1

    .line 154
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/a2dpsink/StackEvent;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->processStackEvent(Lcom/android/bluetooth/a2dpsink/StackEvent;)V

    .line 155
    return v1

    .line 161
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->removeStateMachine(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V

    .line 162
    return v1

    .line 157
    :cond_2
    sget-boolean p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz p1, :cond_3

    const-string p1, "A2DPSinkStateMachine"

    const-string v0, "Connect"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 159
    return v1
.end method

.method processStackEvent(Lcom/android/bluetooth/a2dpsink/StackEvent;)V
    .locals 2

    .line 168
    iget v0, p1, Lcom/android/bluetooth/a2dpsink/StackEvent;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget p1, p1, Lcom/android/bluetooth/a2dpsink/StackEvent;->mState:I

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 183
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 184
    goto :goto_0

    .line 172
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->getConnectionPolicy(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-nez p1, :cond_3

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore incoming connection, profile is turned off for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "A2DPSinkStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDeviceAddress:[B

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->disconnectA2dpNative([B)Z

    goto :goto_0

    .line 178
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;

    iput-boolean v1, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;->mIncomingConnection:Z

    .line 179
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mConnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connecting;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 181
    goto :goto_0

    .line 186
    :cond_4
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->sendMessage(I)V

    .line 190
    :goto_0
    return-void
.end method
