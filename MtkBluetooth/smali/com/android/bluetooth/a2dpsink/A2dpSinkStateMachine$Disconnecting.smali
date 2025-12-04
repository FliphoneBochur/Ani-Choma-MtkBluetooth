.class public Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;
.super Lcom/android/bluetooth/statemachine/State;
.source "A2dpSinkStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Disconnecting"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 287
    sget-boolean v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "A2DPSinkStateMachine"

    const-string v1, "Enter Disconnecting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->onConnectionStateChanged(I)V

    .line 289
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnecting;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;

    iget-object v1, v0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->mDisconnected:Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine$Disconnected;

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStateMachine;->transitionTo(Lcom/android/bluetooth/statemachine/IState;)V

    .line 290
    return-void
.end method
