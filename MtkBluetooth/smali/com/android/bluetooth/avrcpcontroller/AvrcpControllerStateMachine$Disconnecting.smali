.class public Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "AvrcpControllerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Disconnecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 972
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->disconnectCoverArt()V

    .line 973
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-virtual {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->onBrowsingDisconnected()V

    .line 974
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->setActive(Z)Z

    .line 975
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->broadcastConnectionStateChanged(I)V

    .line 976
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v1, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mDisconnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Disconnected;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 977
    return-void
.end method
