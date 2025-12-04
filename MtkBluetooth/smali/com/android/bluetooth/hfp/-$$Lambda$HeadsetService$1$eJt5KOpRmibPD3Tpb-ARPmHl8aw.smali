.class public final synthetic Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$1$eJt5KOpRmibPD3Tpb-ARPmHl8aw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$1$eJt5KOpRmibPD3Tpb-ARPmHl8aw;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 1

    iget-object v0, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$1$eJt5KOpRmibPD3Tpb-ARPmHl8aw;->f$0:Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/android/bluetooth/hfp/HeadsetService$1;->lambda$onReceive$0(Landroid/content/Intent;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method
