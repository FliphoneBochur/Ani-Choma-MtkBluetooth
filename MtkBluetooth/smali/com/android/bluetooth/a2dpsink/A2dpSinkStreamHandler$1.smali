.class Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler$1;
.super Ljava/lang/Object;
.source "A2dpSinkStreamHandler.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 2

    .line 106
    invoke-static {}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioFocusChangeListener focuschange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "A2dpSinkStreamHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler$1;->this$0:Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;

    const/4 v1, 0x7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/bluetooth/a2dpsink/A2dpSinkStreamHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 111
    return-void
.end method
