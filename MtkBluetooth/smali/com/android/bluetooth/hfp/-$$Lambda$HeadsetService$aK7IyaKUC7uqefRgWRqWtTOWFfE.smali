.class public final synthetic Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$aK7IyaKUC7uqefRgWRqWtTOWFfE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/hfp/HeadsetDeviceState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetDeviceState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$aK7IyaKUC7uqefRgWRqWtTOWFfE;->f$0:Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$aK7IyaKUC7uqefRgWRqWtTOWFfE;->f$0:Lcom/android/bluetooth/hfp/HeadsetDeviceState;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->lambda$onDeviceStateChanged$0(Lcom/android/bluetooth/hfp/HeadsetDeviceState;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method
