.class Lcom/android/bluetooth/btservice/AdapterService$4;
.super Landroid/content/BroadcastReceiver;
.source "AdapterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/btservice/AdapterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/btservice/AdapterService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/btservice/AdapterService;)V
    .locals 0

    .line 3124
    iput-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$4;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 3127
    iget-object p1, p0, Lcom/android/bluetooth/btservice/AdapterService$4;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    monitor-enter p1

    .line 3128
    :try_start_0
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$4;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/bluetooth/btservice/AdapterService;->access$2402(Lcom/android/bluetooth/btservice/AdapterService;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 3129
    iget-object p2, p0, Lcom/android/bluetooth/btservice/AdapterService$4;->this$0:Lcom/android/bluetooth/btservice/AdapterService;

    invoke-static {p2}, Lcom/android/bluetooth/btservice/AdapterService;->access$2500(Lcom/android/bluetooth/btservice/AdapterService;)V

    .line 3130
    monitor-exit p1

    .line 3131
    return-void

    .line 3130
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
