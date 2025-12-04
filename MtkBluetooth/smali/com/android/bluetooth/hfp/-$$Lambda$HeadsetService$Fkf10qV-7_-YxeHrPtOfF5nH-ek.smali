.class public final synthetic Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$Fkf10qV-7_-YxeHrPtOfF5nH-ek;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/hfp/HeadsetService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$Fkf10qV-7_-YxeHrPtOfF5nH-ek;->f$0:Lcom/android/bluetooth/hfp/HeadsetService;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$Fkf10qV-7_-YxeHrPtOfF5nH-ek;->f$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-virtual {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService;->lambda$phoneStateChanged$2$HeadsetService(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method
