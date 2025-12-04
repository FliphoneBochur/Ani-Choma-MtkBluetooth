.class public final Lcom/android/bluetooth/avrcp/MediaPlayerWrapperFactory;
.super Ljava/lang/Object;
.source "MediaPlayerWrapperFactory.java"


# static fields
.field private static sInjectedWrapper:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static inject(Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;)V
    .locals 0

    .line 49
    sput-object p0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapperFactory;->sInjectedWrapper:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    .line 50
    return-void
.end method

.method static wrap(Lcom/android/bluetooth/avrcp/MediaController;Landroid/os/Looper;)Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;
    .locals 2

    .line 33
    sget-object v0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapperFactory;->sInjectedWrapper:Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    return-object v0

    .line 34
    :cond_0
    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/android/bluetooth/avrcp/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    new-instance v0, Lcom/android/bluetooth/avrcp/GPMWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/avrcp/GPMWrapper;-><init>(Lcom/android/bluetooth/avrcp/MediaController;Landroid/os/Looper;)V

    goto :goto_0

    .line 42
    :cond_2
    new-instance v0, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;-><init>(Lcom/android/bluetooth/avrcp/MediaController;Landroid/os/Looper;)V

    .line 44
    :goto_0
    return-object v0

    .line 35
    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
