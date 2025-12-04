.class Lcom/android/bluetooth/avrcp/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static DEBUG:Z = false

.field private static final GPM_KEY:Ljava/lang/String; = "com.google.android.music.mediasession.music_metadata"

.field private static final MAX_ATTRID_TITLE_ALBUM_ARTIST_LENGTH:I = 0x9b

.field private static final MAX_BROWSE_ATTRID_TITLE_ALBUM_ARTIST_LENGTH:I = 0x3c

.field public static final NOW_PLAYING_PREFIX:Ljava/lang/String; = "NowPlayingId"

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-string v0, "AvrcpUtil"

    sput-object v0, Lcom/android/bluetooth/avrcp/Util;->TAG:Ljava/lang/String;

    .line 36
    nop

    .line 37
    const-string v0, "persist.vendor.bluetooth.hostloglevel"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sqc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/bluetooth/avrcp/Util;->DEBUG:Z

    .line 36
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bundleToMetadata(Landroid/os/Bundle;I)Lcom/android/bluetooth/avrcp/Metadata;
    .locals 9

    .line 64
    if-nez p0, :cond_0

    invoke-static {}, Lcom/android/bluetooth/avrcp/Util;->empty_data()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object p0

    return-object p0

    .line 66
    :cond_0
    new-instance v0, Lcom/android/bluetooth/avrcp/Metadata;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcp/Metadata;-><init>()V

    .line 67
    const-string v1, "android.media.metadata.TITLE"

    const-string v2, "Not Provided"

    invoke-virtual {p0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    .line 68
    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, p1, :cond_1

    .line 69
    sget-object v1, Lcom/android/bluetooth/avrcp/Util;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title too long "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    .line 72
    :cond_1
    const-string v1, "android.media.metadata.ARTIST"

    const-string v3, ""

    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->artist:Ljava/lang/String;

    .line 73
    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_2

    .line 74
    sget-object v1, Lcom/android/bluetooth/avrcp/Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "artist too long "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->artist:Ljava/lang/String;

    .line 77
    :cond_2
    const-string v1, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->album:Ljava/lang/String;

    .line 78
    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->album:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_3

    .line 79
    sget-object v1, Lcom/android/bluetooth/avrcp/Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "album too long "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Metadata;->album:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->album:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->album:Ljava/lang/String;

    .line 82
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.media.metadata.TRACK_NUMBER"

    const-wide/16 v5, 0x1

    invoke-virtual {p0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->trackNum:Ljava/lang/String;

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p0, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->numTracks:Ljava/lang/String;

    .line 84
    const-string v1, "android.media.metadata.GENRE"

    invoke-virtual {p0, v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->genre:Ljava/lang/String;

    .line 85
    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->genre:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_4

    .line 86
    sget-object v1, Lcom/android/bluetooth/avrcp/Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "genre too long "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/bluetooth/avrcp/Metadata;->genre:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->genre:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/bluetooth/avrcp/Metadata;->genre:Ljava/lang/String;

    .line 89
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v1, 0x0

    const-string v3, "android.media.metadata.DURATION"

    invoke-virtual {p0, v3, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/bluetooth/avrcp/Metadata;->duration:Ljava/lang/String;

    .line 90
    return-object v0
.end method

.method public static cloneList(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/ListItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/ListItem;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 279
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/bluetooth/avrcp/ListItem;

    invoke-virtual {v1}, Lcom/android/bluetooth/avrcp/ListItem;->clone()Lcom/android/bluetooth/avrcp/ListItem;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_0
    return-object v0
.end method

.method public static descriptionToBundle(Landroid/media/MediaDescription;)Landroid/os/Bundle;
    .locals 3

    .line 95
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 96
    if-nez p0, :cond_0

    return-object v0

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 99
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.TITLE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 107
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_3
    invoke-virtual {p0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 113
    :cond_4
    const-string p0, "com.google.android.music.mediasession.music_metadata"

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 114
    sget-boolean v1, Lcom/android/bluetooth/avrcp/Util;->DEBUG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/bluetooth/avrcp/Util;->TAG:Ljava/lang/String;

    const-string v2, "MediaDescription contains GPM data"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_5
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaMetadata;

    invoke-static {p0}, Lcom/android/bluetooth/avrcp/Util;->mediaMetadataToBundle(Landroid/media/MediaMetadata;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 118
    :cond_6
    return-object v0
.end method

.method public static final empty_data()Lcom/android/bluetooth/avrcp/Metadata;
    .locals 2

    .line 51
    new-instance v0, Lcom/android/bluetooth/avrcp/Metadata;

    invoke-direct {v0}, Lcom/android/bluetooth/avrcp/Metadata;-><init>()V

    .line 52
    const-string v1, "Not Provided"

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->mediaId:Ljava/lang/String;

    .line 53
    const-string v1, ""

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->title:Ljava/lang/String;

    .line 54
    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->artist:Ljava/lang/String;

    .line 55
    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->album:Ljava/lang/String;

    .line 56
    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->genre:Ljava/lang/String;

    .line 57
    const-string v1, "1"

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->trackNum:Ljava/lang/String;

    .line 58
    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->numTracks:Ljava/lang/String;

    .line 59
    const-string v1, "0"

    iput-object v1, v0, Lcom/android/bluetooth/avrcp/Metadata;->duration:Ljava/lang/String;

    .line 60
    return-object v0
.end method

.method public static getDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 285
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 286
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 287
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    return-object p0

    .line 288
    :catch_0
    move-exception p0

    .line 289
    sget-object p0, Lcom/android/bluetooth/avrcp/Util;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Name Not Found using package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-object p1
.end method

.method public static mediaMetadataToBundle(Landroid/media/MediaMetadata;)Landroid/os/Bundle;
    .locals 4

    .line 122
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 123
    if-nez p0, :cond_0

    return-object v0

    .line 125
    :cond_0
    const-string v1, "android.media.metadata.TITLE"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 126
    nop

    .line 127
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_1
    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 131
    nop

    .line 132
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_2
    const-string v1, "android.media.metadata.ALBUM"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    nop

    .line 137
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    :cond_3
    const-string v1, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 141
    nop

    .line 142
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 141
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 145
    :cond_4
    const-string v1, "android.media.metadata.NUM_TRACKS"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 146
    nop

    .line 147
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 146
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 150
    :cond_5
    const-string v1, "android.media.metadata.GENRE"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 151
    nop

    .line 152
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    :cond_6
    const-string v1, "android.media.metadata.DURATION"

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 156
    nop

    .line 157
    invoke-virtual {p0, v1}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 156
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 160
    :cond_7
    return-object v0
.end method

.method public static toMetadata(Landroid/media/MediaMetadata;)Lcom/android/bluetooth/avrcp/Metadata;
    .locals 5

    .line 187
    if-nez p0, :cond_0

    .line 188
    invoke-static {}, Lcom/android/bluetooth/avrcp/Util;->empty_data()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object p0

    return-object p0

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    .line 193
    invoke-static {p0}, Lcom/android/bluetooth/avrcp/Util;->mediaMetadataToBundle(Landroid/media/MediaMetadata;)Landroid/os/Bundle;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    invoke-static {p0}, Lcom/android/bluetooth/avrcp/Util;->descriptionToBundle(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object p0

    .line 197
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 199
    sget-boolean v0, Lcom/android/bluetooth/avrcp/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 201
    sget-object v2, Lcom/android/bluetooth/avrcp/Util;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "toMetadata: MediaMetadata: ContainsKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    goto :goto_0

    .line 205
    :cond_1
    const/16 v0, 0x9b

    invoke-static {p0, v0}, Lcom/android/bluetooth/avrcp/Util;->bundleToMetadata(Landroid/os/Bundle;I)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object p0

    .line 210
    const-string v0, "currsong"

    iput-object v0, p0, Lcom/android/bluetooth/avrcp/Metadata;->mediaId:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public static toMetadata(Landroid/media/browse/MediaBrowser$MediaItem;)Lcom/android/bluetooth/avrcp/Metadata;
    .locals 6

    .line 216
    if-nez p0, :cond_0

    .line 217
    invoke-static {}, Lcom/android/bluetooth/avrcp/Util;->empty_data()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object p0

    return-object p0

    .line 220
    :cond_0
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Util;->descriptionToBundle(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object v0

    .line 222
    sget-boolean v1, Lcom/android/bluetooth/avrcp/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 223
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 224
    sget-object v3, Lcom/android/bluetooth/avrcp/Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toMetadata: MediaItem: ContainsKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    goto :goto_0

    .line 228
    :cond_1
    const/16 v1, 0x9b

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Util;->bundleToMetadata(Landroid/os/Bundle;I)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    .line 229
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/bluetooth/avrcp/Metadata;->mediaId:Ljava/lang/String;

    .line 231
    return-object v0
.end method

.method public static toMetadata(Landroid/media/browse/MediaBrowser$MediaItem;Z)Lcom/android/bluetooth/avrcp/Metadata;
    .locals 6

    .line 236
    if-nez p0, :cond_0

    .line 237
    invoke-static {}, Lcom/android/bluetooth/avrcp/Util;->empty_data()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object p0

    return-object p0

    .line 240
    :cond_0
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser$MediaItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Util;->descriptionToBundle(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object v0

    .line 242
    sget-boolean v1, Lcom/android/bluetooth/avrcp/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 243
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 244
    sget-object v3, Lcom/android/bluetooth/avrcp/Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toMetadata: MediaItem: ContainsKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    goto :goto_0

    .line 248
    :cond_1
    const/16 v1, 0x3c

    .line 249
    if-eqz p1, :cond_2

    .line 250
    const/16 v1, 0x9b

    .line 253
    :cond_2
    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Util;->bundleToMetadata(Landroid/os/Bundle;I)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object p1

    .line 254
    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser$MediaItem;->getMediaId()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/bluetooth/avrcp/Metadata;->mediaId:Ljava/lang/String;

    .line 256
    return-object p1
.end method

.method public static toMetadata(Landroid/media/session/MediaSession$QueueItem;)Lcom/android/bluetooth/avrcp/Metadata;
    .locals 6

    .line 164
    if-nez p0, :cond_0

    .line 165
    invoke-static {}, Lcom/android/bluetooth/avrcp/Util;->empty_data()Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaSession$QueueItem;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-static {v0}, Lcom/android/bluetooth/avrcp/Util;->descriptionToBundle(Landroid/media/MediaDescription;)Landroid/os/Bundle;

    move-result-object v0

    .line 170
    sget-boolean v1, Lcom/android/bluetooth/avrcp/Util;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 171
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    sget-object v3, Lcom/android/bluetooth/avrcp/Util;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toMetadata: QueueItem: ContainsKey: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    goto :goto_0

    .line 176
    :cond_1
    const/16 v1, 0x3c

    invoke-static {v0, v1}, Lcom/android/bluetooth/avrcp/Util;->bundleToMetadata(Landroid/os/Bundle;I)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v0

    .line 181
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NowPlayingId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/media/session/MediaSession$QueueItem;->getQueueId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/bluetooth/avrcp/Metadata;->mediaId:Ljava/lang/String;

    .line 183
    return-object v0
.end method

.method public static toMetadataList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/bluetooth/avrcp/Metadata;",
            ">;"
        }
    .end annotation

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    if-nez p0, :cond_0

    return-object v0

    .line 265
    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 266
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/session/MediaSession$QueueItem;

    invoke-static {v2}, Lcom/android/bluetooth/avrcp/Util;->toMetadata(Landroid/media/session/MediaSession$QueueItem;)Lcom/android/bluetooth/avrcp/Metadata;

    move-result-object v2

    .line 267
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/bluetooth/avrcp/Metadata;->trackNum:Ljava/lang/String;

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/bluetooth/avrcp/Metadata;->numTracks:Ljava/lang/String;

    .line 269
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    goto :goto_0

    .line 272
    :cond_1
    return-object v0
.end method
