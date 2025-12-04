.class Lcom/android/bluetooth/hfp/HeadsetStateMachine$MyAudioServerStateCallback;
.super Landroid/media/AudioManager$AudioServerStateCallback;
.source "HeadsetStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/hfp/HeadsetStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyAudioServerStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V
    .locals 0

    .line 1450
    iput-object p1, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MyAudioServerStateCallback;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioServerStateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioServerDown()V
    .locals 2

    .line 1453
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MyAudioServerStateCallback;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v1, "onAudioServerDown"

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5700(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    .line 1454
    return-void
.end method

.method public onAudioServerUp()V
    .locals 2

    .line 1458
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MyAudioServerStateCallback;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    const-string v1, "onAudioServerUp restoring audio parameters"

    invoke-static {v0, v1}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5800(Lcom/android/bluetooth/hfp/HeadsetStateMachine;Ljava/lang/String;)V

    .line 1459
    iget-object v0, p0, Lcom/android/bluetooth/hfp/HeadsetStateMachine$MyAudioServerStateCallback;->this$0:Lcom/android/bluetooth/hfp/HeadsetStateMachine;

    invoke-static {v0}, Lcom/android/bluetooth/hfp/HeadsetStateMachine;->access$5900(Lcom/android/bluetooth/hfp/HeadsetStateMachine;)V

    .line 1460
    return-void
.end method
