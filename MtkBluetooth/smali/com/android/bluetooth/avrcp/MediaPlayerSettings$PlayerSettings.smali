.class Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;
.super Ljava/lang/Object;
.source "MediaPlayerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/avrcp/MediaPlayerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayerSettings"
.end annotation


# instance fields
.field public attr:B

.field public attrIds:[B

.field public path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;


# direct methods
.method private constructor <init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;->this$0:Lcom/android/bluetooth/avrcp/MediaPlayerSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;Lcom/android/bluetooth/avrcp/MediaPlayerSettings$1;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/bluetooth/avrcp/MediaPlayerSettings$PlayerSettings;-><init>(Lcom/android/bluetooth/avrcp/MediaPlayerSettings;)V

    return-void
.end method
