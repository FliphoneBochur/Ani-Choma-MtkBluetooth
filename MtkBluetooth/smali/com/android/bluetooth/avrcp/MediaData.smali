.class Lcom/android/bluetooth/avrcp/MediaData;
.super Ljava/lang/Object;
.source "MediaData.java"


# instance fields
.field public metadata:Lcom/android/bluetooth/avrcp/Metadata;

.field public queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field public state:Landroid/media/session/PlaybackState;


# direct methods
.method constructor <init>(Lcom/android/bluetooth/avrcp/Metadata;Landroid/media/session/PlaybackState;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/bluetooth/avrcp/Metadata;",
            "Landroid/media/session/PlaybackState;",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/Metadata;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/bluetooth/avrcp/MediaData;->metadata:Lcom/android/bluetooth/avrcp/Metadata;

    .line 34
    iput-object p2, p0, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    .line 35
    iput-object p3, p0, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    .line 36
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 40
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 41
    :cond_0
    instance-of v1, p1, Lcom/android/bluetooth/avrcp/MediaData;

    if-nez v1, :cond_1

    return v0

    .line 43
    :cond_1
    check-cast p1, Lcom/android/bluetooth/avrcp/MediaData;

    .line 45
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    iget-object v2, p1, Lcom/android/bluetooth/avrcp/MediaData;->state:Landroid/media/session/PlaybackState;

    invoke-static {v1, v2}, Lcom/android/bluetooth/avrcp/MediaPlayerWrapper;->playstateEquals(Landroid/media/session/PlaybackState;Landroid/media/session/PlaybackState;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 46
    return v0

    .line 49
    :cond_2
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaData;->metadata:Lcom/android/bluetooth/avrcp/Metadata;

    iget-object v2, p1, Lcom/android/bluetooth/avrcp/MediaData;->metadata:Lcom/android/bluetooth/avrcp/Metadata;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 50
    return v0

    .line 53
    :cond_3
    iget-object v1, p0, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    iget-object p1, p1, Lcom/android/bluetooth/avrcp/MediaData;->queue:Ljava/util/List;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 54
    return v0

    .line 57
    :cond_4
    const/4 p1, 0x1

    return p1
.end method
