.class public final synthetic Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$DialingOutTimeoutEvent$DfDBG7rWmVZbY_YyILx3boiOIbM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$DialingOutTimeoutEvent$DfDBG7rWmVZbY_YyILx3boiOIbM;->f$0:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$DialingOutTimeoutEvent$DfDBG7rWmVZbY_YyILx3boiOIbM;->f$0:Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService$DialingOutTimeoutEvent;->lambda$run$0$HeadsetService$DialingOutTimeoutEvent(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method
