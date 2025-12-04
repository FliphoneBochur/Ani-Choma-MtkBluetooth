.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;
.super Lcom/android/bluetooth/statemachine/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 246
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2DPSinkStateMachine"

    const-string v1, "Enter Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->onConnectionStateChanged(I)V

    .line 248
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 252
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_0

    .line 261
    const/4 p1, 0x0

    return p1

    .line 258
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/bluetooth/a2dpsink/StackEvent;

    invoke-virtual {p0, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->processStackEvent(Lcom/android/bluetooth/a2dpsink/StackEvent;)V

    .line 259
    return v2

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 255
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mService:Lcom/android/bluetooth/a2dpsink/A2dpSinkService;

    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDeviceAddress:[B

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkService;->disconnectA2dpNative([B)Z

    .line 256
    return v2
.end method

.method processStackEvent(Lcom/android/bluetooth/a2dpsink/StackEvent;)V
    .locals 4

    .line 265
    iget v0, p1, Lcom/android/bluetooth/a2dpsink/StackEvent;->mType:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    new-instance v1, Landroid/bluetooth/BluetoothAudioConfig;

    iget v2, p1, Lcom/android/bluetooth/a2dpsink/StackEvent;->mSampleRate:I

    iget p1, p1, Lcom/android/bluetooth/a2dpsink/StackEvent;->mChannelCount:I

    const/4 v3, 0x2

    invoke-direct {v1, v2, p1, v3}, Landroid/bluetooth/BluetoothAudioConfig;-><init>(III)V

    iput-object v1, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mAudioConfig:Landroid/bluetooth/BluetoothAudioConfig;

    goto :goto_1

    .line 267
    :cond_1
    iget p1, p1, Lcom/android/bluetooth/a2dpsink/StackEvent;->mState:I

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    goto :goto_0

    .line 269
    :cond_2
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnecting:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 270
    goto :goto_0

    .line 272
    :cond_3
    iget-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Connected;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 275
    :goto_0
    nop

    .line 281
    :goto_1
    return-void
.end method
