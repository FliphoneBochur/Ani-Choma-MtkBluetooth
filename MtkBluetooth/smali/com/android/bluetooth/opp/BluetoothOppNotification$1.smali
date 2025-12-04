.class Lcom/android/bluetooth/opp/BluetoothOppNotification$1;
.super Landroid/os/Handler;
.source "BluetoothOppNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 203
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    monitor-enter p1

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I

    move-result v0

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v0

    if-nez v0, :cond_3

    .line 207
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    const-string v0, "BluetoothOppNotification"

    const-string v4, "new notify threadi!"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    new-instance v4, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-direct {v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppNotification;)V

    invoke-static {v0, v4}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$102(Lcom/android/bluetooth/opp/BluetoothOppNotification;Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$100(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification$NotificationUpdateThread;->start()V

    .line 212
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    const-string v0, "BluetoothOppNotification"

    const-string v4, "send delay message"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$300(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$300(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 216
    :cond_3
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$000(Lcom/android/bluetooth/opp/BluetoothOppNotification;)I

    move-result v0

    if-lez v0, :cond_5

    .line 217
    invoke-static {}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$200()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 218
    const-string v0, "BluetoothOppNotification"

    const-string v4, "previous thread is not finished yet"

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_4
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$300(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v0

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppNotification$1;->this$0:Lcom/android/bluetooth/opp/BluetoothOppNotification;

    invoke-static {v4}, Lcom/android/bluetooth/opp/BluetoothOppNotification;->access$300(Lcom/android/bluetooth/opp/BluetoothOppNotification;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 222
    :cond_5
    :goto_0
    monitor-exit p1

    .line 225
    :goto_1
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
