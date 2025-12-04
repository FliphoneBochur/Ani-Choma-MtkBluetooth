.class public final synthetic Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:Ljava/lang/String;

.field public final synthetic f$4:I

.field public final synthetic f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(IIILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$0:I

    iput p2, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$1:I

    iput p3, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$2:I

    iput-object p4, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$4:I

    iput-object p6, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 7

    iget v0, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$0:I

    iget v1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$1:I

    iget v2, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$2:I

    iget-object v3, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$4:I

    iget-object v5, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$wCa7BdVIVWkzhvYq6mjnomLAtCo;->f$5:Ljava/lang/String;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/android/bluetooth/hfp/HeadsetService;->lambda$phoneStateChanged$4(IIILjava/lang/String;ILjava/lang/String;Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method
