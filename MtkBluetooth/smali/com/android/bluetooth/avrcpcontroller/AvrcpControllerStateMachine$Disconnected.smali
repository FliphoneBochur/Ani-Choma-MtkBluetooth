.class public Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;
.super Lcom/android/bluetooth/statemachine/State;
.source "AvrcpControllerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Disconnected"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 410
    const-string v0, "Enter Disconnected"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget v0, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mMostRecentState:I

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->sendMessage(I)V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->broadcastConnectionStateChanged(I)V

    .line 415
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 419
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v2, 0x64

    if-eq v0, v2, :cond_1

    const/16 v2, 0xdc

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iput p1, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mCoverArtPsm:I

    .line 422
    goto :goto_0

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object p1, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mService:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;

    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerService;->removeStateMachine(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V

    goto :goto_0

    .line 424
    :cond_2
    const-string p1, "Connect"

    invoke-static {p1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 425
    iget-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v0, p1, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnecting:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connecting;

    invoke-virtual {p1, v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 426
    nop

    .line 431
    :goto_0
    return v1
.end method
