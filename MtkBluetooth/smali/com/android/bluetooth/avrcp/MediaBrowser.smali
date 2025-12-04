.class public Lcom/android/bluetooth/avrcp/MediaBrowser;
.super Ljava/lang/Object;
.source "MediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/avrcp/MediaBrowser$SubscriptionCallback;,
        Lcom/android/bluetooth/avrcp/MediaBrowser$ItemCallback;,
        Lcom/android/bluetooth/avrcp/MediaBrowser$ConnectionCallback;
    }
.end annotation


# instance fields
.field mDelegate:Landroid/media/browse/MediaBrowser;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/bluetooth/avrcp/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/media/browse/MediaBrowser;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/media/browse/MediaBrowser;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    .line 41
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->connect()V

    .line 75
    return-void
.end method

.method public disconnect()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->disconnect()V

    .line 82
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Lcom/android/bluetooth/avrcp/MediaBrowser$ItemCallback;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0, p1, p2}, Landroid/media/browse/MediaBrowser;->getItem(Ljava/lang/String;Landroid/media/browse/MediaBrowser$ItemCallback;)V

    .line 96
    return-void
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroid/media/session/MediaSession$Token;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v0

    return v0
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Lcom/android/bluetooth/avrcp/MediaBrowser$SubscriptionCallback;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 131
    return-void
.end method

.method public subscribe(Ljava/lang/String;Lcom/android/bluetooth/avrcp/MediaBrowser$SubscriptionCallback;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0, p1, p2}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 138
    return-void
.end method

.method public testInit(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/bluetooth/avrcp/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V
    .locals 0

    .line 163
    const-string p1, "AvrcpMockMediaBrowser"

    const-string p2, "This function should never be called"

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0, p1}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Lcom/android/bluetooth/avrcp/MediaBrowser$SubscriptionCallback;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/bluetooth/avrcp/MediaBrowser;->mDelegate:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0, p1, p2}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 153
    return-void
.end method
