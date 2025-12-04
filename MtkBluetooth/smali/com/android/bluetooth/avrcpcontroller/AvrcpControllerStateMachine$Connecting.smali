.class public Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "AvrcpControllerStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Connecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connecting;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 438
    const-string v0, "Enter Connecting"

    invoke-static {v0}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->access$000(Ljava/lang/String;)V

    .line 439
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connecting;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->broadcastConnectionStateChanged(I)V

    .line 440
    iget-object v0, p0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connecting;->this$0:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;

    iget-object v1, v0, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->mConnected:Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine$Connected;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/avrcpcontroller/AvrcpControllerStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 441
    return-void
.end method
