.class Lcom/android/bluetooth/hfp/HeadsetService$2;
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

    .line 1480
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1482
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->access$300(Lcom/android/bluetooth/hfp/HeadsetService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 1483
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$2;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const-string v5, ""

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/android/bluetooth/hfp/HeadsetService;->access$500(Lcom/android/bluetooth/hfp/HeadsetService;IIILjava/lang/String;ILjava/lang/String;Z)V

    .line 1485
    monitor-exit v0

    .line 1486
    return-void

    .line 1485
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
