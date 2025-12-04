.class public final synthetic Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/hfp/HeadsetService;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:Z

.field public final synthetic f$6:Ljava/lang/String;

.field public final synthetic f$7:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;IIIIZLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$0:Lcom/android/bluetooth/hfp/HeadsetService;

    iput p2, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$1:I

    iput p3, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$2:I

    iput p4, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$3:I

    iput p5, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$4:I

    iput-boolean p6, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$5:Z

    iput-object p7, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$6:Ljava/lang/String;

    iput p8, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$7:I

    return-void
.end method


# virtual methods
.method public final execute(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 9

    iget-object v0, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$0:Lcom/android/bluetooth/hfp/HeadsetService;

    iget v1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$1:I

    iget v2, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$2:I

    iget v3, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$3:I

    iget v4, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$4:I

    iget-boolean v5, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$5:Z

    iget-object v6, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$6:Ljava/lang/String;

    iget v7, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$ArvrMXQgGOcK5yivPPEbJjFsCXA;->f$7:I

    move-object v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/bluetooth/hfp/HeadsetService;->lambda$clccResponse$6$HeadsetService(IIIIZLjava/lang/String;ILcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    return-void
.end method
