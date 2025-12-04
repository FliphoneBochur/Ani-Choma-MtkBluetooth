.class Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;
.super Ljava/lang/Object;
.source "HeadsetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoiceRecognitionTimeoutEvent"
.end annotation


# instance fields
.field mVoiceRecognitionDevice:Landroid/bluetooth/BluetoothDevice;

.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetService;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 1600
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1601
    iput-object p2, p0, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->mVoiceRecognitionDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1602
    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$HeadsetService$VoiceRecognitionTimeoutEvent(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 3

    .line 1611
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->mVoiceRecognitionDevice:Landroid/bluetooth/BluetoothDevice;

    const/16 v1, 0xf

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v2, v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 1606
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetService;->access$300(Lcom/android/bluetooth/hfp/HeadsetService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    .line 1607
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getVoiceRecognitionWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1608
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    invoke-static {v1}, Lcom/android/bluetooth/hfp/HeadsetService;->access$000(Lcom/android/bluetooth/hfp/HeadsetService;)Lcom/android/bluetooth/hfp/HeadsetSystemInterface;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/bluetooth/hfp/HeadsetSystemInterface;->getVoiceRecognitionWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1610
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/bluetooth/hfp/HeadsetService;->access$1102(Lcom/android/bluetooth/hfp/HeadsetService;Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;)Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;

    .line 1611
    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->this$0:Lcom/android/bluetooth/hfp/HeadsetService;

    iget-object v2, p0, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->mVoiceRecognitionDevice:Landroid/bluetooth/BluetoothDevice;

    new-instance v3, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$VoiceRecognitionTimeoutEvent$EV67KkqTR78Q6tNuwx9Q2WKkskk;

    invoke-direct {v3, p0}, Lcom/android/bluetooth/hfp/-$$Lambda$HeadsetService$VoiceRecognitionTimeoutEvent$EV67KkqTR78Q6tNuwx9Q2WKkskk;-><init>(Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;)V

    invoke-static {v1, v2, v3}, Lcom/android/bluetooth/hfp/HeadsetService;->access$1000(Lcom/android/bluetooth/hfp/HeadsetService;Landroid/bluetooth/BluetoothDevice;Lcom/android/bluetooth/hfp/HeadsetService$StateMachineTask;)Z

    .line 1614
    monitor-exit v0

    .line 1615
    return-void

    .line 1614
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceRecognitionTimeoutEvent["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/bluetooth/hfp/HeadsetService$VoiceRecognitionTimeoutEvent;->mVoiceRecognitionDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
