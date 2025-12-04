.class public final Lcom/android/bluetooth/avrcp/MediaControllerFactory;
.super Ljava/lang/Object;
.source "MediaControllerFactory.java"


# static fields
.field private static sInjectedController:Lcom/android/bluetooth/avrcp/MediaController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static inject(Lcom/android/bluetooth/avrcp/MediaController;)V
    .locals 0

    .line 45
    sput-object p0, Lcom/android/bluetooth/avrcp/MediaControllerFactory;->sInjectedController:Lcom/android/bluetooth/avrcp/MediaController;

    .line 46
    return-void
.end method

.method static make(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)Lcom/android/bluetooth/avrcp/MediaController;
    .locals 1

    .line 39
    sget-object v0, Lcom/android/bluetooth/avrcp/MediaControllerFactory;->sInjectedController:Lcom/android/bluetooth/avrcp/MediaController;

    if-eqz v0, :cond_0

    return-object v0

    .line 40
    :cond_0
    new-instance v0, Lcom/android/bluetooth/avrcp/MediaController;

    invoke-direct {v0, p0, p1}, Lcom/android/bluetooth/avrcp/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    return-object v0
.end method

.method static wrap(Landroid/media/session/MediaController;)Lcom/android/bluetooth/avrcp/MediaController;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/bluetooth/avrcp/MediaControllerFactory;->sInjectedController:Lcom/android/bluetooth/avrcp/MediaController;

    if-eqz v0, :cond_0

    return-object v0

    .line 35
    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/bluetooth/avrcp/MediaController;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/MediaController;-><init>(Landroid/media/session/MediaController;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
