.class Lcom/android/bluetooth/hfp/HeadsetService$3;
.super Ljava/util/TimerTask;
.source "HeadsetService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/bluetooth/hfp/HeadsetService;->phoneStateChangedDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;)V
    .locals 0

    .line 1488
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$3;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1490
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$3;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->access$300(Lcom/android/bluetooth/hfp/HeadsetService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 1491
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$3;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x6

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/android/bluetooth/hfp/HeadsetService;->access$500(Lcom/android/bluetooth/hfp/HeadsetService;IIILjava/lang/String;ILjava/lang/String;Z)V

    .line 1492
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$3;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$800(Lcom/android/bluetooth/hfp/HeadsetService;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1493
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$3;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->access$802(Lcom/android/bluetooth/hfp/HeadsetService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 1494
    monitor-exit v0

    .line 1495
    return-void

    .line 1494
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
