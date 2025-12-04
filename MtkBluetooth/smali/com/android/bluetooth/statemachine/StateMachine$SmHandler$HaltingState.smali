.class Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;
.super Lcom/android/bluetooth/statemachine/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HaltingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)V
    .locals 0

    .line 768
    iput-object p1, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;->this$0:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/android/bluetooth/statemachine/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;Lcom/android/bluetooth/statemachine/StateMachine$1;)V
    .locals 0

    .line 768
    invoke-direct {p0, p1}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;-><init>(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler$HaltingState;->this$0:Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;

    invoke-static {v0}, Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;->access$300(Lcom/android/bluetooth/statemachine/StateMachine$SmHandler;)Lcom/android/bluetooth/statemachine/StateMachine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/statemachine/StateMachine;->haltedProcessMessage(Landroid/os/Message;)V

    .line 772
    const/4 p1, 0x1

    return p1
.end method
