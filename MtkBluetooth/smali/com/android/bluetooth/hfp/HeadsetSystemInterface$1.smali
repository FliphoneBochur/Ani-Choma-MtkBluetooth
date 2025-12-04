.class Lcom/android/bluetooth/hfp/HeadsetSystemInterface$1;
.super Ljava/lang/Object;
.source "HeadsetSystemInterface.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetSystemInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetSystemInterface;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Proxy object connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    monitor-enter p1

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    invoke-static {p2}, Landroid/bluetooth/IBluetoothHeadsetPhone$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->access$202(Lcom/android/bluetooth/hfp/HeadsetSystemInterface;Landroid/bluetooth/IBluetoothHeadsetPhone;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 79
    monitor-exit p1

    .line 80
    return-void

    .line 79
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 84
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    invoke-static {}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Proxy object disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    monitor-enter p1

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetSystemInterface$1;->this$0:Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->access$202(Lcom/android/bluetooth/hfp/HeadsetSystemInterface;Landroid/bluetooth/IBluetoothHeadsetPhone;)Landroid/bluetooth/IBluetoothHeadsetPhone;

    .line 89
    monitor-exit p1

    .line 90
    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
