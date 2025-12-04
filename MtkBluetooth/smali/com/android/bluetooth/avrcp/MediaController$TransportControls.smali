.class public Lcom/android/bluetooth/avrcp/MediaController$TransportControls;
.super Ljava/lang/Object;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TransportControls"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/avrcp/MediaController;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/avrcp/MediaController;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fastForward()V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->fastForward()V

    .line 352
    return-void
.end method

.method public pause()V
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->pause()V

    .line 331
    return-void
.end method

.method public play()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 296
    return-void
.end method

.method public playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->playFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 303
    return-void
.end method

.method public playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->playFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 310
    return-void
.end method

.method public playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->playFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 317
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->prepare()V

    .line 268
    return-void
.end method

.method public prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 275
    return-void
.end method

.method public prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 282
    return-void
.end method

.method public prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->prepareFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 289
    return-void
.end method

.method public rewind()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->rewind()V

    .line 366
    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->seekTo(J)V

    .line 345
    return-void
.end method

.method public sendCustomAction(Landroid/media/session/PlaybackState$CustomAction;Landroid/os/Bundle;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Landroid/media/session/PlaybackState$CustomAction;Landroid/os/Bundle;)V

    .line 388
    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 395
    return-void
.end method

.method public setRating(Landroid/media/Rating;)V
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$TransportControls;->setRating(Landroid/media/Rating;)V

    .line 380
    return-void
.end method

.method public skipToNext()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToNext()V

    .line 359
    return-void
.end method

.method public skipToPrevious()V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->skipToPrevious()V

    .line 373
    return-void
.end method

.method public skipToQueueItem(J)V
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1, p2}, Landroid/media/session/MediaController$TransportControls;->skipToQueueItem(J)V

    .line 324
    return-void
.end method

.method public stop()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaController$TransportControls;->this$0:Lcom/android/bluetooth/avrcp/MediaController;

    iget-object v0, v0, Lcom/android/bluetooth/avrcp/MediaController;->mTransportDelegate:Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->stop()V

    .line 338
    return-void
.end method
