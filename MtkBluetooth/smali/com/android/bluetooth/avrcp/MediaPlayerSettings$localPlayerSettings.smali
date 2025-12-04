.class Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;
.super Ljava/lang/Object;
.source "MediaPlayerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/MediaPlayerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "localPlayerSettings"
.end annotation


# instance fields
.field public eq_value:B

.field public repeat_value:B

.field public scan_value:B

.field public shuffle_value:B

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 p1, 0x1

    iput-byte p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->eq_value:B

    .line 79
    iput-byte p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->repeat_value:B

    .line 80
    iput-byte p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->shuffle_value:B

    .line 81
    iput-byte p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;->scan_value:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$localPlayerSettings;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)V

    return-void
.end method
