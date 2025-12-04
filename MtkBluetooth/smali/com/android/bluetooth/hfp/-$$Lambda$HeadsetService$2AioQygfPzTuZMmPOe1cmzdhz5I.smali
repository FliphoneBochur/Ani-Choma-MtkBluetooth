.class public final synthetic Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$2AioQygfPzTuZMmPOe1cmzdhz5I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/bluetooth/hfp/HeadsetService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$2AioQygfPzTuZMmPOe1cmzdhz5I;->f$0:Lcom/android/bluetooth/hfp/HeadsetService;

    iput p2, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$2AioQygfPzTuZMmPOe1cmzdhz5I;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$2AioQygfPzTuZMmPOe1cmzdhz5I;->f$0:Lcom/android/bluetooth/hfp/HeadsetService;

    iget v1, p0, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$2AioQygfPzTuZMmPOe1cmzdhz5I;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetService;->lambda$phoneStateChanged$5$HeadsetService(I)V

    return-void
.end method
