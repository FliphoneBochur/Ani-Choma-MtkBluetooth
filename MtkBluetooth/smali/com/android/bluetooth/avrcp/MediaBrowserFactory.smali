.class public final Lcom/android/bluetooth/avrcp/MediaBrowserFactory;
.super Ljava/lang/Object;
.source "MediaBrowserFactory.java"


# static fields
.field private static sInjectedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static inject(Lcom/android/bluetooth/avrcp/MediaBrowser;)V
    .locals 0

    .line 50
    sput-object p0, Lcom/android/bluetooth/avrcp/MediaBrowserFactory;->sInjectedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;

    .line 51
    return-void
.end method

.method static make(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/bluetooth/avrcp/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)Lcom/android/bluetooth/avrcp/MediaBrowser;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/bluetooth/avrcp/MediaBrowserFactory;->sInjectedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/MediaBrowser;->testInit(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/bluetooth/avrcp/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    .line 43
    sget-object p0, Lcom/android/bluetooth/avrcp/MediaBrowserFactory;->sInjectedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;

    return-object p0

    .line 45
    :cond_0
    new-instance v0, Lcom/android/bluetooth/avrcp/MediaBrowser;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/bluetooth/avrcp/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/bluetooth/avrcp/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    return-object v0
.end method

.method static wrap(Landroid/media/browse/MediaBrowser;)Lcom/android/bluetooth/avrcp/MediaBrowser;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/bluetooth/avrcp/MediaBrowserFactory;->sInjectedBrowser:Lcom/android/bluetooth/avrcp/MediaBrowser;

    if-eqz v0, :cond_0

    return-object v0

    .line 36
    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lcom/android/bluetooth/avrcp/MediaBrowser;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/avrcp/MediaBrowser;-><init>(Landroid/media/browse/MediaBrowser;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
