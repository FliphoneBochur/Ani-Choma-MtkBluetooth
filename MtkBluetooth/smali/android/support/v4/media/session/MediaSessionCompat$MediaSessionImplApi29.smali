.class Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi29;
.super Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi28;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaSessionImplApi29"
.end annotation


# direct methods
.method constructor <init>(Landroid/media/session/MediaSession;Landroidx/versionedparcelable/VersionedParcelable;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "sessionFwk"    # Landroid/media/session/MediaSession;
    .param p2, "session2Token"    # Landroidx/versionedparcelable/VersionedParcelable;
    .param p3, "sessionInfo"    # Landroid/os/Bundle;

    .line 4388
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi28;-><init>(Landroid/media/session/MediaSession;Landroidx/versionedparcelable/VersionedParcelable;Landroid/os/Bundle;)V

    .line 4389
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "mediaSession"    # Ljava/lang/Object;

    .line 4392
    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi28;-><init>(Ljava/lang/Object;)V

    .line 4393
    move-object v0, p1

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0}, Landroid/media/session/MediaSession;->getController()Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getSessionInfo()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$MediaSessionImplApi29;->mSessionInfo:Landroid/os/Bundle;

    .line 4394
    return-void
.end method
