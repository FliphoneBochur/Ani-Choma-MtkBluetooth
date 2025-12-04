.class public Lcom/android/bluetooth/avrcp/MediaController;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/MediaController$TransportControls;,
        Lcom/android/bluetooth/avrcp/MediaController$Callback;
    }
.end annotation


# instance fields
.field public mDelegate:Landroid/media/session/MediaController;

.field public mTransportControls:Lcom/android/bluetooth/avrcp/MediaController$TransportControls;

.field public mTransportDelegate:Landroid/media/session/MediaController$TransportControls;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Landroid/media/session/MediaController;

    invoke-direct {v0, p1, p2}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    .line 55
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    .line 56
    new-instance p1, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;-><init>(Lcom/android/bluetooth/avrcp/MediaController;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportControls:Lcom/android/bluetooth/avrcp/MediaController$TransportControls;

    .line 57
    return-void
.end method

.method constructor <init>(Landroid/media/session/MediaController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    .line 49
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object p1

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    .line 50
    new-instance p1, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;

    invoke-direct {p1, p0}, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;-><init>(Lcom/android/bluetooth/avrcp/MediaController;)V

    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportControls:Lcom/android/bluetooth/avrcp/MediaController$TransportControls;

    .line 51
    return-void
.end method


# virtual methods
.method public adjustVolume(II)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController;->adjustVolume(II)V

    .line 167
    return-void
.end method

.method public controlsSameSession(Landroid/media/session/MediaController;)Z
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public controlsSameSession(Lcom/android/bluetooth/avrcp/MediaController;)Z
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/bluetooth/avrcp/MediaController;->getWrappedInstance()Landroid/media/session/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 233
    instance-of v0, p1, Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 235
    :cond_0
    instance-of v0, p1, Lcom/android/bluetooth/avrcp/MediaController;

    if-eqz v0, :cond_1

    .line 236
    check-cast p1, Lcom/android/bluetooth/avrcp/MediaController;

    .line 237
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    iget-object p1, p1, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 239
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFlags()J
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMetadata()Landroid/media/MediaMetadata;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Landroid/media/session/PlaybackState;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueue()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getQueueTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getQueueTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getRatingType()I
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getRatingType()I

    move-result v0

    return v0
.end method

.method public getSessionActivity()Landroid/app/PendingIntent;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTransportControls()Lcom/android/bluetooth/avrcp/MediaController$TransportControls;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportControls:Lcom/android/bluetooth/avrcp/MediaController$TransportControls;

    return-object v0
.end method

.method public getWrappedInstance()Landroid/media/session/MediaController;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    return-object v0
.end method

.method public registerCallback(Lcom/android/bluetooth/avrcp/MediaController$Callback;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 176
    return-void
.end method

.method public registerCallback(Lcom/android/bluetooth/avrcp/MediaController$Callback;Landroid/os/Handler;)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 183
    return-void
.end method

.method public sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/session/MediaController;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 198
    return-void
.end method

.method public setVolumeTo(II)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController;->setVolumeTo(II)V

    .line 160
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 247
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    .line 248
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    .line 249
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaController ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    .line 250
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 249
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterCallback(Lcom/android/bluetooth/avrcp/MediaController$Callback;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController;->mDelegate:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 190
    return-void
.end method
