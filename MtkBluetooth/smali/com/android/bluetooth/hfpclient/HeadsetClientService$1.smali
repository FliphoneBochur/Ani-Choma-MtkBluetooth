.class Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetClientService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfpclient/HeadsetClientService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 155
    const-string v0, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 160
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 161
    if-nez p1, :cond_2

    .line 162
    nop

    .line 163
    const-string p1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 164
    invoke-static {p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->amToHfVol(I)I

    move-result p2

    .line 170
    iget-object v0, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-static {v0}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->access$000(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Landroid/media/AudioManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hfp_volume="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object p2, p0, Lcom/android/bluetooth/hfpclient/HeadsetClientService$1;->this$0:Lcom/android/bluetooth/hfpclient/HeadsetClientService;

    invoke-static {p2}, Lcom/android/bluetooth/hfpclient/HeadsetClientService;->access$100(Lcom/android/bluetooth/hfpclient/HeadsetClientService;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;

    .line 173
    if-eqz v0, :cond_0

    .line 174
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/hfpclient/HeadsetClientStateMachine;->sendMessage(II)V

    .line 177
    :cond_0
    goto :goto_0

    .line 178
    :cond_1
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 181
    :cond_2
    :goto_1
    return-void
.end method
